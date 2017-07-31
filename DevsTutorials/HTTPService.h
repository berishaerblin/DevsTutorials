//
//  HTTPService.h
//  DevsTutorials
//
//  Created by Erblin Berisha on 7/31/17.
//  Copyright © 2017 Erblin Berisha. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ onComplete) (NSArray * __nullable dataArray, NSString *__nullable errMessage);

@interface HTTPService : NSObject

+(id)  instance;
-(void) getTutorials: (nullable onComplete)completinHandler;

@end
