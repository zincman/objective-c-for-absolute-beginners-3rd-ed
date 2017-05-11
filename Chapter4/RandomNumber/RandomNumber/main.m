//
//  main.m
//  RandomNumber
//
//  Created by Derek on 11/05/2017.
//  Copyright © 2017 Derek. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int randomNumber = 1;
        int userGuess = 1;
        BOOL continueGuessing = YES;
        BOOL keepPlaying = YES;
        char yesNo = ' ';
        
        while (keepPlaying) {
            randomNumber = (arc4random() % 101);
//            NSLog(@"Random number: %d", arc4random());
            NSLog(@"The random number to guess is: %d", randomNumber);
            while (continueGuessing) {
                NSLog(@"Pick a number between 0 and 100. ");
                scanf("%d", &userGuess);
                fgetc(stdin);       // remove CR/LF i.e extra character
                if(userGuess == randomNumber) {
                    continueGuessing = NO;
                    NSLog(@"Correct number!");
                }
                else if (userGuess > randomNumber) {
                    NSLog(@"Your guess is too high");
                }
                else {
                    NSLog(@"Your guess is too low");
                }
                NSLog(@"The user guessed %d", userGuess);
            }
            NSLog(@"Play Again? Y or N");
            yesNo = fgetc(stdin);
            if(yesNo == 'N' || yesNo == 'n') {
                keepPlaying = FALSE;
            }
            continueGuessing = TRUE;
        }
    }
    return 0;
}
