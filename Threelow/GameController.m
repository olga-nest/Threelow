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
    }
    return self;
}

- (void)roll {
    for (int i = 0 ; i < 5; i++){
        Dice *diceObj = [[Dice alloc] init];
        [self.diceArr addObject: diceObj];
        NSLog(@"%@", [diceObj randomValue]);
    }
}

- (void)hold: (Dice *) dieToHold {
    
    [self.heldDiceSet addObject:dieToHold];
    NSLog(@"objects in heldDiceSet %lu", [self.heldDiceSet count]);
}

@end


