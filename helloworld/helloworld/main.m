//
//  main.m
//  helloworld
//
//  Created by David Dvergsten on 6/11/13.
//  Copyright (c) 2013 Ian And David Dvergsten. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL areIntsDifferent(int thing1, int thing2)
{
    if(thing1 == thing2){
        return NO;
    }else{
        return YES;
    }
}//are ints different

NSString *boolString(BOOL yesNo)
{
    if(yesNo == NO){
        return (@"NO");
    }else{
        return (@"YES");
    }
}//bool string


int main(int argc, const char * argv[])
{
    BOOL areTheyDifferent;
    areTheyDifferent = areIntsDifferent(5,5);
    NSLog(@"are %d and %d different %@",
           5, 5, boolString(areTheyDifferent));
    areTheyDifferent = areIntsDifferent(23, 42);
    
    NSLog(@"are %d and %d different? %@",
          23, 42, boolString(areTheyDifferent));
    return 0;
}

