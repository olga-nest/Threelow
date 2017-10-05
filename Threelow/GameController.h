#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property NSMutableArray *diceArr;
@property NSMutableSet *heldDiceSet;


- (void)roll;

@end
