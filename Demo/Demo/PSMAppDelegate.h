//
//  PSMAppDelegate.h
//  Demo
//
//  Created by Jean-Philippe Couture on 2012-08-01.
//
//

#import <Cocoa/Cocoa.h>

@class PSMMainWindowController;

@interface PSMAppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic, strong) PSMMainWindowController *mainWindowController;

@end