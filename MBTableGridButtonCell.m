//
//  MBTableGridButtonCell.m
//  EmPath
//
//  Created by Daryl S Thachuk on 2020-08-21.
//  Copyright © 2020 Embodied. All rights reserved.
//

#import "MBTableGridButtonCell.h"

@interface MBTableGridButtonCell ()

@property (nonatomic, strong) NSColor *borderColor;

@end

@implementation MBTableGridButtonCell

-(id) init {
    self = [super init];
    if (self) {
        self.borderColor = NSColor.gridColor;
        return self;
    }
    return nil;
}

- (void) drawWithFrame:(NSRect)cellFrame inView:(NSView *)controlView {
    if (self.backgroundColor != nil) {
        [self.backgroundColor set];
        NSRectFill(cellFrame);
    }
        
    [super drawWithFrame:cellFrame inView:controlView];

    [self.borderColor set];

    // Draw the right border
    NSRect rightLine = NSMakeRect(NSMaxX(cellFrame)-1.0, NSMinY(cellFrame), 1.0, NSHeight(cellFrame));
    NSRectFill(rightLine);
    
    // Draw the bottom border
    NSRect bottomLine = NSMakeRect(NSMinX(cellFrame), NSMaxY(cellFrame)-1.0, NSWidth(cellFrame), 1.0);
    NSRectFill(bottomLine);
}

@end
