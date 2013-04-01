//
//  LSSinglePageViewController.m
//  Looped UIScrollview
//
//  Created by Michał Zygar on 01.04.2013.
//
//

#import "LSSinglePageViewController.h"

@interface LSSinglePageViewController ()
@property (nonatomic, retain) NSString *pageId;
@end

@implementation LSSinglePageViewController

- (id)initWithPageId:(NSString *)aPageId
{
    self = [super initWithNibName:@"LSSinglePageViewController" bundle:nil];
    if (self)
    {
        self.pageId = aPageId;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.caption setText:self.pageId];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_caption release];
    [super dealloc];
}

@end