//
//  Magistrant.h
//  objc
//
//  Created by Владислав Лихачев on 20.09.2020.
//  Copyright © 2020 Vladislav Likhachev. All rights reserved.
//

#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

@interface Magistrant : Student
- (instancetype)initWithParams:(NSString *)name surname:(NSString *)surname age:(int)age endedSpeciality:(NSString *)endedSpeciality;

@property (nonatomic, readwrite) int age;
@property (nonatomic, strong) NSString *endedSpeciality;

@end

NS_ASSUME_NONNULL_END
