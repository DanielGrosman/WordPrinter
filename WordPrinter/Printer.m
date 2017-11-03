//
//  Printer.m
//  WordPrinter
//
//  Created by Daniel Grosman on 2017-11-02.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Printer.h"

@implementation Printer

-(void)printWord:(NSString *)word {
    int printer = [self.delegate printer:self numberOfTimesToPrint:word];
  
    if([self.delegate printStar]){
        for (int i = 0; i<printer; i++) {
            NSLog(@"✮%@✮", word);
        }
    }
    else{
        for (int i = 0; i<printer; i++) {
            NSLog(@"%@", word);
        }
}
}

@end
