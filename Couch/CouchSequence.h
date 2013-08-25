#import <Foundation/Foundation.h>

@interface CouchSequence : NSObject

- (id) initWithObject: (id) object;

/** Checks if it is possible to compare current sequence with the other sequence.
    Comparing means checking order of sequences, checking equality is always possible */
- (BOOL) canCompareTo: (CouchSequence *) sequence;

- (BOOL) isLessOrEqual: (CouchSequence *) sequence;

- (BOOL) isLessThen: (CouchSequence *) sequence;

- (BOOL) isGreaterOrEqual: (CouchSequence *) sequence;

- (BOOL) isGreaterThen: (CouchSequence *) sequence;

- (BOOL) isEqualToSequence: (CouchSequence *) sequence;

@end