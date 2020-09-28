//
//  Printer.m
//  objc
//
//  Created by Владислав Лихачев on 28.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import "Printer.h"

typedef void (^PrinterBlock)(NSObject * obj);

@implementation Printer

PrinterBlock str = ^(NSObject * obj) {
    printf("Печать строки: %s\n", [[obj description] UTF8String]);
};

PrinterBlock integer = ^(NSObject * obj) {
    printf("Печать целого числа: %ld\n", (long)[(NSNumber *)obj integerValue]);
};

PrinterBlock date = ^(NSObject * obj) {
    printf("Сегодня: %s\n", [((NSDate*) obj).description UTF8String]);
};

PrinterBlock array = ^(NSObject * obj) {
    printf("Печать элементов массива:\n");
    for (int i = 0; i<[(NSArray *)obj count]; i++){
        [Printer print:((NSArray *)obj)[i]];
    }
    
};

PrinterBlock dictionary = ^(NSObject * obj) {
    printf("Печать элементов словаря:\n");
    NSArray *keys = [((NSDictionary *)obj) allKeys];
    for (int i = 0; i<[keys count]; i++){
        printf("Печать %d пары словаря:\n", i);
        [Printer print:keys[i]];
        [Printer print:((NSDictionary *)obj)[keys[i]]];
    }
    
};

PrinterBlock set = ^(NSObject * obj) {
    printf("Печать элементов набора:\n");
    //порядок из набора по сути неважен, можем вывести параллельно
    //я в курсе что оно выведет вообще вразброс с другими выводами, но запариваться в таких примерах както неохота))
    dispatch_queue_t queue = dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0);
    NSEnumerator *enumerator = [(NSSet *)obj objectEnumerator];
    id element;
    while (element =[ enumerator nextObject]) {
        dispatch_async(queue, ^{
            [Printer print:element];
        });
    }
};

+(void)print:(NSObject *) obj {
    if ( [obj isKindOfClass:[NSString class]] ) {
        str(obj);
    } else if ( [obj isKindOfClass:[NSDate class]] ) {
        date(obj);
    } else if ( [obj isKindOfClass:[NSArray class]] ) {
        array(obj);
    } else if ( [obj isKindOfClass:[NSDictionary class]] ) {
        dictionary(obj);
    } else if ( [obj isKindOfClass:[NSSet class]] ) {
        set(obj);
    } else {
        integer(obj);
    }
    
}

@end
