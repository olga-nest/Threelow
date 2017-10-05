#import "InputHandler.h"

@implementation InputHandler

-(NSString *)inputForPrompt:(NSString *)promptString {
    NSLog(@"%@", promptString);
    
    char answerCString[255];
    
    fgets(answerCString, 255, stdin);
    
    NSString *result = [NSString stringWithCString:answerCString
                                          encoding:NSUTF8StringEncoding];
    
    //removes new line and white spaces
    //   NSCharacterSet *resultSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *parsedResult = [result stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return parsedResult;
    
}

@end
