//
//  PSMAppDelegate.m
//  Demo
//
//  Created by Jean-Philippe Couture on 2012-08-01.
//
//

#import "PSMAppDelegate.h"
#import "PSMMainWindowController.h"

@implementation PSMAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.mainWindowController = [[PSMMainWindowController alloc] init];
    [self.mainWindowController.window makeKeyAndOrderFront:nil];
}

@end