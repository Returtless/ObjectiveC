//
//  main.m
//  objc
//
//  Created by Владислав Лихачев on 07.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import <Foundation/Foundation.h>

int sum(int a, int b) {
    return a + b;
}

int sub(int a, int b) {
    return a - b;
}

int division(int a, int b) {
    return a / b;
}

int multiplication(int a, int b) {
    return a * b;
}

int remaind(int a, int b) {
    return a % b;
}

BOOL checkLetterInAlphabet(NSString* a) {
    NSString *alphabet = @"abcdefghijklmnopqrstuvwxyz";
    if ([alphabet rangeOfString:a].location == NSNotFound) {
        return false;
    } else {
        return true;
    }
}


int main(int argc, const char * argv[]) {
    NSString *letter = @"h";
    if (checkLetterInAlphabet(letter)) {
        printf("Буква %s содержится в английском алфавите\n", [letter UTF8String]);
    } else {
         printf("Буква %s не содержится в английском алфавите\n", [letter UTF8String]);
    }
    letter = @"п";
    if (checkLetterInAlphabet(letter)) {
        printf("Буква %s содержится в английском алфавите\n", [letter UTF8String]);
    } else {
         printf("Буква %s не содержится в английском алфавите\n", [letter UTF8String]);
    }
    
    int a = 7;
    int b = 5;
    printf("Сумма чисел %d и %d равна %d\n", a, b, sum(7, 5));
    printf("Разность чисел %d и %d равна %d\n", a, b, sub(7, 5));
    printf("Произведение чисел %d и %d равна %d\n", a, b, multiplication(7, 5));
    printf("Деление числа %d на %d равн %d\n", a, b, division(7, 5));
    printf("Остаток от деления %d на %d равен %d\n", a, b, remaind(7, 5));
    return 0;
}


