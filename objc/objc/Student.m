//
//  Student.m
//  objc
//
//  Created by Владислав Лихачев on 20.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import "Student.h"


@interface Student ()

@property (readwrite, nonatomic) int age;

@end


@implementation Student
@synthesize name = name;
@synthesize surname = surname;

- (void)setAge:(int)age {
    _age = age;
}
//Добавьте метод который будет увеличивать его возраст. (Да свойство age только для чтения).
- (void)incrementAge:(int)inc {
    [self setAge: self.age+inc];
}

- (NSString *)fullName {
    return [NSString stringWithFormat: @"%@ %@", surname, name];
}

-(id)initWithParams:(NSString *)name surname:(NSString *)surname age:(int)age
{
    if(self = [super init]) {
        self.name = name;
        self.surname = surname;
        [self setAge:age];
    }
    return self;
}

@end

@implementation Student (description)
//Переопределите метод description чтобы при выводе объекта в NSLog выводилась информация по всем его свойствам.
- (void) description {
    printf("Студента зовут %s и ему %d лет\n", [self.fullName UTF8String], _age);
    return;
}

@end
