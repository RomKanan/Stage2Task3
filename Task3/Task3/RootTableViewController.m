//
//  RootTableViewController.m
//  Task3
//
//  Created by Roma on 6/17/19.
//  Copyright © 2019 Roman. All rights reserved.
//

#import "RootTableViewController.h"
#import "DetailsViewController.h"
#import "ImageCell.h"


@interface RootTableViewController ()
//@property (strong, nonatomic) NSArray<RKImage *> *data;
@end

static NSString *cellID = @"ImageCell";


@implementation RootTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:ImageCell.self forCellReuseIdentifier:cellID];
    self.title = @"Images with URLs";
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    [self loadPresentedCells];
    
}

-(void)loadPresentedCells{
    NSArray *presentedIndexes = [self.tableView indexPathsForVisibleRows];
    for (NSIndexPath *index in presentedIndexes){
        RKImage *image = [self.data objectAtIndex:index.row];
        if (!image.IsLoaded && !image.IsLoading) {
            [image beginUploadImage];
        }
    }
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ImageCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];

    cell.image = [self.data objectAtIndex:indexPath.row];
    
   // [[self.data objectAtIndex:indexPath.row] beginUploadImage];
    [cell layoutSubviews];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailsViewController *detailsController = [[DetailsViewController alloc] initWithImage:[self.data objectAtIndex:indexPath.row]];
    [self.navigationController pushViewController:detailsController animated:YES];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    if (!decelerate) {
        [self scrollingFinish];
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    [self scrollingFinish];
}

- (void)scrollingFinish {
    [self loadPresentedCells];
}

@end
