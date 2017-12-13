//
//  main.m
//  RockPaperScissors
//
//  Created by Kevin Largo on 12/11/17.
//  Copyright © 2017 Kevin Largo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        RPSController *controller = [[RPSController alloc] init];
        [controller throwDown:Rock];
        
        NSString* resultsMessage = [controller messageForGame:controller.game];
        
        NSLog(@"%@", resultsMessage);
    }
    return 0;
}
