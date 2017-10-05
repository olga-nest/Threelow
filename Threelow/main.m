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
            NSString *userInp = [inputHandler inputForPrompt:@"Roll the dice (roll/quit)"];
            
            if ([userInp isEqual: @"quit"]) {
                gameOn = NO;
                continue;
            } else if ([userInp isEqual: @"roll"]) {
                [gameController roll];
            }
                //else if ([userInp isEqual: @"hold"]) {
                //    [heldDiceSet addObject: dice];
                //}
        
            
   //    NSLog(@"%lu", (unsigned long)[diceArr count]);
            
            
        }
    }
        
    return 0;
}
