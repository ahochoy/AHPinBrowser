//
//  Pin_BrowserAppDelegate.h
//  Pin Browser
//
//  Created by andrew s hochoy on 11/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Pin_BrowserViewController;

@interface Pin_BrowserAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    Pin_BrowserViewController *viewController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet Pin_BrowserViewController *viewController;

@end
