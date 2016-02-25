//
//  ViewController.m
//  CoreDataExample
//
//  Created by Nikolay on 07.11.15.
//  Copyright © 2015 Nikolay. All rights reserved.
//

#import "AppDelegate.h"
#import "Client.h"
#import "RegistrationClientViewController.h"

@interface RegistrationClientViewController ()

@property (weak, nonatomic) IBOutlet UITextField *enterName;
@property (weak, nonatomic) IBOutlet UITextField *enterSurname;
@property (weak, nonatomic) IBOutlet UITextField *enterPatronymic;

@property (strong) NSManagedObject *client;

- (IBAction)addClient:(id)sender;

@end


@implementation RegistrationClientViewController

-(NSManagedObjectContext *)managedObjectContext{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication]delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return  context;
}

- (void)viewDidLoad {
    [super viewDidLoad];    
}

- (IBAction)addClient:(id)sender {
    [self saveNewClient];
    [self message];
}

-(void)saveNewClient
{
    AppDelegate *appDelegate = [self appDelegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];

    if (self.client) {
        [self.client setValue:self.enterName.text forKey:@"name"];
        [self.client setValue:self.enterSurname.text forKey:@"surname"];
        [self.client setValue:self.enterPatronymic.text forKey:@"patronymic"];
    } else {
    Client *newClient = [NSEntityDescription insertNewObjectForEntityForName:@"Client" inManagedObjectContext:context];
//        UIAlertView *errorMassage = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Please fill in all required fields" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
//        [errorMassage show];
    
    [newClient setValue:self.enterName.text forKey:@"name"];
    [newClient setValue:self.enterSurname.text forKey:@"surname"];
    [newClient setValue:self.enterPatronymic.text forKey:@"patronymic"];
    }
//    [client setValue:self.enterDateOfBirth.text forKey:@"dateBirth"];
//    [client setValue:self.enterAge.text forKey:@"age"];
    
    
    [appDelegate saveContext];
}

-(void)message{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Congratulations"
                                            message:@"Client registration is successful, please do not forget to give the client all the necessary information"
                                                delegate:nil
                                          cancelButtonTitle:@"Ok"
                                          otherButtonTitles:nil];
    [alert show];
}

//-(NSArray *)clients
//{
//    AppDelegate *appDelegate = [self appDelegate];
//    NSManagedObjectContext *context = [appDelegate managedObjectContext];
//    
//    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Client"];
//    
//    NSError *error = nil;
//    NSArray *clients = [context executeFetchRequest:request error:&error];
//    
//    return clients;
//}

-(AppDelegate *)appDelegate
{
    return [[UIApplication sharedApplication]delegate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    

}
@end
