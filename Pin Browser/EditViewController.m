//
//  EditViewController.m
//  AHPinBrowser
//
//  Created by Andrew HoChoy on 11/21/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "EditViewController.h"

@implementation EditViewController 

@synthesize myPinBrowser;
@synthesize textFeild;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setTextFeild:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

//Adds Pin and URL to PinBrowser, clears view and resigns first responder
-(BOOL)textFieldShouldReturn:(UITextField *)txtField{
    
    [txtField resignFirstResponder];
    
    NSString *pinString = [pin componentsJoinedByString:@""];
    NSURL *url = [NSURL URLWithString: self.textFeild.text];
    
    [myPinBrowser addPin:pinString andURL:url];
    
    for (UILabel *lbl in super.pinDisplay) {
        lbl.text = nil;
    }
    
    textFeild.text = nil;
    
    [pin removeAllObjects];
    
    return YES;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (void)dealloc {
    [textFeild release];
    [super dealloc];
}
@end
