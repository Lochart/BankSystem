//
//  Bank.h
//  CoreDataExample
//
//  Created by Nikolay on 09.12.15.
//  Copyright © 2015 Nikolay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ATM, Card, Client, Product, Staff;

NS_ASSUME_NONNULL_BEGIN

@interface Bank : NSManagedObject

// Insert code here to declare functionality of your managed object subclass

@end

NS_ASSUME_NONNULL_END

#import "Bank+CoreDataProperties.h"
