//
//  Video.h
//  DevsTutorials
//
//  Created by Erblin Berisha on 7/31/17.
//  Copyright © 2017 Erblin Berisha. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Video : NSObject
@property(nonatomic, strong) NSString *videoTitle;
@property(nonatomic, strong) NSString *videoDescription;
@property(nonatomic, strong) NSString *videoIframe;
@property(nonatomic, strong) NSString *thumbnailUrl;

@end
