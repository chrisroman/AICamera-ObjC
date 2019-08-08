//
//  Copyright © 2019年 Vizlab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
#if defined(ENABLE_COVERAGE_PROFILING)
      {
        extern void __llvm_profile_set_filename(char *filenamep);

        NSArray *myPathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSLog(@"Document(s) paths: %@", myPathList);

        NSString *myPath    = [myPathList  objectAtIndex:0];

        NSString *profile = [NSString stringWithFormat:@"%@/profile.raw", myPath];
        NSLog(@"Output profile into: %@", profile);

        __llvm_profile_set_filename((char*)[profile UTF8String]);
      }
#endif
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
