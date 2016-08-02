//
//  ViewController.m
//  Scroll View
//
//  Created by ClickappsUser3 on 16/06/16.
//  Copyright © 2016 ClickappsUser3. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *images=[NSArray arrayWithObjects:@"1art4.jpg",@"1art5.jpg",@"1art6.jpg",@"1art7.jpg",nil];
    UIScrollView* scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    scrollView.backgroundColor = [UIColor redColor];
    scrollView.scrollEnabled = YES;
    scrollView.pagingEnabled = YES;
    scrollView.showsVerticalScrollIndicator = YES;
    //scrollView.showsHorizontalScrollIndicator = YES;
    scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width * images.count, [UIScreen mainScreen].bounds.size.height);
    [self.view addSubview:scrollView];

    
    
    for (int i=0; i<images.count; i++) {
        UIImageView *image=[[UIImageView alloc] initWithFrame:CGRectMake( [UIScreen mainScreen].bounds.size.width*i, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        image.image=[UIImage imageNamed:images[i]];
            [scrollView addSubview:image];
    }

}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"Did end decelerating");
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
        NSLog(@"Did scroll");
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView
                 willDecelerate:(BOOL)decelerate{
    NSLog(@"Did end dragging");
}
-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"Did begin decelerating");
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"Did begin dragging");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
