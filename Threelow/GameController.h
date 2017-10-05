#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property NSMutableArray *diceArr;
@property NSMutableSet *heldDiceSet;


- (void)roll;
- (void)hold: (Dice *) dieToHold;

@end
