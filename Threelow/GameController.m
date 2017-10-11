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
        _scoreVar = 0;
        
        
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
    //Sum of all held Dice
    for (Dice *dice in self.heldDiceSet) {
        if ([dice.previousValue isEqual: @"I"]) {
            self.scoreVar = self.scoreVar + 1;
        } else if ([dice.previousValue isEqual: @"II"]) {
            self.scoreVar = self.scoreVar + 2;
        } else if ([dice.previousValue isEqual: @"III"]) {
            self.scoreVar = self.scoreVar + 3;
        } else if ([dice.previousValue isEqual: @"IV"]) {
            self.scoreVar = self.scoreVar + 4;
        } else if ([dice.previousValue isEqual: @"V"]) {
            self.scoreVar = self.scoreVar + 5;
        } else if ([dice.previousValue isEqual: @"VI"]){
            self.scoreVar = self.scoreVar +6;
        } else {
            NSLog(@"Oops! Something went wrong...");
        }
    }
    return self.scoreVar;
}

- (void)resetDice {
    for (Dice *dice in self.heldDiceSet) {
        dice.isHeld = NO;
    }
    [self.heldDiceSet removeAllObjects];
}

@end
