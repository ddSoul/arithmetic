//
//  InsertSortVC.m
//  ArithmeticDemo
//
//  Created by ddSoul on 2018/11/23.
//  Copyright © 2018 dxl. All rights reserved.
//

#import "InsertSortVC.h"
#import "ArithmeticHelper.h"

@interface InsertSortVC ()

@end

@implementation InsertSortVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    int maxlen = 8;
    int array[8] = {7,3,31,13,1,5,6,9};
    
    printf("排序前的数组:::");
    printArray(array, maxlen);
    //
    insertSort(array, maxlen);
    //
    printf("排序后的数组:::");
    printArray(array, maxlen);
}

void insertSort(int array[], int maxLen) {
    for (int i = 1; i < maxLen; i++) {
        for (int j = 0; j<i; j++) {
            if (array[j] > array[i]) {
                swap(&array[j], &array[i]);
            }
        }
    }
}

@end
