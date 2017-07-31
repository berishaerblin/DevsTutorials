//
//  HTTPService.m
//  DevsTutorials
//
//  Created by Erblin Berisha on 7/31/17.
//  Copyright © 2017 Erblin Berisha. All rights reserved.
//

#import "HTTPService.h"
#define URL_BASE "http://localhost:6069"
#define URL_TUTORIALS "/tutorials"

@implementation HTTPService

+ (id) instance {
    static HTTPService *sharedInstance = nil;
    @synchronized (self) {
        if (sharedInstance == nil) {
            sharedInstance = [[self alloc]init];
        }
    }
    return sharedInstance;
}

-(void) getTutorials: (nullable onComplete)completinHandler {
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s", URL_BASE, URL_TUTORIALS]];
    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if(data != nil) {
            NSError *err;
            NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];
            
            if (err == nil) {
                completinHandler(json,nil);
            } else {
                completinHandler(nil, @"Data is corrupt. Please try again");
            }
        } else {
            NSLog(@"Network Err: %@", error.debugDescription);
            completinHandler(nil, @"Problem connection to the server");
        }
        
    }] resume];
}

@end
