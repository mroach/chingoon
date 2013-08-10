#include "stdlib.h"
#include "stdio.h"
#define top_head " __________"
#define eyes     "(--[ .]-[ .]"
#define fatty    "(       O  )"
#define slim     "(_______O__)"
#define fat    "(          )"
#define chin     "(__________)"

void print_chin_goon(int chins) {
  int i = 0;
  puts(top_head);
  puts(eyes);
  if (chins > 0) {
    puts(fatty);
    for (i = 1 ; i < chins ; i++ ) {
      puts(fat);
    }
    puts(chin);
  } else if (chins <= 0) {
    puts(slim);
  }
}

int main(int argc, char ** argv) {
  int chins = 0;
  if (argc <= 1) {
    puts("Need an argument!");
    return 1;
  }
  chins = atoi(argv[1]);
  print_chin_goon(chins);
  return 0;
}
