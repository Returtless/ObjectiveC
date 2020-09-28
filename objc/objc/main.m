//
//  main.m
//  objc
//
//  Created by Владислав Лихачев on 07.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Printer.h"

int main(int argc, const char * argv[]) {
    //добавим асинхронный вывод, неважно когда он произойдет
    dispatch_queue_t back = dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0);
    dispatch_async(back, ^{
        [Printer print:@"privet"];
    });
    dispatch_async(back, ^{
        [Printer print:[NSNumber numberWithInteger: 100000]];
    });

    dispatch_sync(back, ^{
       
        [Printer print: @[@"первый элемент", @"второй элемент"]];
         [Printer print: @[[NSNumber numberWithInteger:333], [NSNumber numberWithInteger:222]]];
         [Printer print: [NSSet setWithArray:@[@"один", @"два", @"три"]]];
         [Printer print: @{ @"ключ1": @"значение1",@"ключ2": @"значение2"}];
    });
      [Printer print: [NSDate dateWithTimeIntervalSinceNow:0]];
    return 0;
}
