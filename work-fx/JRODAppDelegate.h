//
//  JRODAppDelegate.h
//  work-fx
//
//  Created by John Rodler on 12/26/12.
//  Copyright (c) 2012 John Rodler. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface JRODAppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSMenu *fxMenu;
    NSStatusItem *fxItem;
    NSImage *fxImage;
    NSImage *fxHighlightImage;
}

- (IBAction)playMario:(id)sender;
- (IBAction)playMachoman:(id)sender;
- (IBAction)playEsposito:(id)sender;
- (IBAction)whistle:(id)sender;

@property (assign) IBOutlet NSWindow *window;

@end
