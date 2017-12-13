//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by Kevin Largo on 12/12/17.
//  Copyright © 2017 Kevin Largo. All rights reserved.
//

#import "RPSGame.h"

@implementation RPSGame

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(instancetype) initWithFirstTurn: (RPSTurn*) firstTurn
                       secondTurn: (RPSTurn*) secondTurn {
    self = [super init];
    
    if(self) {
        _firstTurn = firstTurn;
        _secondTurn = secondTurn;
    }
    
    return self;
}

@end
