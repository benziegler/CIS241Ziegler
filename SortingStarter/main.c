#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAX_LEN 100

/*
 * Read the file from the command-line.
 * Usage:
 * ./a.out FILE_TO_READ FILE_TO_WRITE
 *
 */

int main(int argc, char** argv){
	// Read the original file.
	
	char *strFileName = "out_of_order_file";
	char *strOutputFile = "in_order_file";
	char strTempData[MAX_LEN];
	char **strData = NULL;
	int numLines = 0;

	FILE * inputFile = NULL;

	FILE * outputFile = NULL;


	if ( (inputFile = fopen(strFileName, "r")) == NULL) {
		printf("Error. Could not open file.");

		return 1;
	}


	//storing contents of file into a list of strings
	while( fgets(strTempData, MAX_LEN, inputFile) != NULL) {
		if (strchr(strTempData, '\n'))
			strTempData[strlen(strTempData) - 1] = '\0';

		strData = (char**)realloc(strData, sizeof(char**)*(numLines+1));
		strData[numLines] = (char*)calloc(MAX_LEN, sizeof(char));
		strcpy(strData[numLines], strTempData);

		numLines++;
	}


	//sorting the data
	for(int i = 0; i < numLines; ++i){
		for (int j = 0; j < (numLines - i - 1); ++j) {
			if(strcmp(strData[j], strData[j+1]) > 0) {
				strcpy(strTempData, strData[j]);
				strcpy(strData[j], strData[j+1]);
				strcpy(strData[j+1], strTempData);
			} 
		}
	}

	
	//write output to the new file
	outputFile = fopen("in_order_file", "w");

	for(int i = 0; i<numLines; i++){
		fprintf(outputFile, "%s\n", strData[i]);
	}

	
	//free memory
	for (int i = 0; i < numLines; i++){
		free(strData[i]);
	}
	
	free(strData);
	fclose(inputFile);
	fclose(outputFile);	

}

// You can see if your file worked correctly by using the
// command:
//
// diff ORIGINAL_FILE NEW_FILE
//
// If the command returns ANYTHING the files are different.
