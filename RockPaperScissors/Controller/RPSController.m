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

@end
