#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property NSMutableArray *diceArr;
@property NSMutableArray *heldDiceSet;
@property int scoreVar;


- (void)roll;
- (void)hold: (Dice *) dieToHold;
- (void)resetDice;
- (int)score;

@end
