//
//  MBTableGridPopUpCell.m
//  EmPath
//
//  Created by Daryl S Thachuk on 2020-08-20.
//  Copyright © 2020-2021 Embodied. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBTableGridPopUpCell.h"

@interface MBTableGridPopUpCell ()

@property (nonatomic, strong) NSColor *borderColor;

@end

@implementation  MBTableGridPopUpCell

@synthesize editOnFirstClick;

-(id) initTextCell:(NSString *)stringValue pullsDown:(BOOL)pullDown {
    self = [super initTextCell:stringValue pullsDown:pullDown];
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
    [self.borderColor set];
        
    // Draw the right border
    NSRect rightLine = NSMakeRect(NSMaxX(cellFrame)-1.0, NSMinY(cellFrame), 1.0, NSHeight(cellFrame));
    NSRectFill(rightLine);
    
    // Draw the bottom border
    NSRect bottomLine = NSMakeRect(NSMinX(cellFrame), NSMaxY(cellFrame)-1.0, NSWidth(cellFrame), 1.0);
    NSRectFill(bottomLine);

    [super drawWithFrame:cellFrame inView:controlView];
}

- (NSColor *)highlightColorWithFrame:(NSRect)cellFrame inView:(NSView *)controlView
{
    // Do not draw any highlight.
    return nil;
}

- (BOOL) editOnFirstClick {
    return true;
}

@end
