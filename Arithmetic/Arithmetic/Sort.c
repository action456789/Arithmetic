//
//  Sort.c
//  BinaryTree
//
//  Created by ke sen. on 2018/5/7.
//  Copyright © 2018年 KeSen. All rights reserved.
//

#include "Sort.h"
#include <stdbool.h>
#include <string.h>

#pragma mark - 冒泡排序
// 时间复杂度 O(N^2)
void bubble_sort(int a[]) {
    int i, j;
    int n = sizeof(a);
    
    for (i=0; i<n-1; i++) {
        bool flag = true;
        
        for (j=0; j<n-i-1; j++) {
            if (a[j] > a[j+1]) {
                int temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
                
                flag = false;
            }
        }
        if (flag) {
            break;
        }
    }
}

#pragma mark - 快速排序
// 时间复杂度 O(N*logN)

// 分治法，一次分治，比x小的排到x的左边，比x大的排到x的右边
int AdjustArray(int s[], int left, int right) {//返回调整后基准数的位置
    int i = left, j = right;
    int x = s[i]; //s[i]就是第一个坑
    while (i < j) {
        // 从右向左找小于x的数来填s[i]
        while(i < j && s[j] >= x) {
            j--;
        }
        
        if(i < j) {
            s[i] = s[j]; //将s[j]填到s[i]中，s[j]就形成了一个新的坑
            i++;
        }
        
        // 从左向右找大于或等于x的数来填s[j]
        while(i < j && s[i] < x) {
            i++;
        }
        if(i < j) {
            s[j] = s[i]; //将s[i]填到s[j]中，s[i]就形成了一个新的坑
            j--;
        }
    }
    //退出时，i等于j。将x填到这个坑中。
    s[i] = x;
    return i;
}

// 递归，对两边再进行分治法
void quick_sort(int s[], int left, int right) {
    if (left < right) {
        int i = AdjustArray(s, left, right);//先成挖坑填数法调整s[]
        quick_sort(s, left, i - 1); // 递归调用
        quick_sort(s, i + 1, right);
    }
}

# pragma mark - 插入排序
// O(N^2)

void insert_sort(int a[]) {
    int i,j;
    int n = sizeof(a);
    
    for(i=1; i<n; i++) {
        int x = a[i];
        for(j=i; j>0 && x<a[j-1]; j--) {
            a[j]=a[j-1];
        }
        a[j]=x;
    }
}
