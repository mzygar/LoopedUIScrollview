//
//  LSViewController.h
//  Looped UIScrollview
//
//  Created by Michał Zygar on 01.04.2013.
//
//

#import <UIKit/UIKit.h>

@interface LSViewController : UIViewController <UIScrollViewDelegate>

@property (retain, nonatomic) IBOutlet UIScrollView *scrollView;
@end