#include "sorter.h"
#include <stdio.h>


//could not get this method to work but I got it to work
//in the main method
void sort(char** contents, int size){

	for(int i = 0; i < size; ++i){
		for (int j = 0; j < (size - i - 1); ++j) {
			if(strcmp(contents[j], contents[j+1]) > 0) {
				strcpy('\0', contents[j]);
				strcpy(contents[j], contents[j+1]);
				strcpy(contents[j+1], '\0');

			} 

		}
	}
}
