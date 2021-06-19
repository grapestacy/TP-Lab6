#import <Foundation/Foundation.h>

int countLucky(int (*tiscets) [6], int size, int luckyNumber){
  int count = 0, left = 0, right = 0;
  int i = 0;

  for(; i<size; i++){
    left = tiscets[i][0] + tiscets[i][1] + tiscets[i][2];
    right = tiscets[i][3] + tiscets[i][4] + tiscets[i][5];
    if((left == right) && (left == luckyNumber)){
        count++;
    }
  }
  return count;
}

int main (int argc, const char * argv[])
{
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
  int tiscets [10][6] = 
  {
    {9,1,3,3,1,9},
    {1,2,3,4,5,6},
    {2,2,9,4,5,4},
    {1,1,1,1,1,1},
    {0,9,4,5,2,6},
    {0,0,0,0,0,0},
    {9,9,9,9,9,9},
    {9,1,3,5,2,2},
    {2,2,5,7,1,1},
    {8,8,8,8,8,8}
  };
  
  NSLog(@"'Lucky' ones: %d", countLucky(tiscets, 10, 13));
  [pool drain];
  return 0;
}