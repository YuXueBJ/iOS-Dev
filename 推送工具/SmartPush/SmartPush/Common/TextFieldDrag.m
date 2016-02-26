//
//  TextFieldDrag.h
//  PushMeBaby-Enhance
//
//  Created by 朱洪伟 on 26/2/5.
//  Copyright © 2016年 朱洪伟. All rights reserved.
//

#import "TextFieldDrag.h"

@implementation TextFieldDrag

- (void)awakeFromNib {
    [self registerForDraggedTypes:@[NSFilenamesPboardType]];
}

- (BOOL)performDragOperation:(id <NSDraggingInfo>)sender
{
    NSPasteboard *pboard = [sender draggingPasteboard];

    if ( [[pboard types] containsObject:NSURLPboardType] ) {
        NSArray *files = [pboard propertyListForType:NSFilenamesPboardType];
        if (files.count <= 0) {
            return NO;
        }
        self.stringValue = [files objectAtIndex:0];

    }
    return YES;
}


- (NSDragOperation)draggingEntered:(id <NSDraggingInfo>)sender {
    
    if (!self.isEnabled) return NSDragOperationNone;
    
    NSPasteboard *pboard;
    NSDragOperation sourceDragMask;
    
    sourceDragMask = [sender draggingSourceOperationMask];
    pboard = [sender draggingPasteboard];
    
    if ( [[pboard types] containsObject:NSColorPboardType] ) {
        if (sourceDragMask & NSDragOperationCopy) {
            return NSDragOperationCopy;
        }
    }
    if ( [[pboard types] containsObject:NSFilenamesPboardType] ) {
        if (sourceDragMask & NSDragOperationCopy) {
            return NSDragOperationCopy;
        }
    }
    
    return NSDragOperationNone;
}
-(void)didDragEndBlock:(DidDragEnd)didDragEnd{
    _didDragEnd = [didDragEnd copy];
}
-(void)didEnterDragingBlock:(DidEnterDraging)didEnterDraging{
    _didEnterDraging  = [didEnterDraging copy];
}
@end
