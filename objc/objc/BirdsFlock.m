//
//  BirdsFlock.m
//  objc
//
//  Created by Владислав Лихачев on 23.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import "BirdsFlock.h"
#import "Bird.h"

@implementation BirdsFlock

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Создана стая птиц");
    }
    return self;
}

- (void)configWithBirds:(NSArray *)birds {
    self = [super init];
    if (self) {
        [birds retain];
        [birds release];
        _birds = birds;
        for (Bird *bird in birds) {
            NSLog(@"В стаю приняли птицу типа (%@)", bird.type);
        }
    }
}

- (void)remove {
    NSLog(@"Очистка стаи");
    for (Bird *bird in _birds) {
        [bird release];
    }
    [_birds release];
}

- (void)dealloc {
    [self remove];
    NSLog(@"Удаление стаи");
    [super dealloc];
}

@end
