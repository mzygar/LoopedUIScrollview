//
//  LSViewController.m
//  Looped UIScrollview
//
//  Created by Michał Zygar on 01.04.2013.
//
//

#import "LSViewController.h"
#import "LSSinglePageViewController.h"
@interface LSViewController ()
@property (retain, nonatomic) NSMutableArray *viewControllers;
@end

@implementation LSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    int numberOfPages = 3;
    _viewControllers = [[NSMutableArray alloc] init];


    for (int i = 0; i < numberOfPages; i++)
    {
        LSSinglePageViewController *single = [[LSSinglePageViewController alloc] initWithPageId:[@"Page " stringByAppendingFormat:@"%i", i]];
        [self.viewControllers addObject:single];
        [single release];
    }

    LSSinglePageViewController *fakeFirst = [[LSSinglePageViewController alloc] initWithPageId:@"Page 0"];
    LSSinglePageViewController *fakeLast = [[LSSinglePageViewController alloc] initWithPageId:@"Page 2"];

    [self.viewControllers addObject:fakeFirst];
    [self.viewControllers insertObject:fakeLast atIndex:0];

    for (int i = 0; i < [self.viewControllers count]; i++)
    {
        LSSinglePageViewController *controller = [self.viewControllers objectAtIndex:i];
        controller.view.frame =  CGRectOffset(controller.view.frame, i * controller.view.bounds.size.width, 0);
        [self.scrollView addSubview:controller.view];
    }

    [self.scrollView setContentSize:CGSizeMake([self.viewControllers count] * _scrollView.bounds.size.width, _scrollView.bounds.size.width)];
    [self.scrollView setContentOffset:CGPointMake(_scrollView.bounds.size.width, 0)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    int currentPage = scrollView.contentOffset.x / scrollView.bounds.size.width;
    int numberOfPages = [self.viewControllers count];
    if (currentPage == 0)
    {
        [scrollView setContentOffset:CGPointMake(scrollView.bounds.size.width * (numberOfPages - 2), 0) animated:NO];
    }
    //wraping
    if (currentPage == numberOfPages - 1)
    {
        [scrollView setContentOffset:CGPointMake(scrollView.bounds.size.width, 0) animated:NO];
    }
}

- (void)dealloc
{
    [_scrollView release];
    [super dealloc];
}

@end