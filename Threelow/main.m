#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        NSMutableArray *diceArr = [[NSMutableArray alloc]init];
        NSMutableSet *heldDice = [[NSMutableSet alloc]init];
        
        while (gameOn == 1) {
            
            
            InputHandler *inputHandler = [InputHandler new];
            NSString *userInp = [inputHandler getUsersAnswer];
            
            if ([userInp isEqual: @"quit"]) {
                gameOn = NO;
                continue;
            } else if ([userInp isEqual: @"roll"]) {
            
                for (int i = 0 ; i < 5; i++){
                    Dice *diceObj = [[Dice alloc] init];
                    [diceArr addObject: diceObj];
                    NSLog(@"%@", [diceObj randomValue]);
                } else if ([userInp isEqual: @"hold"]) {
                    [heldDice addObject: dice];
                }
        
            
   //    NSLog(@"%lu", (unsigned long)[diceArr count]);
            }
            
        }
    }
        
    return 0;
}
