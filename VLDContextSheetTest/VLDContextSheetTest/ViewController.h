//
//  ViewController.h
//  VLDContextSheetTest
//
//  Created by Robert on 15/3/10.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VLDContextSheet.h"
#import "VLDContextSheetItem.h"

@interface ViewController : UIViewController <VLDContextSheetDelegate>

@property (strong, nonatomic) VLDContextSheet *contextSheet;

@end

