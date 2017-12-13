//
//  RPSTurn.m
//  RockPaperScissors
//
//  Created by Kevin Largo on 12/12/17.
//  Copyright © 2017 Kevin Largo. All rights reserved.
//

#import "RPSTurn.h"

@implementation RPSTurn

-(instancetype) initWithMove: (Move) move {
    
    self = [super init];
    
    if(self) {
        _move = move;
    }
    
    return self;
}

-(instancetype) init {
    self = [super init];
    
    if(self) {
        _move = [self generateMove];
    }
    
    return self;
}

-(Move) generateMove {
    NSUInteger randomNumber = arc4random_uniform(3);
    
    switch(randomNumber) {
        case 0:
            return Rock;
            break;
        case 1:
            return Paper;
            break;
        case 2:
            return Scissors;
            break;
        default:
            return Invalid;
            break;
    }
}

-(BOOL) defeats: (RPSTurn *) opponent {
    return false;
}

@end
