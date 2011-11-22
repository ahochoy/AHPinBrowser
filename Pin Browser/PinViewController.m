//
//  PinViewController.m
//  AHPinBrowser
//
//  Created by Andrew HoChoy on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "PinViewController.h"

@implementation PinViewController

@synthesize myPinBrowser, pinDisplay, pin, bvController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.pin = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    for (UILabel *lbl in pinDisplay) {
        lbl.text = nil;
    }
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setPinDisplay:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (void)dealloc {
    [pinDisplay release];
    [pin release];
    [bvController release];
    [super dealloc];
}

- (IBAction)pressKey:(id)sender {
    
    if([pin count] < 5){
        [pin addObject: [NSNumber numberWithInt:[sender tag]]];
    
        NSLog(@"Object Added: %@", [NSNumber numberWithInt:[sender tag]]);
        
        for (UILabel *lbl in pinDisplay) {
            if (lbl.tag == [pin count]) {
                NSLog(@"PIN COUNT: %d", [pin count]);
                lbl.text = [NSString stringWithFormat:@"%@", [pin objectAtIndex: ([pin count]-1)]];
            }
        }    
    }
}

- (IBAction)pressGo:(id)sender {
    
    
    NSString *pinString = [pin componentsJoinedByString:@""];
    
    if ([myPinBrowser isValidPin: pinString]) {
        
        NSURL *pinSite = [myPinBrowser URLforPin:pinString];
        NSLog(@"From Press Go - URL: %@", pinSite);
        
        if (self.bvController == nil)
        {
            BrowserViewController *browserController =
            [[BrowserViewController alloc] initWithNibName:@"BrowserView"
                                                    bundle:nil];
            self.bvController = browserController;
            [browserController release];
        }
        
        bvController.site = pinSite;
        
        [self.view.superview insertSubview:self.bvController.view atIndex:0];
        [self.view removeFromSuperview];
        [bvController viewDidAppear:YES];
        
    } else {
        
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Incorrect Pin Entered"
                              message:@"You have input an incorrect Pin, please try again"
                              delegate:nil
                              cancelButtonTitle:@"Ok"
                              otherButtonTitles:nil];
        [alert show];
        [alert release];
        
    }
    
    
    for (UILabel *lbl in pinDisplay) {
        lbl.text = nil;
    }
    
    [pin removeAllObjects];
    
}
@end
