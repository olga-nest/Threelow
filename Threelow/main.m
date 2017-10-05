#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        NSMutableArray *diceArr = [[NSMutableArray alloc]init];
        
        while (gameOn == 1) {
            
            
            InputHandler *inputHandler = [InputHandler new];
            NSString *userInp = [inputHandler getUsersAnswer];
            
            if ([userInp isEqual: @"quit"]) {
                gameOn = NO;
                continue;
            } else {
            
        Dice *firstDiceObj = [[Dice alloc]init];
        [diceArr addObject:firstDiceObj];
        NSLog(@"%@", [firstDiceObj randomValue]);
        
        Dice *secondDiceObj = [[Dice alloc]init];
        [diceArr addObject:secondDiceObj];
        NSLog(@"%@", [secondDiceObj randomValue]);
        
        Dice *thirdDiceObj = [[Dice alloc]init];
        [diceArr addObject:thirdDiceObj];
        NSLog(@"%@", [thirdDiceObj randomValue]);
        
        Dice *fourthDiceObj = [[Dice alloc]init];
        [diceArr addObject:fourthDiceObj];
        NSLog(@"%@", [fourthDiceObj randomValue]);
        
        Dice *fifthDiceObj = [[Dice alloc]init];
        [diceArr addObject:firstDiceObj];
        NSLog(@"%@", [fifthDiceObj randomValue]);
            
 //       NSLog(@"%lu", (unsigned long)[diceArr count]);
            }
            
        }
    }
        
    return 0;
}
