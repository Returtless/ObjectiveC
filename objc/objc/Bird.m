//
//  Bird.m
//  objc
//
//  Created by Владислав Лихачев on 23.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import "Bird.h"

@implementation Bird

- (instancetype)initWithType:(NSString *)type AndChild: (Bird *) child {
    self = [super init];
    if (self) {
        [type retain];
        [type release];
        _type = type;
        [child retain];
        [child release];
        _child = child;
        _state = child == NULL ? Child : Parent;
        NSLog(@"Вид птицы - %@, статус - %@", type, _state == (Child) ? @"Ребенок" : @"Родитель");
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc птицы - %@", _type);
    [_type release];
    [super dealloc];
}

@end
