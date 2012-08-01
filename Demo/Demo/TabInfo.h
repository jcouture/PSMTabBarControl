//
//  TabInfo.h
//  Demo
//
//  Created by Jean-Philippe Couture on 2012-08-01.
//
//

#import <Foundation/Foundation.h>

@interface TabInfo : NSObject

@property (nonatomic, assign, getter = isProcessing) BOOL processing;
@property (nonatomic, strong) NSImage *icon;
@property (nonatomic, strong) NSString *iconName;
@property (nonatomic, assign) NSInteger objectCount;
@property (nonatomic, assign, getter = isEdited) BOOL edited;

@end