
#import <Foundation/Foundation.h>

@interface CouchSequence : NSObject

- (id) initWithObject: (id) object;

@property (readonly, nonatomic) BOOL ordered;

- (BOOL) isLessOrEqual: (CouchSequence *) sequence;
- (BOOL) isLessThen: (CouchSequence *) sequence;
- (BOOL) isGreaterOrEqual: (CouchSequence *) sequence;
- (BOOL) isGreaterThen: (CouchSequence *) sequence;
- (BOOL) isEqualToSequence: (CouchSequence *) sequence;

@end