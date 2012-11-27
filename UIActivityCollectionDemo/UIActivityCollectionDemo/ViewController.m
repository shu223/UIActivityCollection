//
//  ViewController.m
//  UIActivityCollectionDemo
//
//  Created by shuichi on 12/11/27.
//  Copyright (c) 2012年 Shuichi Tsutsumi. All rights reserved.
//

#import "ViewController.h"
#import "BufferUIActivity.h"
#import "GSDropboxActivity.h"
#import "DMActivityInstagram.h"
#import "ARChromeActivity.h"
#import "ZYInstapaperActivity.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


#pragma mark -------------------------------------------------------------------
#pragma mark IBAction

- (IBAction)pressBtn:(UIButton *)sender {

    // activityItems
    NSString *text  = @"iOS6 UIActivity Providers Collection: UIActivityCollection";
    NSURL    *url   = [NSURL URLWithString:@"https://github.com/shu223/UIActivityCollection"];
    UIImage  *image = [UIImage imageNamed:@"sample.png"];
    
    NSArray *activityItems;
    switch (sender.tag) {
        case 0:
        default:
            activityItems = @[text];
            break;
        case 1:
            activityItems = @[url];
            break;
        case 2:
            activityItems = @[image];
            break;
        case 3:
            activityItems = @[text, url, image];
            break;
    }
    

    // activities
    BufferUIActivity     *bufferActivity     = [[BufferUIActivity alloc] init];
    GSDropboxActivity    *dropboxActivity    = [[GSDropboxActivity alloc] init];
    DMActivityInstagram  *instagramActivity  = [[DMActivityInstagram alloc] init];
    ARChromeActivity     *chromeActivity     = [[ARChromeActivity alloc] init];
    ZYInstapaperActivity *instapaperActivity = [[ZYInstapaperActivity alloc] init];
    
    NSArray *activities = @[bufferActivity, dropboxActivity, instagramActivity, chromeActivity, instapaperActivity];
    
    // UIActivityViewController
    UIActivityViewController *activityView = [[UIActivityViewController alloc] initWithActivityItems:activityItems
                                                                               applicationActivities:activities];
    
    // show
    [self presentViewController:activityView animated:YES completion:nil];
}

@end
