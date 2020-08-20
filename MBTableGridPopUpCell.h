//
//  MBTableGridPopUpCell.h
//  EmPath
//
//  Created by Daryl S Thachuk on 2020-08-20.
//  Copyright © 2020 Embodied. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface MBTableGridPopUpCell : NSPopUpButtonCell

@property (nonatomic, strong, nullable) NSDictionary * userInfo;

@end

NS_ASSUME_NONNULL_END
