//
//  PSMMainWindowController.h
//  Demo
//
//  Created by Jean-Philippe Couture on 2012-08-01.
//
//

#import <Cocoa/Cocoa.h>

@class PSMTabBarControl;

@interface PSMMainWindowController : NSWindowController

@property (weak) IBOutlet PSMTabBarControl *tabBarControl;
@property (weak) IBOutlet NSTabView *tabView;

@end