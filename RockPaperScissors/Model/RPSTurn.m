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

-(Move) generateMove {
    return Rock;
}

-(BOOL) defeats: (RPSTurn *) opponent {
    return false;
}

@end
