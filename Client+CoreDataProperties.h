//
//  Client+CoreDataProperties.h
//  CoreDataExample
//
//  Created by Nikolay on 09.12.15.
//  Copyright © 2015 Nikolay. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Client.h"

NS_ASSUME_NONNULL_BEGIN

@interface Client (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *dateBirth;
@property (nullable, nonatomic, retain) NSString *floor;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSString *patronymic;
@property (nullable, nonatomic, retain) NSString *surname;
@property (nullable, nonatomic, retain) NSString *placeBirth;
@property (nullable, nonatomic, retain) NSString *seriesPassport;
@property (nullable, nonatomic, retain) NSString *idPassport;
@property (nullable, nonatomic, retain) NSString *passportsAreIssued;
@property (nullable, nonatomic, retain) NSSet<Bank *> *banks;
@property (nullable, nonatomic, retain) Level *level;

@end

@interface Client (CoreDataGeneratedAccessors)

- (void)addBanksObject:(Bank *)value;
- (void)removeBanksObject:(Bank *)value;
- (void)addBanks:(NSSet<Bank *> *)values;
- (void)removeBanks:(NSSet<Bank *> *)values;

@end

NS_ASSUME_NONNULL_END
