//
//  EventCreationViewController.m
//  EventCreation
//
//  Created by Cory Wiles on 4/8/10.
//  Copyright Wiles, LLC 2010. All rights reserved.
//

#import "EventCreationViewController.h"


@implementation EventCreationViewController

@synthesize createEvent;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
  

  
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
  self.createEvent = nil;
}


- (void)eventEditViewController:(EKEventEditViewController *)controller didCompleteWithAction:(EKEventEditViewAction)action {
  [self dismissModalViewControllerAnimated:YES];
}

- (void)dealloc {
  [createEvent release];
  [super dealloc];
}

- (IBAction)displayCalendar:(id)sender {
  
  EKEventEditViewController* controller = [[EKEventEditViewController alloc] init];
  EKEventStore *myEventStore = [[EKEventStore alloc] init];
  
  [myEventStore eventWithIdentifier:@"test"];
  controller.eventStore = myEventStore;
  controller.editViewDelegate = self;
  [self presentModalViewController: controller animated:YES];
  [controller release];
}

@end
