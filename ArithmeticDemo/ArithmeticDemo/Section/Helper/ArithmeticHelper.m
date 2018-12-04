//
//  ArithmeticHelper.m
//  ArithmeticDemo
//
//  Created by ddSoul on 2018/11/22.
//  Copyright © 2018 dxl. All rights reserved.
//

#import "ArithmeticHelper.h"

@implementation ArithmeticHelper

//打印数组
void printArray(int array[], int maxlen) {
    int i;
    
    for (i = 0; i<maxlen; i++) {
        printf("%-3d",array[i]);
    }
    
    printf("\n");
    
    return;
}
//mrdeng commit
//交换两个数
void swap(int *a, int *b) {
    
    int temp;
    
    temp = *a;
    *a = *b;
    *b = temp;
    
    return;
}

@end
