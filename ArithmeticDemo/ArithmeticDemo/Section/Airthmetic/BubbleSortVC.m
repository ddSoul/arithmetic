//
//  BubbleSortVC.m
//  ArithmeticDemo
//
//  Created by ddSoul on 2018/11/21.
//  Copyright © 2018 dxl. All rights reserved.
//

#import "BubbleSortVC.h"

@interface BubbleSortVC ()

@end

@implementation BubbleSortVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int maxlen = 8;
    int array[8] = {7,3,31,13,1,5,6,9};
    
    printf("排序前的数组");
    printArray(array, maxlen);
    
    printf("排序后的数组");
    bubbleSort(array, maxlen);
    printArray(array, maxlen);
    
}

//打印数组
void printArray(int array[], int maxlen) {
    int i;
    
    for (i = 0; i<maxlen; i++) {
        printf("%-3d",array[i]);
    }
    
    printf("\n");
    
    return;
}

//交换两个数
void swap(int *a, int *b) {
    
    int temp;
    
    temp = *a;
    *a = *b;
    *b = temp;
    
    return;
}

//快速排序
void bubbleSort(int array[], int maxlen) {
    
    int j;
    for (int i = 0; i<maxlen; i++) {
        for (j = i+1; j<maxlen; j++) {
            if (array[i] > array[j]) {
                swap(&array[i], &array[j]);
            }
        }
    }
    
}



@end
