//
//  Level+CoreDataProperties.h
//  CoreDataExample
//
//  Created by Nikolay on 09.12.15.
//  Copyright © 2015 Nikolay. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Level.h"

NS_ASSUME_NONNULL_BEGIN

@interface Level (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *client;
@property (nullable, nonatomic, retain) NSNumber *reducedRate;
@property (nullable, nonatomic, retain) NSSet<Client *> *clients;

@end

@interface Level (CoreDataGeneratedAccessors)

- (void)addClientsObject:(Client *)value;
- (void)removeClientsObject:(Client *)value;
- (void)addClients:(NSSet<Client *> *)values;
- (void)removeClients:(NSSet<Client *> *)values;

@end

NS_ASSUME_NONNULL_END
