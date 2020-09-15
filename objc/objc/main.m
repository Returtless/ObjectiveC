//
//  main.m
//  objc
//
//  Created by Владислав Лихачев on 07.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import <Foundation/Foundation.h>


void stringsPrinter(){
    NSMutableArray *stringsArray = [NSMutableArray array];
    while (true) {
        printf("Введите строку:\n");
        NSString *str = @"";
        
        char cstring[100];
        scanf("%s", cstring);
        
        str = [NSString stringWithCString:cstring encoding:1];
        
        if ([str  isEqual: @"stop"]) {
            break;
        } else {
            [stringsArray addObject:str];
        }
    }
    
    printf("Вывод введенных строк:\n");
    for (NSString *str in stringsArray) {
        printf("%s\n", [str UTF8String]);
    }
}

enum Operation {
    Sum = 1,
    Sub ,
    Multiplication,
    Division,
    Remaind
} ;
typedef enum Operation Operation;

int calculate(Operation method, int a, int b) {
    
    switch (method) {
        case Sum:
            return a + b;
            break;
        case Sub:
            return a - b;
            break;
        case Multiplication:
            return a * b;
            break;
        case Division:
            return a / b;
            break;
        case Remaind:
            return a % b;
            break;
            
        default:
            return 0;
            break;
    }
    
}

void calculator(){
    int a = 7;
    int b = 5;
    
    printf("Сумма чисел %d и %d равна %d\n", a, b, calculate(Sum ,7, 5));
    printf("Разность чисел %d и %d равна %d\n", a, b, calculate(Sub ,7, 5));
    printf("Произведение чисел %d и %d равна %d\n", a, b, calculate(Multiplication ,7, 5));
    printf("Деление числа %d на %d равно %d\n", a, b, calculate(Division ,7, 5));
    printf("Остаток от деления %d на %d равен %d\n", a, b, calculate(Remaind ,7, 5));
}

enum Genders{
    Male,
    Female
};

struct Human {
    NSString *Name;
    int Age;
    enum Genders Gender;
};

void printHumanInfo(struct Human human){
    printf("Имя: %s, возраст: %d, пол: %s\n", [human.Name UTF8String], human.Age, human.Gender == 0? "мужской": "женский");
}

void createHumans(){
    struct Human human1;
    human1.Name = @"Иван";
    human1.Age = 33;
    human1.Gender = Male;
    
    struct Human human2;
    human2.Name = @"Лидия";
    human2.Age = 22;
    human2.Gender = Female;
    
    struct Human human3;
    human3.Name = @"Марк";
    human3.Age = 54;
    human3.Gender = Male;
    
    printHumanInfo(human1);
    printHumanInfo(human2);
    printHumanInfo(human3);
}

int main(int argc, const char * argv[]) {
    
    //Создать массив строк и вывести его в консоль используя цикл.
    stringsPrinter();
    
    //Улучшить калькулятор с помощью перечислений, чтобы все возможные методы (сложение, вычитание, деление, умножение) передавались в виде состояния;
    calculator();
    
    //Создать структуру Human. Со свойствами “Name” (NSString), “Age”(NSInterger), “Gander”(NS_Enum). Создать несколько экземпляров структуры и вывести их в консоль.
    createHumans();
    
    return 0;
}


