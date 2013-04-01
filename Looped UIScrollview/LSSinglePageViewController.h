//
//  LSSinglePageViewController.h
//  Looped UIScrollview
//
//  Created by Michał Zygar on 01.04.2013.
//
//

#import <UIKit/UIKit.h>

@interface LSSinglePageViewController : UIViewController
@property (retain, nonatomic) IBOutlet UILabel *caption;

- (id)initWithPageId:(NSString *)aPageId;

@end