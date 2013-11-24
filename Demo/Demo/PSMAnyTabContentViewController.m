//
//  PSMAnyTabContentViewController.m
//  Demo
//
//  Created by Jean-Philippe Couture on 2012-08-01.
//
//

#import "PSMAnyTabContentViewController.h"

@implementation PSMAnyTabContentViewController

@synthesize progressIndicatorCheckbox;
@synthesize markDirtyCheckbox;

- (id)initWithTabViewItem:(NSTabViewItem *)tabViewItem {
    self = [super initWithNibName:@"TabContentView" bundle:[NSBundle mainBundle] tabViewItem:tabViewItem];
    if (self) {
        self.tabViewItem = tabViewItem;
    }
    
    return self;
}

- (IBAction)setTabLabel:(id)sender {
    NSString *tabLabelText = self.tabLabelTextField.stringValue;
    if (tabLabelText && tabLabelText.length > 0) {
        [self.tabViewItem setLabel:tabLabelText];
    } else {
        [self.tabViewItem setLabel:@"Untitled"];
    }
}

- (IBAction)setBadgeCount:(id)sender {
    NSString *badgeCountText = self.badgeCountTextField.stringValue;
    if (badgeCountText && badgeCountText.length > 0) {
        self.objectCount = badgeCountText.integerValue;
    } else {
        self.objectCount = 0;
    }
}

- (IBAction)showProgressIndicator:(id)sender {
    if (self.progressIndicatorCheckbox.state == NSOnState) {
        self.isProcessing = YES;
    } else {
        self.isProcessing = NO;
    }
}

- (IBAction)markAsDirty:(id)sender {
    if (self.markDirtyCheckbox.state == NSOnState) {
        self.isEdited = YES;
    } else {
        self.isEdited = NO;
    }
}
@end
