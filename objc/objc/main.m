//
//  main.m
//  objc
//
//  Created by Владислав Лихачев on 07.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    int first = 0;
    int second = 0;
    
    printf("Задание 1\n");
    printf("Введите два числа для выполнения арифметических операций между ними\n");
    printf("Первое число: ");
    scanf("%d", &first);
    printf("Второе число: ");
    scanf("%d", &second);
    printf("%d+%d=%d\n", first, second, first+second);
    printf("%d-%d=%d\n", first, second, first-second);
    printf("%d*%d=%d\n", first, second, first*second);
    printf("%d/%d=%f\n", first, second, (float) first/second);
    
    printf("\nЗадание 2\n");
    printf("%d+%d=%d, %d-%d=%d, %d*%d=%d, %d/%d=%d\n",first, second, first+second, first, second, first-second,first, second,first*second,first, second, first/second);
    
    printf("\nЗадание 3\n");
    int randomNumber1 = arc4random_uniform(100);
    int randomNumber2 = arc4random_uniform(100);
    int randomNumber3 = arc4random_uniform(100);
    printf("Среднее арифметическое трех случайных чисел %d %d %d равно %f\n", randomNumber1, randomNumber2, randomNumber3, (float) (randomNumber1 + randomNumber2 + randomNumber3)/3);
    
    return 0;
}
