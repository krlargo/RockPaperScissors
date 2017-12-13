//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Kevin Largo on 12/12/17.
//  Copyright © 2017 Kevin Largo. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController

-(void) throwDown: (Move) playersMove {
    RPSTurn *playersTurn = [[RPSTurn alloc] initWithMove:playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    
    self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn
                                        secondTurn:computersTurn];
}

-(NSString*) messageForGame: (RPSGame*) game {
    NSString *outcomeString;
    if(![game.firstTurn defeats:game.secondTurn] &&
       ![game.secondTurn defeats:game.firstTurn]) {
        return [NSString stringWithFormat: @"You both chose %@; It's a Tie!", game.winner];
    } else if([game.firstTurn defeats:game.secondTurn]) {
        outcomeString = @"You win!";
    } else if([game.secondTurn defeats:game.firstTurn]) {
        outcomeString = @"You lose!";
    }
    
    NSString *winnerString = [[game winner] description];
    NSString *loserString = [[game loser] description];
    NSString *resultsString = [NSString stringWithFormat:@"%@ defeats %@, %@", winnerString, loserString, outcomeString];

    return resultsString;
}

@end
