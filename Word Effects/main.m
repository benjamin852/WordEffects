//
//  main.m
//  Word Effects
//
//  Created by Ben Weinberg on 2017-01-09.
//  Copyright © 2017 Ben Weinberg. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //225 unit long array of characters
        char inputChars [255];
        printf("Input a string:");

        
        //limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        //print as a c string
        printf("your string is %s\n", inputChars);
        
        //convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        //print NSString object
        NSLog(@"Input was: %f", [inputString floatValue]);
        NSLog (@"%@", [inputString stringByAppendingString:@"eh"]);
        
        if ([inputString hasSuffix:@"?"])
            NSLog(@"I dont know");
        
        if ([inputString hasSuffix:@"!"])
            NSLog (@"Whoa calm down");
        
        NSLog (@"%@", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
        
        
        
        
         NSLog (@"Input a string %@", inputString.uppercaseString);
         NSLog (@"Input a string %@", inputString.lowercaseString);
        
        
    }
    return 0;
}
