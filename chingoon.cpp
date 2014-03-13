// compile with:
// $ g++ chingoon.cpp

#include <iostream>
#include <vector>

int main(int argc, char ** argv) {

  // default number of chins is 0
  int chins = 0;

  // if there's an arg, it's the chin count. parse to int and use it
  if (argc > 1) {
    chins = atoi(argv[1]);
  }

  // store resulting lines in string vector
  std::vector<std::string> result;

  // setup the standard top of the head
  result.push_back(" __________");
  result.push_back("(--[ .]-[ .]");

  if (chins == 0) {
    // no chins, just output the gaping maw
    result.push_back("(_______O__)");
  } else {
    // got some chins, output the mouth
    result.push_back("(       O  )");

    // add chins of fat
    while(--chins) {
      result.push_back("(          )");
    }

    // termination of chin rolls
    result.push_back("(__________)");
  }

  // print the face to the terminal in all its glory
  for (int i = 0; i < result.size(); i++) {
    std::cout << result[i] << "\n";
  }
}
