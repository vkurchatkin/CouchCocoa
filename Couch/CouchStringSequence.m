#import "CouchStringSequence.h"

@implementation CouchStringSequence

- (BOOL)canCompareTo:(CouchSequence *)sequence {
    return NO;
}

- (BOOL)isEqualToSequence:(CouchSequence *)sequence {
    return [self.sequenceString isEqualToString: [self stringSequence:sequence].sequenceString];
}

- (CouchStringSequence *)stringSequence:(CouchSequence *)sequence {
    if (![sequence isMemberOfClass:[CouchStringSequence class]]) {
        [NSException raise:@"Trying to compare sequences of different subclasses" format:@"Trying to compare %@ and %@", NSStringFromClass([self class]), NSStringFromClass([sequence class])];
    }

    return (CouchStringSequence *) sequence;
}

@end