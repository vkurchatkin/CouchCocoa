#import "CouchSequence.h"

@implementation CouchSequence

- (id)initWithObject:(id)object {
    return nil;
}

- (BOOL)ordered {
    return NO;
}

- (BOOL)isLessOrEqual:(CouchSequence *)sequence {
    return NO;
}

- (BOOL)isLessThen:(CouchSequence *)sequence {
    return NO;
}

- (BOOL)isGreaterOrEqual:(CouchSequence *)sequence {
    return NO;
}

- (BOOL)isGreaterThen:(CouchSequence *)sequence {
    return NO;
}

- (BOOL)isEqualToSequence:(CouchSequence *)sequence {
    return NO;
}

- (BOOL)isEqualTo:(id)sequence {
    if (![sequence isKindOfClass:[CouchSequence class]])
        return NO;

    return [self isEqualToSequence:sequence];
}

@end