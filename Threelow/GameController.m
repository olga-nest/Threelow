#import "GameController.h"
#import "Dice.h"
#import "InputHandler.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.heldDiceSet = [[NSMutableSet alloc]init];
        self.diceArr = [[NSMutableArray alloc]init];
        
        for (int i = 0 ; i < 5; i++){
            Dice *diceObj = [[Dice alloc] init];
            [self.diceArr addObject: diceObj];
        
        }
    }
    return self;
}

- (void)roll {
    for (Dice *dice in _diceArr) {
        if ([self.heldDiceSet containsObject:dice] != YES) {
            NSLog(@"%@", [dice randomValue]);
        } else {
            NSLog(@"[%@]", [dice previousValue]);
        }
    }
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

-(void)resetDice {
    [self.heldDiceSet removeAllObjects];
}

@end
