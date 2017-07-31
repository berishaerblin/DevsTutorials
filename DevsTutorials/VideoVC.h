//
//  VideoVC.h
//  DevsTutorials
//
//  Created by Erblin Berisha on 8/1/17.
//  Copyright © 2017 Erblin Berisha. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;

@interface VideoVC : UIViewController <UIWebViewDelegate>
@property(nonatomic,strong) Video *video;

@end
