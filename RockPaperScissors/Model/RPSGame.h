//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by Kevin Largo on 12/12/17.
//  Copyright © 2017 Kevin Largo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(instancetype) initWithFirstTurn: (RPSTurn*) firstTurn secondTurn: (RPSTurn*) secondTurn;
-(RPSTurn*) winner;
-(RPSTurn*) loser;
-(NSString *) resultsString: (RPSGame *) game;

@end
