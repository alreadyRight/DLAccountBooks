//
//  DLBaseViewController.m
//  DLAccountBooks
//
//  Created by 周冰烽 on 2019/7/18.
//  Copyright © 2019 周冰烽. All rights reserved.
//

#import "DLBaseViewController.h"

@interface DLBaseViewController ()

@end

@implementation DLBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	[self setupBaseUI];
}

- (void)setupBaseUI{
	self.view.backgroundColor = [UIColor whiteColor];
	[self setupCustomUI];
}

- (void)setupCustomUI{
	
}

@end
