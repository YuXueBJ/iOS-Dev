//
//  TextFieldDrag.h
//  PushMeBaby-Enhance
//
//  Created by 朱洪伟 on 26/2/5.
//  Copyright © 2016年 朱洪伟. All rights reserved.
//

#import <Cocoa/Cocoa.h>
typedef void (^DidDragEnd)(NSString *result,NSTextField *text);
typedef void (^DidEnterDraging)();

@interface TextFieldDrag : NSTextField
{
    DidDragEnd _didDragEnd;
    DidEnterDraging _didEnterDraging;

}
-(void)didDragEndBlock:(DidDragEnd)didDragEnd;
-(void)didEnterDragingBlock:(DidEnterDraging)didEnterDraging;

@end
