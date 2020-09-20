//
//  Magistrant.m
//  objc
//
//  Created by Владислав Лихачев on 20.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import "Magistrant.h"

@implementation Magistrant
@synthesize age = age;

-(id)initWithParams:(NSString *)name surname:(NSString *)surname age:(int)age endedSpeciality:(NSString *)endedSpeciality
{
    if(self = [super init]) {
        self.name = name;
        self.surname = surname;
        self.age = age;
        self.endedSpeciality = endedSpeciality;
    }
    return self;
}
@end


@implementation Magistrant (description)
//Переопределите метод description чтобы при выводе объекта в NSLog выводилась информация по всем его свойствам.
- (void) description {
    printf("Магистранта зовут %s, ему %d лет и он окончил специальность %s\n", [self.fullName UTF8String], self.age, [self.endedSpeciality UTF8String]);
    return;
}

@end
