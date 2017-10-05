#import "InputHandler.h"

@implementation InputHandler

-(NSString *)getUsersAnswer {
    char answerCString;
    
    printf("Roll the dice (roll/quit) >>>");
    fgets(&answerCString, 255, stdin);
    
    NSString *result = [NSString stringWithCString:&answerCString
                                          encoding:NSUTF8StringEncoding];
    
    
    //removes new line and white spaces
    NSCharacterSet *resultSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *usersInp = [result stringByTrimmingCharactersInSet:(NSCharacterSet *)resultSet];

    return usersInp;
}

@end
