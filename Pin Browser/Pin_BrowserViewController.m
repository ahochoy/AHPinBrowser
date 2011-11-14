//
//  Pin_BrowserViewController.m
//  Pin Browser
//
//  Created by andrew s hochoy on 11/8/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Pin_BrowserViewController.h"
#import "PinViewController.h"
#import "BrowserViewController.h"
#import "ListViewController.h"
#import "EditViewController.h"
#import "PinBrowser.h"

@implementation Pin_BrowserViewController

@synthesize pinViewController, browserViewController, listViewController, editViewController, myPinBrowser; 

- (void)dealloc
{

    [pinViewController release];
    [browserViewController release];
    [listViewController release];
    [editViewController release];
    [myPinBrowser release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Upon load initiate Pin View and pass pinBrowser property to subview
- (void)viewDidLoad
{
    PinViewController *pinController = [[PinViewController alloc]
										  initWithNibName:@"PinView" bundle:nil];
    
    myPinBrowser = [[PinBrowser alloc] init];
    pinController.myPinBrowser = myPinBrowser;
    
    self.pinViewController = pinController;
    
    [self.view insertSubview:pinController.view atIndex:0];
    
    [pinController release];
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}


     // Lazy load Pin View, clears other views from superView
-(IBAction)switchToPin:(id)sender{
    
    if (self.pinViewController.view.superview == nil)
    {
        if (self.pinViewController == nil)
        {
            PinViewController *pinController =
            [[PinViewController alloc] initWithNibName:@"PinView"
                                                   bundle:nil];
            self.pinViewController = pinController;
            [pinController release];
            
        }
        [browserViewController.view removeFromSuperview];
        [listViewController.view removeFromSuperview];
        [editViewController.view removeFromSuperview];
        [[self.view.superview viewWithTag:20] removeFromSuperview];
        
        [self.view insertSubview:pinViewController.view atIndex:0];
    }

}

    // Lazy load Browser View, clears other views from superView
-(IBAction)switchToBrowser:(id)sender{
    
    if (self.browserViewController.view.superview == nil)
    {
        if (self.browserViewController == nil)
        {
            BrowserViewController *browserController =
            [[BrowserViewController alloc] initWithNibName:@"BrowserView"
                                                bundle:nil];
            self.browserViewController = browserController;
            [browserController release];
            
        }

        [pinViewController.view removeFromSuperview];
        [listViewController.view removeFromSuperview];
        [editViewController.view removeFromSuperview];
        [[self.view.superview viewWithTag:20] removeFromSuperview];
        [self.view insertSubview:browserViewController.view atIndex:0];
        [browserViewController viewDidAppear:NO];
    }
}
    // Lazy load List View, clears other views from superView
-(IBAction)switchToList:(id)sender{
    
    if (self.listViewController.view.superview == nil)
    {
        if (self.listViewController == nil)
        {
            ListViewController *listController =
            [[ListViewController alloc] initWithNibName:@"ListView"
                                                bundle:nil];
            
            listController.myPinBrowser = myPinBrowser;
            self.listViewController = listController;
            [listController release];
            
        }
        
        [browserViewController.view removeFromSuperview];
        [pinViewController.view removeFromSuperview];
        [editViewController.view removeFromSuperview];
        [[self.view.superview viewWithTag:20] removeFromSuperview];
        [self.view insertSubview:listViewController.view atIndex:0];
        [listViewController viewDidAppear:NO];
    }
}
    // Lazy load Edit View, clears other views from superView
-(IBAction)switchToEdit:(id)sender{
    
    if (self.editViewController.view.superview == nil)
    {
        if (self.editViewController == nil)
        {
            EditViewController *editController =
            [[EditViewController alloc] initWithNibName:@"EditView"
                                                bundle:nil];
            
            editController.myPinBrowser = myPinBrowser;
            self.editViewController = editController;
            [editController release];

        }
        
        [browserViewController.view removeFromSuperview];
        [listViewController.view removeFromSuperview];
        [pinViewController.view removeFromSuperview];
        [[self.view.superview viewWithTag:20] removeFromSuperview];
        [self.view insertSubview:editViewController.view atIndex:0];
    }

}

@end
