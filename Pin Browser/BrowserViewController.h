//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import <UIKit/UIKit.h>


@interface BrowserViewController : UIViewController {
    
    UIWebView *webView;
    NSURL *site;
    
}

@property (nonatomic, retain) IBOutlet UIWebView * webView;
@property (nonatomic, retain) NSURL *site;

@end
