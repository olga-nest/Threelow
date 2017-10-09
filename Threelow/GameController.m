#import "GameController.h"
#import "Dice.h"
#import "InputHandler.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _heldDiceSet = [[NSMutableArray alloc]init];
        _diceArr = [[NSMutableArray alloc]init];
        
        
        for (int i = 0 ; i < 5; i++){
            Dice *diceObj = [[Dice alloc] init];
            [_diceArr addObject: diceObj];
        
        }
    }
    return self;
}

- (void)roll {
    for (Dice *dice in self.diceArr) {
        if ([self.heldDiceSet containsObject:dice] != YES) {
            NSLog(@"%@", [dice randomValue]);
        } else {
            NSLog(@"[%@]", [dice previousValue]);
        }
    }
    NSLog(@"Your current score is %d", self.score);
}

- (void)hold: (Dice *) dieToHold {
    
    if (dieToHold.isHeld == NO) {
    [self.heldDiceSet addObject:dieToHold];
    [dieToHold setIsHeld:YES];
  //  NSLog(@"objects in heldDiceSet %lu", [self.heldDiceSet count]);
    } else if (dieToHold.isHeld == YES) {
        [self.heldDiceSet removeObject:dieToHold];
        [dieToHold setIsHeld:NO];
        NSLog(@"You unhold [%@]",  [dieToHold previousValue]);
    }
    
}

-(int)score {
    int score = 0;
    //Sum of all held Dice
    for (Dice *dice in self.heldDiceSet) {
        if ([dice.randomValue isEqual: @"I"]) {
            score = score + 1;
        } else if ([dice.randomValue isEqual: @"II"]) {
            score = score + 2;
        } else if ([dice.randomValue isEqual: @"III"]) {
            score = score + 3;
        } else if ([dice.randomValue isEqual: @"IV"]) {
            score = score + 4;
        } else if ([dice.randomValue isEqual: @"V"]) {
            score = score + 5;
        } else if ([dice.randomValue isEqual: @"VI"]){
            score = score +6;
        } else {
            NSLog(@"Oops! Something went wrong...");
        }
    }
    return score;
}

- (void)resetDice {
    [self.heldDiceSet removeAllObjects];
}

@end
