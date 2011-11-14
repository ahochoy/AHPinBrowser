//  PROGRAMMER(S):  Andrew HoChoy
//  PANTHERID:      1569034
//  CLASS:          COP 4655
//  INSTRUCTOR:     Steven Luis ECS 282
//  ASSIGNMENT:     #5 Pin Browser
//  DUE:            Thursday 11/10

#import "ListViewController.h"
#import "PinBrowser.h"

@implementation ListViewController
@synthesize myPinBrowser;
@synthesize linkList;

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
    [myPinBrowser release];
    [linkList release];
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
    for(UILabel *link in linkList)
        link.text = nil;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


    // Enumerate through dictionary to create list view of Pin/URL entries
-(void)viewDidAppear:(BOOL)animated
{
    
    NSLog(@"%@", myPinBrowser.pinDictionary);
    
    __block int i = 0;
    
    [myPinBrowser.pinDictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop){
    
        for (UILabel *link in linkList) {
            if(link.tag == i){
                link.text = [NSString stringWithFormat:@"Pin: %@  Link: %@", key, obj];
            }
        }
        
        i++;
    }];

    [super viewDidAppear:animated];
    
}

- (void)viewDidUnload
{
    [self setLinkList:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
