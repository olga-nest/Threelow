#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (void)roll {
    for (int i = 0 ; i < 5; i++){
        Dice *diceObj = [[Dice alloc] init];
        [self.diceArr addObject: diceObj];
        NSLog(@"%@", [diceObj randomValue]);
    }
}

@end
