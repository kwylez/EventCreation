//
//  EventCreationViewController.h
//  EventCreation
//
//  Created by Cory Wiles on 4/8/10.
//  Copyright Wiles, LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventCreationViewController.h"
#import "EventKit/EventKit.h"
#import "EventKitUI/EventKitUI.h"

@interface EventCreationViewController : UIViewController <EKEventEditViewDelegate> {
  IBOutlet UIButton *createEvent;
}

@property (nonatomic, retain) IBOutlet UIButton *createEvent;

- (IBAction)displayCalendar:(id)sender;


@end

