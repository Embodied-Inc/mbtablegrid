//
//  MBTableGridPopUpCell.m
//  EmPath
//
//  Created by Daryl S Thachuk on 2020-08-20.
//  Copyright © 2020 Embodied. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBTableGridPopUpCell.h"

@interface MBTableGridPopUpCell ()

@property (nonatomic, strong) NSColor *borderColor;

@end

@implementation  MBTableGridPopUpCell

-(id) initTextCell:(NSString *)stringValue pullsDown:(BOOL)pullDown {
    self = [super initTextCell:stringValue pullsDown:pullDown];
    if (self) {
        self.borderColor = NSColor.gridColor;
        return self;
    }
    return nil;
}

- (void) drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
    [self.borderColor set];
    [super drawWithFrame:cellFrame inView:controlView];
    NSFrameRect(cellFrame);
}
@end
