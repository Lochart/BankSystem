//
//  ATM+CoreDataProperties.h
//  CoreDataExample
//
//  Created by Nikolay on 09.12.15.
//  Copyright © 2015 Nikolay. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "ATM.h"

NS_ASSUME_NONNULL_BEGIN

@interface ATM (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *address;
@property (nullable, nonatomic, retain) NSString *city;
@property (nullable, nonatomic, retain) NSString *historyClient;
@property (nullable, nonatomic, retain) NSDate *historyData;
@property (nullable, nonatomic, retain) NSNumber *identificationNumber;
@property (nullable, nonatomic, retain) NSNumber *ofCash;
@property (nullable, nonatomic, retain) NSString *street;
@property (nullable, nonatomic, retain) NSNumber *uidCity;
@property (nullable, nonatomic, retain) Bank *bank;

@end

NS_ASSUME_NONNULL_END
