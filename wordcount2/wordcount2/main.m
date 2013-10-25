//
//  main.m
//  wordcount2
//
//  Created by David Dvergsten on 6/24/13.
//  Copyright (c) 2013 Ian And David Dvergsten. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    if(argc == 1){
        NSLog(@"you need to provide a full filename");
        return (1);
    }
    FILE *wordFile = fopen("/tmp/words.txt", "r");
    char word[100];
    
    while(fgets(word, 100, wordFile)){
        //strip off the trailing \n
        word[strlen(word) - 1] = '\0';
        
        NSLog(@"%s is %d characters long",
              word, (int)strlen(word));
    }
    fclose(wordFile);
    return(0);
}

