//
//  BubbleSortVC.m
//  ArithmeticDemo
//
//  Created by ddSoul on 2018/11/21.
//  Copyright © 2018 dxl. All rights reserved.
//

#import "BubbleSortVC.h"
#import "ArithmeticHelper.h"

#import "Masonry.h"

@interface BubbleSortVC ()

@property (nonatomic, strong) UILabel *arithmeticLabel;
@property (nonatomic, strong) UILabel *resultLabel;

@end

@implementation BubbleSortVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"BubbleSort";
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self setUpViews];
    [self addRightBtn];
}

- (void)setUpViews {
    
    self.arithmeticLabel.font = [UIFont systemFontOfSize:14];
    self.arithmeticLabel.numberOfLines = 0;
    self.resultLabel.font = [UIFont systemFontOfSize:14];
    self.arithmeticLabel.backgroundColor = UIColor.grayColor;
    self.resultLabel.backgroundColor = UIColor.greenColor;
    
    [self.view addSubview:self.arithmeticLabel];
    [self.view addSubview:self.resultLabel];
    
    self.arithmeticLabel.text = @"//冒泡排序\n void bubbleSort(int array[], int maxlen) {\n  int j;\n  for (int i = 0; i<maxlen; i++) {\n      for (j = i+1; j<maxlen; j++) {\n          if (array[i] > array[j]) {\n              swap(&array[i], &array[j]);\n        }\n    } \n     printf(\"循环中::::\"); \n     printArray(array, maxlen);\n \n   } \n}";
    
    [self.arithmeticLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(100);
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
    }];
    
    [self.resultLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.arithmeticLabel.mas_bottom).mas_offset(10);
        make.left.mas_equalTo(10);
        make.right.mas_equalTo(-10);
    }];
}

- (void)addRightBtn {
    UIBarButtonItem *rightBarItem = [[UIBarButtonItem alloc] initWithTitle:@"Run" style:UIBarButtonItemStylePlain target:self action:@selector(onClickedOKbtn)];
    self.navigationItem.rightBarButtonItem = rightBarItem;
}

- (void)onClickedOKbtn {
    int maxlen = 8;
    int array[8] = {7,3,31,13,1,5,6,9};
    
    printf("排序前的数组:::");
    printArray(array, maxlen);
    
    bubbleSort(array, maxlen);
    
    printf("排序后的数组:::");
    printArray(array, maxlen);
    
    self.resultLabel.text = @"1  3  5  6  7  9  13 31";
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

//冒泡排序
void bubbleSort(int array[], int maxlen) {
    
    int j;
    for (int i = 0; i<maxlen; i++) {
        for (j = i+1; j<maxlen; j++) {
            if (array[i] > array[j]) {
                swap(&array[i], &array[j]);
            }
        }
        printf("循环中::::");
        printArray(array, maxlen);
    }
    
}

//MARK: - setter、getter
- (UILabel *)arithmeticLabel {
    if (!_arithmeticLabel) {
        _arithmeticLabel = [[UILabel alloc] init];
    }
    return _arithmeticLabel;
}
- (UILabel *)resultLabel {
    if (!_resultLabel) {
        _resultLabel = [[UILabel alloc] init];
    }
    return _resultLabel;
}

@end
