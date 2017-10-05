#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        GameController *gameController = [[GameController alloc]init];
        
        
        while (gameOn == 1) {
            
            
            InputHandler *inputHandler = [InputHandler new];
            NSString *userInp = [inputHandler inputForPrompt:@"What Would you like to Do? \n - roll \n - hold \n - quit"];
            
            if ([userInp isEqual: @"quit"]) {
                gameOn = NO;
                continue;
            } else if ([userInp isEqual: @"roll"]) {
                [gameController roll];
            }
                else if ([userInp isEqual: @"hold"]) {
                    NSString *userInp = [inputHandler inputForPrompt:@"Which Dice would you like to Hold? (number): "];
                    Dice *diceAtIndex = [gameController.diceArr objectAtIndex:[userInp intValue] - 1];
                    [gameController hold:diceAtIndex];
                    
                }
        
            
   //    NSLog(@"%lu", (unsigned long)[diceArr count]);
            
            
        }
    }
        
    return 0;
}
