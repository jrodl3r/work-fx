//
//  JRODAppDelegate.m
//  work-fx
//
//  Created by John Rodler on 12/26/12.
//  Copyright (c) 2012 John Rodler. All rights reserved.
//

#import "JRODAppDelegate.h"

@implementation JRODAppDelegate

@synthesize window;

- (void)awakeFromNib {
    
    fxItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain];
    
    NSBundle *bundle = [NSBundle mainBundle];
    
    fxImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"icon-off" ofType:@"png"]];
    fxHighlightImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"icon-on" ofType:@"png"]];
    
    [fxItem setImage:fxImage];
    [fxItem setAlternateImage:fxHighlightImage];
    [fxItem setMenu:fxMenu];
    [fxItem setToolTip:@"Go Time!"];
    [fxItem setHighlightMode:YES];
}

- (void)dealloc {
    
    [fxImage release];
    [fxHighlightImage release];
    [super dealloc];
}

- (IBAction)playMario:(id)sender {  
    
    NSSound *sound = [NSSound soundNamed:@"mario"];
    [sound play];
}

- (IBAction)playMachoman:(id)sender {
    
    NSSound *sound = [NSSound soundNamed:@"machoman"];
    [sound play];
}

- (IBAction)playEsposito:(id)sender {
    
    NSSound *sound = [NSSound soundNamed:@"esposito"];
    [sound play];
}

- (IBAction)whistle:(id)sender {
    
    NSSound *sound = [NSSound soundNamed:@"whistle"];
    [sound play];
}

@end
