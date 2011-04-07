//
//  lesson_1.m
//  bignerdranch
//
//  Created by Oliver Weber on 07.04.11.
//  Copyright 2011 nexiles GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreServices/CoreServices.h>
#import <CoreFoundation/CoreFoundation.h>

// for lesson_1
struct person {
    unsigned int age;
    char *hairColor;
    char *eyeColor;
    char *name;
};

// struct
// NSLog
int lesson_1() {
    NSLog(@"lesson_1:");
    struct person stefan;
    stefan.age = 38;
    stefan.hairColor = "brown";
    stefan.eyeColor = "brown";
    stefan.name = "seletz";
    NSLog(@"%s has %s hair, %s eyes and an age of %d years.",stefan.name,stefan.hairColor,stefan.eyeColor,stefan.age);

    return 0;
}

// NSString
// BOOL
void lesson_2() {
    NSLog(@"lesson_2:");
    NSString *s = @"123";
    NSNumber *foo = [NSNumber numberWithInt:5];
    
    NSLog(@"foo=%@", foo);
    NSLog(@"foo=%@", [foo stringValue]);
    
    for (int i = -2 ; i<3 ; i++) {
        NSLog(@"%d is %s",i,i==YES?"yes":"no");
    }
    s = [NSString stringWithFormat:@"the difference between %d and %d is %d", 5, 6, 6-5];
    NSLog(@"swF: %@ - length: %lu",s,[s length]);
}

// for lesson_3
struct bounds {
    int left;
    int bottom;
    int right;
    int top;
};

// for lesson_3
@interface Circle : NSObject {
@private
    NSString *cFillColor;
    struct bounds *b;
}
- (void)setFillColor:(NSString*)fillColor;
- (void)setBounds:(struct bounds*) bounds;
- (void)draw;
@end

// for lesson_3
@implementation Circle

- (void)setBounds:(struct bounds*) bounds {
    b = bounds;
    NSLog(@"bounds set to %d %d %d %d",b->left,b->bottom,b->right,b->top);
}
- (void)setFillColor:(NSString *)fillColor {
    cFillColor = fillColor;
    NSLog(@"color set to %@",cFillColor);
}
- (void)draw {
    int i = 0;
    i++;
    NSLog(@"drawing...");
}
@end

// OOP
void lesson_3() {
    NSLog(@"lesson_3:");
    Circle *circle;
    circle = [Circle new];
    [circle setFillColor:@"gelb"];
    
    struct bounds b;
    b.left = 5;
    b.bottom = 5;
    b.right = 15;
    b.top = 15;
    
    [circle setBounds: &b];
}

// NSRange
// NSRect
void lesson_4() {
    NSLog(@"lesson_4:");
    NSRange range = {14,17};
    NSLog(@"length: %lu",range.length);
    NSLog(@"location: %lu",range.location);
    
    NSRect nsr = NSMakeRect(1.5, 7.3, 10, 20);
    NSLog(@"origin: %f/%f - size: %f/%f",nsr.origin.x,nsr.origin.y,nsr.size.width,nsr.size.height);
}

// NSMutableArray
// NSDictionary
// NSEnumerator
void lesson_5() {
    NSLog(@"lesson_4:");
    NSMutableArray *a;
    a = [NSMutableArray arrayWithCapacity:165];
    for (int i=0;i<100;i++) {
        NSArray *nsa = [NSArray array];
        [a addObject:nsa];
        long nsn = random();
        NSLog(@"check random %ld, array size: %lu",nsn,[a count]);
    }
    NSDictionary *names;
    names = [NSDictionary dictionaryWithObjectsAndKeys: @"Admin", @"oweber", @"GF", @"seletz", nil];
    NSLog(@"dict has %lu elements",[names count]);
    NSEnumerator *ken = [names keyEnumerator];
    
    id myID;
    while (myID = [ken nextObject]) {
        NSLog(@"value for key '%@' is '%@'",myID,[names valueForKey:myID]);
    }
}

// Exercise 12
// FileWalker
void exercise_12() {
    // show first 20 entrys of file system
    
}