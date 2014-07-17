//
//  main.m
//  Calculator
//
//  Created by Mr. Gecko <GRMrGecko@gmail.com> on 10/31/12.
//  No Copyright Claimed. Public Domain.
//

#import <Cocoa/Cocoa.h>
#import <ScriptingBridge/ScriptingBridge.h>
#import "Terminal.h"
#import "iTerm.h"

int main(int argc, char *argv[]) {
	iTermITermApplication *iTerm = [SBApplication applicationWithBundleIdentifier:@"com.googlecode.iterm2"];
	if (iTerm!=nil) {
		iTermTerminal *terminal = [[[iTerm classForScriptingClass:@"terminal"] alloc] init];
		[[iTerm terminals] addObject:terminal];
		iTermSession *session = [[[iTerm classForScriptingClass:@"session"] alloc] init];
		[[terminal sessions] addObject:session];
		[session execCommand:@"/usr/ubin/calc"];
		[iTerm activate];
	} else {
		TerminalApplication *terminal = [SBApplication applicationWithBundleIdentifier:@"com.apple.Terminal"];
		[terminal doScript:@"calc" in:nil];
		[terminal activate];
	}
	
	return 0;
}
