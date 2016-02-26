//
//  HelpViewController.h
//  SmartPush
//
//  Created by 朱洪伟 on 26/2/5.
//  Copyright © 2016年 朱洪伟. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
@interface HelpViewController : NSViewController
@property (weak) IBOutlet WebView *webview;
- (IBAction)pushTouched:(id)sender;
- (IBAction)cerTouched:(id)sender;
@end
