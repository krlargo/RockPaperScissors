//
//  RPSTurn.h
//  RockPaperScissors
//
//  Created by Kevin Largo on 12/12/17.
//  Copyright © 2017 Kevin Largo. All rights reserved.
//

typedef enum Move {
    Rock, Paper, Scissors
} Move;

#import <Foundation/Foundation.h>

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype) initWithMove: (Move) move;

@end
