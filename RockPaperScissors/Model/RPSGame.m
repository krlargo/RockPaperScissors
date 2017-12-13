//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by Kevin Largo on 12/12/17.
//  Copyright © 2017 Kevin Largo. All rights reserved.
//

#import "RPSGame.h"
#import "RPSTurn.h"

@implementation RPSGame

-(instancetype) initWithFirstTurn: (RPSTurn*) firstTurn
                       secondTurn: (RPSTurn*) secondTurn {
    self = [super init];
    
    if(self) {
        _firstTurn = firstTurn;
        _secondTurn = secondTurn;
    }
    
    return self;
}

-(RPSTurn *) winner {
    if([self.firstTurn defeats:self.secondTurn]) {
        return self.firstTurn;
    } else {
        return self.secondTurn;
    }
}

-(RPSTurn *) loser {
    if([self.firstTurn defeats:self.secondTurn]) {
        return self.secondTurn;
    } else {
        return self.firstTurn;
    }
}

-(NSString *) resultsString: (RPSGame *) game {
    if(self.firstTurn == [self winner]) {
        return @"You win!";
    } else if(self.firstTurn == [self loser]) {
        return @"You lose.";
    } else {
        return @"Invalid";
    }
}

@end
