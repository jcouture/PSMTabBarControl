//
//  PSMMainWindowController.m
//  Demo
//
//  Created by Jean-Philippe Couture on 2012-08-01.
//
//

#import "PSMMainWindowController.h"
#import "PSMTabBarControl.h"
#import "PSMRolloverButton.h"
#import "PSMMetalTabStyle.h"
#import "TabInfo.h"

@implementation PSMMainWindowController

- (id)init {
    self = [super initWithWindowNibName:@"MainWindow"];
    if (self) {
    }
    
    return self;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    [self.tabBarControl setStyle:[[PSMMetalTabStyle alloc] init]];
    [self.tabBarControl setShowAddTabButton:YES];
    [self.tabBarControl setUseOverflowMenu:YES];
    
    [[self.tabBarControl addTabButton] setTarget:self];
    [[self.tabBarControl addTabButton] setAction:@selector(addNewTab:)];
    
    [self addNewTab:self];
}

- (void)addNewTab:(id)sender {
    TabInfo *tabInfo = [[TabInfo alloc] init];
    
    NSTabViewItem *newItem = [[NSTabViewItem alloc] initWithIdentifier:tabInfo];
    [newItem setLabel:@"Untitled"];
    [self.tabView addTabViewItem:newItem];
    [self.tabView selectTabViewItem:newItem];
}


- (IBAction)closeTab:(id)sender
{
    [self.tabView removeTabViewItem:[self.tabView selectedTabViewItem]];
}

- (NSArray *)allowedDraggedTypesForTabView:(NSTabView *)aTabView {
	return [NSArray arrayWithObjects:NSFilenamesPboardType, NSStringPboardType, nil];
}


- (BOOL)tabView:(NSTabView *)aTabView shouldCloseTabViewItem:(NSTabViewItem *)tabViewItem {
    return YES;
}


@end