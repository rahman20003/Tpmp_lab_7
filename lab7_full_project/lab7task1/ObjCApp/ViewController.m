#import "ViewController.h"

@implementation ViewController

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    self.lastPoint = [touch locationInView:self.view];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint currentPoint = [touch locationInView:self.view];

    UIGraphicsBeginImageContext(self.view.frame.size);
    [self.canvas.image drawInRect:self.view.bounds];

    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 5.0);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);

    CGContextMoveToPoint(context, self.lastPoint.x, self.lastPoint.y);
    CGContextAddLineToPoint(context, currentPoint.x, currentPoint.y);
    CGContextStrokePath(context);

    self.canvas.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    self.lastPoint = currentPoint;
}

@end
