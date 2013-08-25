#import "CouchNumericSequence.h"

@implementation CouchNumericSequence

- (BOOL)canCompareTo:(CouchSequence *)sequence {
    return [sequence isMemberOfClass:[self class]];
}

- (BOOL)isLessOrEqual:(CouchSequence *)sequence {
    return self.sequenceNumber <= [self numericSequence:sequence].sequenceNumber;
}

- (BOOL)isLessThen:(CouchSequence *)sequence {
    return self.sequenceNumber < [self numericSequence:sequence].sequenceNumber;
}

- (BOOL)isGreaterOrEqual:(CouchSequence *)sequence {
    return self.sequenceNumber >= [self numericSequence:sequence].sequenceNumber;
}

- (BOOL)isGreaterThen:(CouchSequence *)sequence {
    return self.sequenceNumber > [self numericSequence:sequence].sequenceNumber;
}

- (BOOL)isEqualToSequence:(CouchSequence *)sequence {
    return self.sequenceNumber == [self numericSequence:sequence].sequenceNumber;
}

- (CouchNumericSequence *)numericSequence:(CouchSequence *)sequence {
    if (![sequence isMemberOfClass:[CouchNumericSequence class]]) {
        [NSException raise:@"Trying to compare sequences of different subclasses" format:@"Trying to compare %@ and %@", NSStringFromClass([self class]), NSStringFromClass([sequence class])];
    }

    return (CouchNumericSequence *) sequence;
}

@end