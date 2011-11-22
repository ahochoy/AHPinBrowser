//
//  PinBrowser.h
//  AHPinBrowser
//
//  Created by Andrew HoChoy on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PinBrowser : NSObject {
    
    NSMutableDictionary *pinDictionary;
    
}

@property (nonatomic, retain) NSMutableDictionary *pinDictionary;

-(BOOL)isValidPin:(NSString *)pin;
-(NSURL *)URLforPin:(NSString *)pin;
-(void)addPin:(NSString *)pin andURL:(NSURL *)url;

@end
