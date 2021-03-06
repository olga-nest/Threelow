#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        GameController *gameController = [[GameController alloc]init];
        InputHandler *inputHandler = [InputHandler new];
        
        while (gameOn == 1) {
            
            NSString *userInp = [inputHandler inputForPrompt:@"What Would you like to Do? \n - roll \n - hold/unhold \n - reset \n - quit"];
            
            if ([userInp isEqual: @"quit"] || [userInp isEqual: @"q"])  {
                gameOn = NO;
                continue;
            } else if ([userInp isEqual: @"roll"] || [userInp isEqual: @"r"]) {
                [gameController roll];
            }
                else if ([userInp isEqual: @"hold"] || [userInp isEqual:@"unhold"] || [userInp isEqual: @"h"]) {
                    NSString *userInp = [inputHandler inputForPrompt:@"Which Dice would you like to Hold? (number): "];
                    
                    //TODO: input chek
                    
                    Dice *diceAtIndex = [gameController.diceArr objectAtIndex:[userInp intValue] - 1];
                    [gameController hold:diceAtIndex];
                    
                } else if ([userInp isEqual: @"reset"]) {
                    [gameController resetDice];
                }
            
        }
    }
        
    return 0;
}
