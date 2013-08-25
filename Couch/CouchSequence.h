
#import <Foundation/Foundation.h>

@interface CouchSequence : NSObject

- (id) initWithObject: (id) object;

@property (readonly, nonatomic) BOOL ordered;

- (BOOL) isLessOrEqual: (CouchSequence *) sequence;

@end