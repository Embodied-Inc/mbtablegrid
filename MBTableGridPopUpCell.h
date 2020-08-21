//
//  MBTableGridPopUpCell.h
//  EmPath
//
//  Created by Daryl S Thachuk on 2020-08-20.
//  Copyright © 2020 Embodied. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>
#import "MBTableGridEditable.h"

NS_ASSUME_NONNULL_BEGIN

@interface MBTableGridPopUpCell : NSPopUpButtonCell <MBTableGridEditable>

@property (nonatomic, strong, nullable) NSDictionary * userInfo;
@property (nonatomic, assign, readonly) BOOL editOnFirstClick;

@end

NS_ASSUME_NONNULL_END
