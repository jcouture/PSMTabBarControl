//
//  PSMAnyTabContentViewController.h
//  Demo
//
//  Created by Jean-Philippe Couture on 2012-08-01.
//
//

#import <Cocoa/Cocoa.h>
#import "PSMTabContentViewController.h"

@interface PSMAnyTabContentViewController : PSMTabContentViewController

@property (weak) IBOutlet NSTextField *tabLabelTextField;
@property (weak) IBOutlet NSTextField *badgeCountTextField;
@property (weak) IBOutlet NSButton *progressIndicatorCheckbox;
@property (weak) IBOutlet NSButton *markDirtyCheckbox;

- (id)initWithTabViewItem:(NSTabViewItem *)tabViewItem;

@end