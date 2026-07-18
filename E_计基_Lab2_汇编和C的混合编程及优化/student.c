#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>

#define N 100

struct student {
    char name[32];
    char sid[20];      // 如 U202315123
    short scores[8];   // 8门课的分数
    short average;     // 平均分
};

struct timeval tv1, tv2;

// 普通计算平均成绩
void calculate_averages(struct student* s, int n) {
    for (int i = 0; i < n; i++) {
        int sum = 0;
        for (int j = 0; j < 8; j++) {
            sum += s[i].scores[j];
        }
        s[i].average = (short)(sum / 8);
    }
}

// // 任务2：基础版内联汇编计算平均分
// void calculate_averages_asm(struct student* s, int n) {
//     for (int i = 0; i < n; i++) {
//         short* scores = s[i].scores; // 指向当前学生的成绩数组
//         short average = 0;

//         __asm__ __volatile__ (
//             "xorl %%eax, %%eax \n\t"        // EAX 清零，用于累加总分 (sum = 0)
//             "movl $8, %%ecx \n\t"           // ECX = 8，循环 8 次
//             "movq %[scores], %%rsi \n\t"    // RSI 指向 scores 数组的首地址
            
//             "1: \n\t"                       // 循环标签
//             "movswl (%%rsi), %%edx \n\t"    // 取出一个 short (2字节) 并符号扩展到 32 位放入 EDX
//             "addl %%edx, %%eax \n\t"        // sum += scores[j]
//             "addq $2, %%rsi \n\t"           // 指针后移 2 字节 (指向下一个 short)
//             "decl %%ecx \n\t"               // ECX--
//             "jnz 1b \n\t"                   // 如果 ECX 不为 0，跳回标签 1
            
//             "movl $8, %%ecx \n\t"           // 准备除以 8
//             "cltd \n\t"                     // 将 EAX 符号扩展到 EDX:EAX，为有符号除法做准备
//             "idivl %%ecx \n\t"              // EAX = EDX:EAX / 8
//             "movw %%ax, %[average] \n\t"    // 将商 (16位) 存入 average 变量
            
//             : [average] "=m" (average)      // 输出操作数
//             : [scores] "r" (scores)         // 输入操作数
//             : "eax", "ecx", "edx", "rsi"    // 受影响的寄存器列表 (Clobber list)
//         );
//         s[i].average = average;
//     }
// }

// // 任务3：优化版内联汇编 (循环展开 + 移位代替除法)
// void calculate_averages_asm(struct student* s, int n) {
//     for (int i = 0; i < n; i++) {
//         short* scores = s[i].scores;
//         short average = 0;

//         __asm__ __volatile__ (
//             "movq %[scores], %%rsi \n\t"    // RSI 指向 scores
//             "xorl %%eax, %%eax \n\t"        // EAX = 0 (存放累加和)
            
//             // 循环展开：直接连加 8 次，消除了比较和跳转的开销
//             "movswl 0(%%rsi), %%edx \n\t" "addl %%edx, %%eax \n\t"
//             "movswl 2(%%rsi), %%edx \n\t" "addl %%edx, %%eax \n\t"
//             "movswl 4(%%rsi), %%edx \n\t" "addl %%edx, %%eax \n\t"
//             "movswl 6(%%rsi), %%edx \n\t" "addl %%edx, %%eax \n\t"
//             "movswl 8(%%rsi), %%edx \n\t" "addl %%edx, %%eax \n\t"
//             "movswl 10(%%rsi), %%edx \n\t" "addl %%edx, %%eax \n\t"
//             "movswl 12(%%rsi), %%edx \n\t" "addl %%edx, %%eax \n\t"
//             "movswl 14(%%rsi), %%edx \n\t" "addl %%edx, %%eax \n\t"
            
//             // 使用算术右移代替除法 (EAX = EAX >> 3)
//             "sarl $3, %%eax \n\t"           
//             "movw %%ax, %[average] \n\t"
            
//             : [average] "=m" (average)
//             : [scores] "r" (scores)
//             : "eax", "edx", "rsi"
//         );
//         s[i].average = average;
//     }
// }

// 普通按平均成绩从高到低排序 (冒泡排序)
void sort_students(struct student* s, int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - 1 - i; j++) {
            if (s[j].average < s[j + 1].average) {
                struct student temp = s[j];
                s[j] = s[j + 1];
                s[j + 1] = temp;
            }
        }
    }
}

// //任务4：优化的排序函数，使用快速排序
// // 为 qsort 提供的比较函数（降序排列）
// int compare_students(const void* a, const void* b) {
//     struct student* studentA = (struct student*)a;
//     struct student* studentB = (struct student*)b;
//     // 从高到低排序，如果 B 大于 A 则返回正数
//     return (studentB->average - studentA->average); 
// }

// // 任务4：优化的排序函数
// void sort_students(struct student* s, int n) {
//     // 使用 stdlib.h 中的快速排序，时间复杂度从 O(N^2) 降至 O(N log N)
//     qsort(s, n, sizeof(struct student), compare_students);
// }

void display_students(struct student* s, int n, const char* title) {
    printf("\n--- %s ---\n", title);
    printf("%-8s %-12s %-30s %-s\n", "Name", "SID", "Scores", "Avg");
    for (int i = 0; i < n; i++) {
        printf("%-8s %-12s ", s[i].name, s[i].sid);
        for (int j = 0; j < 8; j++) printf("%3d ", s[i].scores[j]);
        printf("| %3d\n", s[i].average);
    }
}

void calculate_averages_asm(struct student* s, int n);
void sort_students(struct student* s, int n);
void display_students(struct student* s, int n, const char* title);

int main() {
    struct student students[N];
    clock_t start, end;

    // (1) 初始化数据：使用匿名示例信息
    strcpy(students[0].name, "Student");
    strcpy(students[0].sid, "STUDENT_ID");
    short my_scores[8] = {90, 85, 88, 92, 80, 75, 95, 89};
    memcpy(students[0].scores, my_scores, sizeof(my_scores));

    // 随机填充其他学生数据
    for (int i = 1; i < N; i++) {
        sprintf(students[i].name, "Stu%d", i);
        sprintf(students[i].sid, "U20240000%d", i);
        for (int j = 0; j < 8; j++) students[i].scores[j] = 60 + (rand() % 40);
    }

    display_students(students, N, "Before Sorting");

    // (2) 计时：计算平均分
    gettimeofday(&tv1, NULL);
    calculate_averages(students, N);
    gettimeofday(&tv2, NULL);
    double ms_calc = (tv2.tv_sec - tv1.tv_sec)*1000.0 + (tv2.tv_usec - tv1.tv_usec)/1000.0;
    printf("\nTime for Calculate: %f ms\n", ms_calc);

    // (2) 计时：排序
    gettimeofday(&tv1, NULL);
    sort_students(students, N);
    gettimeofday(&tv2, NULL);
    double ms_sort = (tv2.tv_sec - tv1.tv_sec)*1000.0 + (tv2.tv_usec - tv1.tv_usec)/1000.0;
    printf("\nTime for Sort: %f ms\n", ms_sort);


    // (3) 显示排序后结果
    display_students(students, N, "After Sorting");

    return 0;
}


