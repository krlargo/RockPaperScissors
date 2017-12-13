//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Kevin Largo on 12/12/17.
//  Copyright © 2017 Kevin Largo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"
#import "RPSTurn.h"

@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;

-(void) throwDown: (Move) playersMove;

@end
