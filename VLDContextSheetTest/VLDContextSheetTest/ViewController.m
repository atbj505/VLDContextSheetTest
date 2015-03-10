//
//  ViewController.m
//  VLDContextSheetTest
//
//  Created by Robert on 15/3/10.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createContextSheet];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIGestureRecognizer *gestureRecognizer = [[UILongPressGestureRecognizer alloc] initWithTarget: self
                                                                                           action: @selector(longPressed:)];
    [self.view addGestureRecognizer: gestureRecognizer];
}

- (void) createContextSheet {
    VLDContextSheetItem *item1 = [[VLDContextSheetItem alloc] initWithTitle: @"Gift"
                                                                      image: [UIImage imageNamed: @"gift"]
                                                           highlightedImage: [UIImage imageNamed: @"gift_highlighted"]];
    
    
    VLDContextSheetItem *item2 = [[VLDContextSheetItem alloc] initWithTitle: @"Add to"
                                                                      image: [UIImage imageNamed: @"add"]
                                                           highlightedImage: [UIImage imageNamed: @"add_highlighted"]];
    
    VLDContextSheetItem *item3 = [[VLDContextSheetItem alloc] initWithTitle: @"Share"
                                                                      image: [UIImage imageNamed: @"share"]
                                                           highlightedImage: [UIImage imageNamed: @"share_highlighted"]];
    
    self.contextSheet = [[VLDContextSheet alloc] initWithItems: @[ item1, item2, item3 ]];
    self.contextSheet.delegate = self;
}

- (void) contextSheet: (VLDContextSheet *) contextSheet didSelectItem: (VLDContextSheetItem *) item {
    NSLog(@"Selected item: %@", item.title);
}

- (void) longPressed: (UIGestureRecognizer *) gestureRecognizer {
    if(gestureRecognizer.state == UIGestureRecognizerStateBegan) {
        
        [self.contextSheet startWithGestureRecognizer: gestureRecognizer
                                               inView: self.view];
    }
}

@end
