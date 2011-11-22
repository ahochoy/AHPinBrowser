//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import "ListViewController.h"

@implementation ListViewController

@synthesize myPinBrowser;
@synthesize pinList;

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

//Upon View Appear Populate list with contents of Pin Browser Dictionary
- (void) viewDidAppear:(BOOL)animated {
    
    int i = 0;
    
    for (UILabel *lbl in pinList) {
        if(i < [myPinBrowser pinCount]){
            
            lbl.text = [NSString stringWithFormat:@"Pin: %@  -  URL: %@",[myPinBrowser pinAtIndex:i], [myPinBrowser URLatIndex:i]];
            
        } else {
            lbl.text = nil;
        }
    
        i++;
    }
    
    [super viewDidAppear: animated];
}

- (void)viewDidUnload
{
    [self setPinList:nil];
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
    [pinList release];
    [super dealloc];
}
@end
