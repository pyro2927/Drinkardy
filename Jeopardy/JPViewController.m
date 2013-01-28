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
    
//    create our button height
    int buttonHeight = 108;
//    add in our category buttons
    for (int i = 0; i < [categories count]; i++) {
        for (int j = 0; j < 5; j++) {
//            create our new button with rounded corners
            UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//            set the size
            [button setFrame:CGRectMake(i * categoryWidth, 100 + buttonHeight * j, categoryWidth, buttonHeight)];
//            add in our title (dollar amount)
            [button setTitle:[NSString stringWithFormat:@"$%i", (j + 1) * 100] forState:UIControlStateNormal];
//            add this button to our view
            [self.view addSubview:button];
        }
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
