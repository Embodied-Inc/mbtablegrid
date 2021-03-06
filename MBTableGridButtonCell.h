//
//  MBTableGridButtonCell.h
//  EmPath
//
//  Created by Daryl S Thachuk on 2020-08-21.
//  Copyright © 2020-2021 Embodied. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MBTableGridEditable.h"

NS_ASSUME_NONNULL_BEGIN

@interface MBTableGridButtonCell : NSButtonCell <MBTableGridEditable>

@property (nonatomic, assign, readonly) BOOL editOnFirstClick;

@end

NS_ASSUME_NONNULL_END
