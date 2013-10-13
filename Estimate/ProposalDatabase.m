//
//  ProposalDatabase.m
//  Estimate
//
//  Created by Daniel Hahn on 10/3/13.
//  Copyright (c) 2013 StarkWeather. All rights reserved.
//

#import "ProposalDatabase.h"
#import "Proposal.h"


@implementation ProposalDatabase


+ (NSString *)getPrivateDocsDir {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    documentsDirectory = [documentsDirectory stringByAppendingPathComponent:@"Private Documents"];
    
    NSError *error;
    [[NSFileManager defaultManager] createDirectoryAtPath:documentsDirectory withIntermediateDirectories:YES attributes:nil error:&error];
    
    return documentsDirectory;
    
}

+ (NSMutableArray *)loadProposals {
    
    // Get private docs dir
    NSString *documentsDirectory = [ProposalDatabase getPrivateDocsDir];
    //NSLog(@"Loading proposal from %@", documentsDirectory);
    
    // Get contents of documents directory
    NSError *error;
    NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:documentsDirectory error:&error];
    if (files == nil) {
        NSLog(@"Error reading contents of documents directory: %@", [error localizedDescription]);
        return nil;
    }
    
    // Create Proposal for each file
    NSMutableArray *retval = [NSMutableArray arrayWithCapacity:files.count];
    for (NSString *file in files) {
        if ([file.pathExtension compare:@"proposal" options:NSCaseInsensitiveSearch] == NSOrderedSame) {
            NSString *fullPath = [documentsDirectory stringByAppendingPathComponent:file];
            Proposal *doc = [[Proposal alloc] initWithDocPath:fullPath];
            [retval addObject:doc];
        }
    }
    
    return retval;
    
}

+ (NSString *)nextProposalPath {
    
    // Get private docs dir
    NSString *documentsDirectory = [ProposalDatabase getPrivateDocsDir];
    
    // Get contents of documents directory
    NSError *error;
    NSArray *files = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:documentsDirectory error:&error];
    if (files == nil) {
        NSLog(@"Error reading contents of documents directory: %@", [error localizedDescription]);
        return nil;
    }
    
    // Search for an available name
    int maxNumber = 0;
    for (NSString *file in files) {
        if ([file.pathExtension compare:@"proposal" options:NSCaseInsensitiveSearch] == NSOrderedSame) {
            NSString *fileName = [file stringByDeletingPathExtension];
            maxNumber = MAX(maxNumber, fileName.intValue);
        }
    }
    
    // Get available name
    NSString *availableName = [NSString stringWithFormat:@"%d.proposal", maxNumber+1];
    NSLog(@"path %@", availableName);
    return [documentsDirectory stringByAppendingPathComponent:availableName];
    

}
@end
