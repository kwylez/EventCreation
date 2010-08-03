//
//  EventCreationAppDelegate.h
//  EventCreation
//
//  Created by Cory Wiles on 4/8/10.
//  Copyright Wiles, LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EventCreationViewController;

@interface EventCreationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    EventCreationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EventCreationViewController *viewController;

@end

