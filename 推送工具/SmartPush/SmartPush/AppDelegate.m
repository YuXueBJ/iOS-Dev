//
//  AppDelegate.m
//  SmartPush
//
//  Created by 朱洪伟 on 26/2/5.
//  Copyright © 2016年 朱洪伟. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}
- (BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication hasVisibleWindows:(BOOL)flag
{
    if (!flag)
    {
        [[theApplication windows][0] makeKeyAndOrderFront:self];
    }
    return YES;
}


@end
