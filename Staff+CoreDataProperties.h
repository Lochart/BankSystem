//
//  Staff+CoreDataProperties.h
//  CoreDataExample
//
//  Created by Nikolay on 09.12.15.
//  Copyright © 2015 Nikolay. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Staff.h"

NS_ASSUME_NONNULL_BEGIN

@interface Staff (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *dateOfBirth;
@property (nullable, nonatomic, retain) NSString *surname;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *patronymic;
@property (nullable, nonatomic, retain) NSString *position;
@property (nullable, nonatomic, retain) NSString *status;
@property (nullable, nonatomic, retain) NSString *wage;
@property (nullable, nonatomic, retain) NSString *floor;
@property (nullable, nonatomic, retain) NSString *idPassport;
@property (nullable, nonatomic, retain) NSString *placeBirth;
@property (nullable, nonatomic, retain) NSString *seriesPassport;
@property (nullable, nonatomic, retain) NSString *passportsAreIssued;
@property (nullable, nonatomic, retain) Bank *bank;

@end

NS_ASSUME_NONNULL_END
