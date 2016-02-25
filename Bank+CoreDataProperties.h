//
//  Bank+CoreDataProperties.h
//  CoreDataExample
//
//  Created by Nikolay on 09.12.15.
//  Copyright © 2015 Nikolay. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Bank.h"

NS_ASSUME_NONNULL_BEGIN

@interface Bank (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *city;
@property (nullable, nonatomic, retain) NSNumber *color;
@property (nullable, nonatomic, retain) NSData *date;
@property (nullable, nonatomic, retain) NSString *logoype;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *uid;
@property (nullable, nonatomic, retain) NSSet<ATM *> *atms;
@property (nullable, nonatomic, retain) Card *cards;
@property (nullable, nonatomic, retain) NSSet<Client *> *clients;
@property (nullable, nonatomic, retain) NSSet<Product *> *products;
@property (nullable, nonatomic, retain) Staff *staffs;

@end

@interface Bank (CoreDataGeneratedAccessors)

- (void)addAtmsObject:(ATM *)value;
- (void)removeAtmsObject:(ATM *)value;
- (void)addAtms:(NSSet<ATM *> *)values;
- (void)removeAtms:(NSSet<ATM *> *)values;

- (void)addClientsObject:(Client *)value;
- (void)removeClientsObject:(Client *)value;
- (void)addClients:(NSSet<Client *> *)values;
- (void)removeClients:(NSSet<Client *> *)values;

- (void)addProductsObject:(Product *)value;
- (void)removeProductsObject:(Product *)value;
- (void)addProducts:(NSSet<Product *> *)values;
- (void)removeProducts:(NSSet<Product *> *)values;

@end

NS_ASSUME_NONNULL_END
