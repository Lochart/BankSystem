//
//  Card+CoreDataProperties.h
//  CoreDataExample
//
//  Created by Nikolay on 09.12.15.
//  Copyright © 2015 Nikolay. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Card.h"

NS_ASSUME_NONNULL_BEGIN

@interface Card (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *emblemOfTheBank;
@property (nullable, nonatomic, retain) NSData *expirationInformation;
@property (nullable, nonatomic, retain) NSNumber *number;
@property (nullable, nonatomic, retain) NSNumber *uidCard;
@property (nullable, nonatomic, retain) Bank *bank;

@end

NS_ASSUME_NONNULL_END
