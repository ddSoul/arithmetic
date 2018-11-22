//
//  SelectSortVC.m
//  ArithmeticDemo
//
//  Created by ddSoul on 2018/11/22.
//  Copyright © 2018 dxl. All rights reserved.
//

#import "SelectSortVC.h"
#import "ArithmeticHelper.h"

@interface SelectSortVC ()

@end

@implementation SelectSortVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    int maxlen = 8;
    int array[8] = {7,3,31,13,1,5,6,9};
    
    printf("排序前的数组:::");
    printArray(array, maxlen);
//
    selectSort(array, maxlen);
//
    printf("排序后的数组:::");
    printArray(array, maxlen);
    
}
//
//循环中::::1  7  31 13 3  5  6  9
//循环中::::1  3  31 13 7  5  6  9
//循环中::::1  3  5  31 13 7  6  9
//循环中::::1  3  5  6  31 13 7  9
//循环中::::1  3  5  6  7  31 13 9
//循环中::::1  3  5  6  7  9  31 13
//循环中::::1  3  5  6  7  9  13 31
//循环中::::1  3  5  6  7  9  13 31

//快速排序
void selectSort(int array[], int maxlen) {

    int j,min;
    for (int i = 0; i<maxlen; i++) {
        min = i;
        for (j = i+1; j<maxlen; j++) {
            if (array[min] > array[j]) {
                min = j;
            }
            if (i != min) {
                swap(&array[i], &array[min]);
            }
        }
        printf("_______循环中::::");
        printArray(array, maxlen);
    }

}

@end
