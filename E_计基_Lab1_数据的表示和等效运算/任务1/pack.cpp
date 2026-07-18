#include <iostream>
#include <cstring>
#include <cstdio>

using namespace std;

// 定义学生结构体
struct student {
    char name[8];
    short age;
    float score;
    char remark[200]; // 备注信息
};

const int N = 5;

// (2) 压缩函数 1：逐字节写入
int pack_student_bytebybyte(student* s, int sno, char *buf) {
    int offset = 0;
    for (int i = 0; i < sno; ++i) {
        // 逐字节写 name (直到包含 '\0')
        char* p = s[i].name;
        do {
            buf[offset++] = *p;
        } while (*p++ != '\0');

        // 逐字节写 age
        char* age_p = (char*)&s[i].age;
        for (int j = 0; j < sizeof(short); ++j) {
            buf[offset++] = age_p[j];
        }

        // 逐字节写 score
        char* score_p = (char*)&s[i].score;
        for (int j = 0; j < sizeof(float); ++j) {
            buf[offset++] = score_p[j];
        }

        // 逐字节写 remark
        p = s[i].remark;
        do {
            buf[offset++] = *p;
        } while (*p++ != '\0');
    }
    return offset;
}

// (2) 压缩函数 2：整体写入
int pack_student_whole(student* s, int sno, char *buf) {
    int offset = 0;
    for (int i = 0; i < sno; ++i) {
        // 用 strcpy 写入 name
        strcpy(buf + offset, s[i].name);
        offset += strlen(s[i].name) + 1; // +1 是为了包含 '\0'

        // 一条语句整体写入 short
        *(short*)(buf + offset) = s[i].age;
        offset += sizeof(short);

        // 一条语句整体写入 float
        *(float*)(buf + offset) = s[i].score;
        offset += sizeof(float);

        // 用 strcpy 写入 remark
        strcpy(buf + offset, s[i].remark);
        offset += strlen(s[i].remark) + 1;
    }
    return offset;
}

// (4) 解压函数
int restore_student(char *buf, int len, student* s) {
    int offset = 0;
    int count = 0; // 解压的人数
    
    // 不依赖全局变量，仅靠 len 判断是否读取完毕
    while (offset < len) {
        // 恢复 name
        strcpy(s[count].name, buf + offset);
        offset += strlen(s[count].name) + 1;

        // 恢复 age (使用 memcpy 避免潜在的地址不对齐错误)
        memcpy(&s[count].age, buf + offset, sizeof(short));
        offset += sizeof(short);

        // 恢复 score
        memcpy(&s[count].score, buf + offset, sizeof(float));
        offset += sizeof(float);

        // 恢复 remark
        strcpy(s[count].remark, buf + offset);
        offset += strlen(s[count].remark) + 1;

        count++;
    }
    return count;
}

int main() {
    student beforecompress[N];
    student decompress[N];
    char message[2000] = {0}; // 压缩存储区

    // (1) 初始化数据，第0个学生为自己名字和学号后两位
    strcpy(beforecompress[0].name, "MyName");
    beforecompress[0].age = 20;
    beforecompress[0].score = 99.0f; // 假设学号后两位是 99
    strcpy(beforecompress[0].remark, "This is me.");

    // 填充剩余的测试数据
    for (int i = 1; i < N; ++i) {
        sprintf(beforecompress[i].name, "Stu%d", i);
        beforecompress[i].age = 18 + i;
        beforecompress[i].score = 80.0f + i;
        sprintf(beforecompress[i].remark, "Remark for student %d", i);
    }

    // (3) 调用压缩函数
    int N1 = 2, N2 = 3;
    int len1 = pack_student_bytebybyte(beforecompress, N1, message);
    int len2 = pack_student_whole(beforecompress + N1, N2, message + len1);
    int total_compressed_len = len1 + len2;

    // (4) 调用解压函数
    int restored_count = restore_student(message, total_compressed_len, decompress);

    // (5) 以十六进制输出 message 的前 40 个字节
    cout << "------ (5) Message 前 40 个字节 (十六进制) ------" << endl;
    for (int i = 0; i < 40; ++i) {
        printf("%02X ", (unsigned char)message[i]);
        if ((i + 1) % 10 == 0) cout << endl;
    }
    cout << endl;

    // (6) 打印长度与前后结果对比
    cout << "------ (6) 压缩前后对比 ------" << endl;
    int original_len = sizeof(beforecompress);
    cout << "压缩前总长度: " << original_len << " 字节" << endl;
    cout << "压缩后总长度: " << total_compressed_len << " 字节 (节约了 " 
         << original_len - total_compressed_len << " 字节)" << endl << endl;

    cout << "第0个学生 压缩前 -> 姓名: " << beforecompress[0].name 
         << ", 年龄: " << beforecompress[0].age 
         << ", 分数: " << beforecompress[0].score 
         << ", 备注: " << beforecompress[0].remark << endl;

    cout << "第0个学生 解压后 -> 姓名: " << decompress[0].name 
         << ", 年龄: " << decompress[0].age 
         << ", 分数: " << decompress[0].score 
         << ", 备注: " << decompress[0].remark << endl;

    return 0;
}