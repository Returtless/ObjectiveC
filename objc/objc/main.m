//
//  main.m
//  objc
//
//  Created by Владислав Лихачев on 07.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    Student *student1 = [[Student alloc] initWithParams:@"Василий" surname:@"Пупкин" age:24];
    [student1 description];
    
    [student1 incrementAge:3];
    
    [student1 description];
    
    Student *student2 = [[Student alloc] initWithParams:@"Лариса" surname:@"Иванова" age:19];
    [student2 description];
    
    Student *student3 = [[Student alloc] initWithParams:@"Иноккентий" surname:@"Петров" age:21];
    [student3 description];
    return 0;
}
