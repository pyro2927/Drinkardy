//
//  JPViewController.m
//  Jeopardy
//
//  Created by Joseph Pintozzi on 1/27/13.
//  Copyright (c) 2013 TinyDragonApps. All rights reserved.
//

#import "JPViewController.h"

@interface JPViewController ()

@end

@implementation JPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
//    create our array of category strings
    NSArray *categories = @[@"Sound Bytes", @"It's a Me-ah", @"Trusty Companions", @"Power Ups", @"Multiplayer Mayhem", @"The Final Boss"];
//    calculate the screen width divided by the number of categories we have
    CGFloat categoryWidth = 1024 / [categories count];
//    iterate over our array
    for (int i = 0; i < [categories count]; i++) {
//        create a new label
        UILabel *categoryLabel = [[UILabel alloc] initWithFrame:CGRectMake(i * categoryWidth, 0, categoryWidth, 100)];
//        set our category text to the label
        [categoryLabel setText:[categories objectAtIndex:i]];
//        have our text center align
        [categoryLabel setTextAlignment:NSTextAlignmentCenter];
//        add that label to our view
        [self.view addSubview:categoryLabel];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
