//
//  PushViewController.h
//  SmartPush
//
//  Created by 朱洪伟 on 26/2/5.
//  Copyright © 2016年 朱洪伟. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ioSock.h"
#import "TextFieldDrag.h"
@interface PushViewController : NSViewController<NSTextFieldDelegate>
{
    
    NSString *_cerPath;
    NSString *_token;
    
    otSocket socket;
    OSStatus _connectResult;
    OSStatus _closeResult;
    
    SSLContextRef context;
    SecKeychainRef keychain;
    SecCertificateRef certificate;
    SecIdentityRef identity;
    
    NSUserDefaults *_defaults;

}
@property (weak) IBOutlet NSTextField *payload;

@property (weak) IBOutlet NSMatrix *mode;
@property (weak) IBOutlet NSButtonCell *devSelect;
@property (weak) IBOutlet NSButtonCell *productSelect;

@property (weak) IBOutlet TextFieldDrag *devCer;
@property (weak) IBOutlet TextFieldDrag *productCer;

@property (weak) IBOutlet NSTextField *devToken;
@property (weak) IBOutlet NSTextField *productToken;

- (IBAction)connect:(id)sender;
- (IBAction)push:(id)sender;
- (IBAction)modeSwitch:(id)sender;

- (IBAction)devCerBrowse:(id)sender;
- (IBAction)productCerBrowse:(id)sender;
@end
