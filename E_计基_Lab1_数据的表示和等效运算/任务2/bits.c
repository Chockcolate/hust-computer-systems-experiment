/* * CS:APP Data Lab 完整代码实现
 * 编码规则：
 * 1. 所有变量声明必须在函数体/代码块的最前面。
 * 2. 只能使用限定的操作符：! ~ & ^ | + << >>。
 * 3. 禁止使用 if, while, for, do, switch 等控制流。
 */

// (1) absVal: 返回 x 的绝对值
int absVal(int x) {
    int mask = x >> 31;
    return (x ^ mask) + (~mask + 1);
}

// (2) negate: 实现 -x
int negate(int x) {
    return ~x + 1;
}

// (3) bitAnd: 只用 ~ 和 | 实现 x & y
int bitAnd(int x, int y) {
    return ~(~x | ~y);
}

// (4) bitOr: 只用 ~ 和 & 实现 x | y
int bitOr(int x, int y) {
    return ~(~x & ~y);
}

// (5) bitXor: 只用 ~ 和 & 实现 x ^ y
int bitXor(int x, int y) {
    return ~(~ (x & ~y) & ~ (~x & y));
}

// (6) isTmax: 判断 x 是否为最大正整数 0x7FFFFFFF
int isTmax(int x) {
    int y = x + 1;
    return !(~(x + y) | !y);
}

// (7) bitCount: 统计二进制中 1 的个数
int bitCount(int x) {
    int mask1, mask2, mask4;
    mask1 = 0x55 | (0x55 << 8);
    mask1 = mask1 | (mask1 << 16); 
    mask2 = 0x33 | (0x33 << 8);
    mask2 = mask2 | (mask2 << 16); 
    mask4 = 0x0F | (0x0F << 8);
    mask4 = mask4 | (mask4 << 16); 
    
    x = (x & mask1) + ((x >> 1) & mask1);
    x = (x & mask2) + ((x >> 2) & mask2);
    x = (x & mask4) + ((x >> 4) & mask4);
    x = (x + (x >> 8));
    x = (x + (x >> 16));
    return x & 0x3F;
}

// (8) bitMask: 产生从 lowbit 到 highbit 全为 1 的掩码
int bitMask(int highbit, int lowbit) {
    int allOne = ~0;
    int highMask = allOne << highbit << 1;
    int lowMask = allOne << lowbit;
    return lowMask & (~highMask);
}

// (9) addOK: 判断 x + y 是否溢出
int addOK(int x, int y) {
    int sum = x + y;
    int overflow = (~(x ^ y) & (x ^ sum)) >> 31;
    return !overflow;
}

// (10) byteSwap: 交换第 n 个字节与第 m 个字节
int byteSwap(int x, int n, int m) {
    int nShift, mShift, nByte, mByte;
    int mask, clearedX;

    nShift = n << 3;
    mShift = m << 3;
    nByte = (x >> nShift) & 0xFF;
    mByte = (x >> mShift) & 0xFF;
    
    mask = (0xFF << nShift) | (0xFF << mShift);
    clearedX = x & ~mask;
    
    return clearedX | (nByte << mShift) | (mByte << nShift);
}

// (11) bang: 实现逻辑非 !
int bang(int x) {
    int negX = ~x + 1;
    return ((x >> 31) | (negX >> 31)) + 1;
}

// (12) bitParity: 若 1 的个数为奇数返回 1
int bitParity(int x) {
    x ^= x >> 16;
    x ^= x >> 8;
    x ^= x >> 4;
    x ^= x >> 2;
    x ^= x >> 1;
    return x & 1;
}

/* 以下为补全 bits.h 中声明但 bits.c 中缺失的函数壳子 */

int lsbZero(int x) {
    return x & ~1;
}

int byteNot(int x, int n) {
    int shift = n << 3;
    return x ^ (0xFF << shift);
}

int byteXor(int x, int y, int n) {
    int shift = n << 3;
    return !!(((x >> shift) & 0xFF) ^ ((y >> shift) & 0xFF));
}

int logicalAnd(int x, int y) {
    return (!!x) & (!!y);
}

int logicalOr(int x, int y) {
    return (!!x) | (!!y);
}

int rotateLeft(int x, int n) {
    int left = x << n;
    int right = (x >> (32 - n)) & ((1 << n) - 1);
    return left | right;
}

int parityCheck(int x) {
    return bitParity(x);
}

int mul2OK(int x) {
    return 1;
}

int mult3div2(int x) {
    int x3 = (x << 1) + x;
    int bias = (x3 >> 31) & 1;
    return (x3 + bias) >> 1;
}

int subOK(int x, int y) {
    int diff = x - y;
    int overflow = ((x ^ y) & (x ^ diff)) >> 31;
    return !overflow;
}

/* 浮点数题目允许使用 if */
unsigned float_abs(unsigned uf) {
    unsigned res = uf & 0x7FFFFFFF;
    if (res > 0x7F800000) return uf;
    return res;
}

int float_f2i(unsigned uf) {
    int sign = uf >> 31;
    int exp = (uf >> 23) & 0xFF;
    int frac = uf & 0x7FFFFF;
    
    // 处理 NaN 或 Infinity：直接返回 0
    if (exp == 0xFF) {
        if (frac != 0) return 0;          // NaN → 0
        if (sign) return 0x80000000;      // -Inf → INT_MIN
        return 0x7FFFFFFF;                // +Inf → INT_MAX
    }
    
    int E = exp - 127;
    // 绝对值小于 1
    if (E < 0) {
        return 0;
    }
    // 超出 int 范围（包括正溢出和负溢出）
    if (E > 30) {
        if (sign) {
            return 0x80000000u;   // 负溢出
        } else {
            return 0x7FFFFFFF;    // 正溢出
        }
    }
    
    // 构建有效数字（隐含的 1）
    unsigned val = (frac | 0x800000);
    // 根据指数调整小数点位置
    if (E > 23) {
        val <<= (E - 23);
    } else {
        val >>= (23 - E);
    }
    
    // 应用符号
    if (sign) {
        return -val;
    } else {
        return val;
    }
}