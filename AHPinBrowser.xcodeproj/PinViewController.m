//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import "PinViewController.h"
#import "BrowserViewController.h"
#import "PinBrowser.h"


@implementation PinViewController
@synthesize labelCollection, goButton, myPinBrowser, pin, bvController;

// Upon Init - lazy load browserviewcontroller for "goToURL" method
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.pin = [NSMutableArray arrayWithCapacity:4];        
        BrowserViewController *bvc = [[BrowserViewController alloc] initWithNibName:@"BrowserView"
                                                                   bundle:nil];
        self.bvController = bvc;
        [bvc release];
    }
    return self;
}

- (void)dealloc
{
    [labelCollection release];
    [myPinBrowser release];
    [pin release];
    [bvController release];
    [goButton release];
    [super dealloc];
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
    // Upon View Load clear labelviews
    for (UILabel *label in labelCollection) {
        label.text = nil;
    }
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    
    [pin release];
    [self setGoButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (IBAction)goToURL:(id)sender {
    
    // Get's Pin value from array store
    NSString *pinVal = [pin componentsJoinedByString: @""];
    
    // If pin is valid, set URL in BrowserViewController, and change views. ELSE send alert to user
    if([self.myPinBrowser isValidPin: pinVal]){
        
        if (self.bvController == nil)
        {
            BrowserViewController *browserController =
            [[BrowserViewController alloc] initWithNibName:@"BrowserView"
                                                    bundle:nil];
            self.bvController = browserController;
            [browserController release];
        }
        
        
        bvController.site = [myPinBrowser retrieveUrlFromPin: pinVal];
        
        [self.view.superview insertSubview:bvController.view atIndex:0];
        [self.view removeFromSuperview];
        [bvController viewDidAppear:NO];
    } else {
        
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Incorrect PIN Entered..."
                              message:@"You have input an invalid pin, please try again."
                              delegate:self
                              cancelButtonTitle:@"OK!"
                              otherButtonTitles:nil];
        [alert show];
        [alert release];
    }
    
    // Reset all values after either action
    [pin removeAllObjects];
    for (UILabel *label in labelCollection) {
        label.text = nil;
    }
    
}

    // Updates pin array with input from keypad
- (IBAction)touchKey:(UIButton *)sender {
    
    if( [pin count] < 4 ){
        
        NSNumber *senderTagAsNum = [NSNumber numberWithInt:sender.tag];
        
        [pin addObject: senderTagAsNum];
        
        for (UILabel *item in labelCollection) {
            if(item.tag == [pin count] - 1){  
                item.text = [NSString stringWithFormat: @"%d", [sender tag]];
            }
        }
    }
    
}
@end
