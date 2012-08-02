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
#import "PSMAnyTabContentViewController.h"

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
    [self.tabBarControl setAllowsScrubbing:NO];
    
    [[self.tabBarControl addTabButton] setTarget:self];
    [[self.tabBarControl addTabButton] setAction:@selector(addNewTab:)];
    
    [self addNewTab:self];
}

- (void)addNewTab:(id)sender {
    NSTabViewItem *tabViewItem = [[NSTabViewItem alloc] init];

    PSMAnyTabContentViewController* tabContentViewController = [[PSMAnyTabContentViewController alloc] initWithTabViewItem:tabViewItem];
    tabViewItem.identifier = tabContentViewController;
    
    tabViewItem.view = tabContentViewController.view;
    [tabViewItem setLabel:@"Untitled"];
    [self.tabView addTabViewItem:tabViewItem];
    [self.tabView selectTabViewItem:tabViewItem];
}

- (BOOL)tabView:(NSTabView *)aTabView shouldDragTabViewItem:(NSTabViewItem *)tabViewItem fromTabBar:(PSMTabBarControl *)tabBarControl {
    return YES;
}

- (BOOL)tabView:(NSTabView *)aTabView shouldDropTabViewItem:(NSTabViewItem *)tabViewItem inTabBar:(PSMTabBarControl *)tabBarControl {
    return YES;
}

- (BOOL)tabView:(NSTabView *)aTabView shouldAllowTabViewItem:(NSTabViewItem *)tabViewItem toLeaveTabBar:(PSMTabBarControl *)tabBarControl {
    return YES;
}

- (void)tabView:(NSTabView*)aTabView didDropTabViewItem:(NSTabViewItem *)tabViewItem inTabBar:(PSMTabBarControl *)tabBarControl {
    
}


@end