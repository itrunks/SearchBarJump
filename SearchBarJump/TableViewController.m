//
//  TableViewController.m
//  SearchBarJump
//
//  Created by Eyal Cohen on 3/9/14.
//  Copyright (c) 2014 Eyal. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController () {
    NSInteger _rows;
}

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    _rows = 3;
    
   // [self hideSearchBar];
}

-(void)viewWillAppear:(BOOL)animated{
     [super viewWillAppear:animated];
  
     [self.tableView setContentOffset:CGPointMake(0,44) animated:NO];
    // self.tableView.tableHeaderView = self.searchBar;
   
 
}

-(void)viewDidDisappear:(BOOL)animated{
    
      //self.tableView.tableHeaderView = nil;
    //[self.tableView.tableHeaderView removeFromSuperview];
    [self.tableView setContentInset:UIEdgeInsetsMake(-0.3, 0, 0, 0)];
    
    [super viewDidAppear:animated];
}

- (void)hideSearchBar {
    // hide search bar
    [self.tableView setContentOffset:CGPointMake(0,44) animated:NO];
}

- (IBAction)toggleCount:(UIBarButtonItem *)sender {
    if (_rows == 20) {
        _rows = 3;
    } else {
        _rows = 20;
    }
    [self.tableView reloadData];
}

- (IBAction)hideBar:(UIBarButtonItem *)sender {
    [self hideSearchBar];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _rows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = @"cell";
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
