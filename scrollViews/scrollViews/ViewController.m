//
//  ViewController.m
//  scrollViews
//
//  Created by luobin on 2017/9/27.
//  Copyright © 2017年 luobin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong)UIScrollView                       *scollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self initializeUserinterface];
}


- (void)initializeUserinterface {
    
    for (NSString * familyName in [UIFont familyNames]) {
        NSLog(@"Font FamilyName = %@",familyName); //*输出字体族科名字  
    }
    
    _scollView = [[UIScrollView alloc] init];
    _scollView.frame = self.view.frame;
    _scollView.pagingEnabled = YES;
    _scollView.contentSize = CGSizeMake(self.view.bounds.size.width * 5,
                                        self.view.bounds.size.height);
    for (int i = 0; i < 5; i ++) {
        UIScrollView *subSrol = [[UIScrollView alloc] init];
        subSrol.frame = CGRectMake(self.view.bounds.size.width * i, 0, self.view.bounds.size.width, self.view.bounds.size.height);
        subSrol.contentSize = CGSizeMake(self.view.bounds.size.width * 2, self.view.bounds.size.height);
        
        if (i == 0) {
            subSrol.backgroundColor = [UIColor greenColor];
        }
        
        if (i == 1) {
            subSrol.backgroundColor = [UIColor blueColor];
        }
        
        if (i == 2) {
            subSrol.backgroundColor = [UIColor redColor];
        }
        
        if (i == 3) {
            subSrol.backgroundColor = [UIColor yellowColor];
        }
        
        if (i == 4) {
            subSrol.backgroundColor = [UIColor grayColor];
        }
        
        
        [_scollView addSubview:subSrol];
    }
    
    
    [self.view addSubview:_scollView];
}


@end
