//
//  main.m
//  bignerdranch
//
//  Created by Oliver Weber on 07.04.11.
//  Copyright 2011 nexiles GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{

    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    lesson_1();
    lesson_2();
    lesson_3();
    lesson_4();
    lesson_5();
    exercise_12();

    [pool drain];
    return 0;
}

