//
//  ClientTableViewController.m
//  CoreDataExample
//
//  Created by Nikolay on 06.12.15.
//  Copyright © 2015 Nikolay. All rights reserved.
//

#import "ClientTableViewController.h"
#import "Client.h"
#import "RegistrationClientViewController.h"


@interface ClientTableViewController ()
@property (nonatomic) NSMutableArray *clients;
@property (nonatomic) NSMutableArray *filteredClients;
@property (nonatomic) BOOL isFiltered;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation ClientTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{

    if (searchText.length == 0) {
        self.isFiltered = NO;
    } else {
        self.isFiltered =YES;
        self.filteredClients = [[NSMutableArray alloc]init];
        for (NSString *str in self.clients) {
            [self.filteredClients addObject:str];
        }
    }
    [self.tableView reloadData];
}

-(NSManagedObjectContext *)managedObjectContext{
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication]delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return  context;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)viewWillAppear:(BOOL)animated{
    NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]initWithEntityName:@"Client"];
    self.clients = [[managedObjectContext executeFetchRequest:fetchRequest error:nil]mutableCopy];

    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    if (self.isFiltered) {
        return self.filteredClients.count;
    }
    return self.clients.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIndetifer = @"ClientCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndetifer forIndexPath:indexPath];
    
    
    if (!self.isFiltered) {
        NSManagedObject *client = [self.clients objectAtIndex:indexPath.row];
        [cell.textLabel setText:[NSString stringWithFormat:@"%@ %@ %@",
                                 [client valueForKey:@"name"],
                                 [client valueForKey:@"surname"],
                                 [client valueForKey:@"patronymic"]]];
    } else {
        NSManagedObject *filteredClients = [self.filteredClients objectAtIndex:indexPath.row];
        [cell.textLabel setText:[NSString stringWithFormat:@"%@ %@ %@",
                                 [filteredClients valueForKey:@"name"],
                                 [filteredClients valueForKey:@"surname"],
                                 [filteredClients valueForKey:@"patronymic"]]];

    }
//    [cell.detailTextLabel setText:[client valueForKey:@"company"]];
    
    return cell;
}



- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSManagedObjectContext *context = [self managedObjectContext];
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [context deleteObject:[self.clients objectAtIndex:indexPath.row]];
        
        NSError *error = nil;
        if (![context save:&error]) {
            NSLog(@"Can't Delete! %@ %@", error, [error localizedDescription]);
            return;
        }
        
        [self.clients removeObjectAtIndex:indexPath.row];
        [self.tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
    [searchBar setShowsCancelButton:YES animated:YES];
 }

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    [searchBar resignFirstResponder];
    [searchBar setShowsCancelButton:NO animated:YES];
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
