//
//  iTermOpenQuicklyCommands.m
//  iTerm2
//
//  Created by George Nachman on 3/7/16.
//
//

#import "iTermOpenQuicklyCommands.h"

@implementation iTermOpenQuicklyCommand

@synthesize text = _text;

- (void)dealloc {
    [_text release];
    [super dealloc];
}
+ (NSString *)tipTitle {

    return [NSString stringWithFormat:@"Tip: Start your query with “/%@”", [self command]];
}

+ (NSString *)tipDetail {
    return [NSString stringWithFormat:@"Restricts results to %@", [self restrictionDescription]];
}

+ (NSString *)command {
    return nil;
}

+ (NSString *)restrictionDescription {
    return nil;
}

- (BOOL)supportsSessionLocation {
    return NO;
}

- (BOOL)supportsCreateNewTab {
    return NO;
}

- (BOOL)supportsChangeProfile {
    return NO;
}

- (BOOL)supportsOpenArrangement {
    return NO;
}

- (BOOL)supportsScript {
    return NO;
}

- (BOOL)supportsColorPreset {
    return NO;
}

- (BOOL)supportsAction {
    return NO;
}

- (BOOL)supportsSnippet {
    return NO;
}

@end

@implementation iTermOpenQuicklyWindowArrangementCommand

+ (NSString *)restrictionDescription {
    return @"window arrangements";
}

+ (NSString *)command {
    return @"a";
}

- (BOOL)supportsOpenArrangement {
    return YES;
}

@end

@implementation iTermOpenQuicklySearchSessionsCommand

+ (NSString *)restrictionDescription {
    return @"existing sessions";
}

+ (NSString *)command {
    return @"f";
}

- (BOOL)supportsSessionLocation {
    return YES;
}

@end

@implementation iTermOpenQuicklySwitchProfileCommand

+ (NSString *)restrictionDescription {
    return @"switch profiles";
}

+ (NSString *)command {
    return @"p";
}

- (BOOL)supportsChangeProfile {
    return YES;
}

@end

@implementation iTermOpenQuicklyCreateTabCommand

+ (NSString *)restrictionDescription {
    return @"create tab";
}

+ (NSString *)command {
    return @"t";
}

- (BOOL)supportsCreateNewTab {
    return YES;
}

@end

@implementation iTermOpenQuicklyScriptCommand

+ (NSString *)restrictionDescription {
    return @"run script";
}

+ (NSString *)command {
    return @"s";
}

- (BOOL)supportsScript {
    return YES;
}

@end

@implementation iTermOpenQuicklyColorPresetCommand

+ (NSString *)restrictionDescription {
    return @"load color preset";
}

+ (NSString *)command {
    return @"c";
}

- (BOOL)supportsColorPreset {
    return YES;
}

@end

@implementation iTermOpenQuicklyNoCommand

- (BOOL)supportsSessionLocation {
    return YES;
}

- (BOOL)supportsCreateNewTab {
    return YES;
}

- (BOOL)supportsChangeProfile {
    return YES;
}

- (BOOL)supportsOpenArrangement {
    return YES;
}

- (BOOL)supportsScript {
    return YES;
}

- (BOOL)supportsColorPreset {
    return YES;
}

- (BOOL)supportsAction {
    return YES;
}

- (BOOL)supportsSnippet {
    return YES;
}

@end

@implementation iTermOpenQuicklyActionCommand

+ (NSString *)restrictionDescription {
    return @"perform action";
}

+ (NSString *)command {
    return @":";
}

- (BOOL)supportsAction {
    return YES;
}

@end

@implementation iTermOpenQuicklySnippetCommand

+ (NSString *)restrictionDescription {
    return @"send snippet";
}

+ (NSString *)command {
    return @".";
}

- (BOOL)supportsSnippet {
    return YES;
}

@end
