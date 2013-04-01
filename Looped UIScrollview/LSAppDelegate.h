//
//  LSAppDelegate.h
//  Looped UIScrollview
//
//  Created by Michał Zygar on 01.04.2013.
//
//

#import <UIKit/UIKit.h>

@class LSViewController;

@interface LSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) LSViewController *viewController;

@end
