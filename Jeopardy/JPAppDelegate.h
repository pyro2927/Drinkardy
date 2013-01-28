//
//  JPAppDelegate.h
//  Jeopardy
//
//  Created by Joseph Pintozzi on 1/27/13.
//  Copyright (c) 2013 TinyDragonApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JPViewController;

@interface JPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) JPViewController *viewController;

@end
