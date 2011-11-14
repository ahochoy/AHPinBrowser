//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import "EditViewController.h"


@implementation EditViewController
@synthesize textBar;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [labelCollection release];
    [textBar release];
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
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [labelCollection release];
    labelCollection = nil;
    [self setTextBar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

    // Uses Text Field Delegate to trigger save method after return
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
       
    [self.myPinBrowser saveComboToDictionaryPin:[pin componentsJoinedByString:@""] 
                                    andURL:[NSURL URLWithString:textBar.text]];
    
    // Clears view after and resigns keyboard save called
    for (UILabel *lbl in labelCollection) {
        lbl.text = nil;
    }
    textBar.text = nil;
    [pin removeAllObjects];
    [textField resignFirstResponder];
    
    return YES;
}

@end
