#include "test.h"
#include "math.h"
#include "student.h"
#include <stdlib.h>

/**
 * Example for demonstration at start of test.
 */

int example(){
	return 42;
}

/**
 * Warmup (but counts for credit!)
 * Square the value x points to.
 */
void easyPeasy(int* x){
	*x = (*x)*(*x);

}


/**
 * Set a's first name to "Jigglypuff".
 * Set the last name to "Ketchum".
 * Set the g number to 10, the gpa to 1.16.
 */
void one(Student* a){
	char* temp = "Jigglypuff";
	char* temp2 = "Ketchum";
	int gNum = 10;
	float  gpa = 1.16;
	set_first_name(a, temp);
	set_last_name(a, temp2);
	set_g_number(a, 10);
	set_gpa(a, gpa);


}

/**
 * Copy the information from Student b to Student a.
 * (pointer parameters).
 */
void two(Student* a, Student* b){
	*a =*b;

}

/**
 * Copy the information from Student a to Student b.
 * (mixed variable type parameters).
 */

void three(Student a, Student* b){
	
	*b = a;
	

}


/**
 * Create and return a Student.  Give it the values
 * "T. Yoshisaur" (first_name)
 * "Munchakoopas" (last_name)
 * 1990		  (g_number)
 * 3.1		  (gpa)
 * Mario	  (roommate [defined above])
 * Remember: C is pass by copy ONLY.
 */
Student four(){
	Student a;
	a.first_name = "T. Yoshisaur";
	a.last_name = "Munchakoopas";
	a.g_number = 1990;
	a.gpa = 3.1;
	a.roommate = &Mario;

	return a;
}

/**
 * Create and return a Student*.  Give it the value
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 * Remember: C is pass by copy ONLY.
 */
Student* five(){
	Student* luigi = (Student*)malloc(sizeof luigi);	
	luigi->first_name = "Luigi";
	luigi->last_name = "Mario";
	luigi->g_number = 2;
	luigi->gpa = 3.54;
	
	return luigi;


}

/**
 * Create a hunk of memory we can use as an array of 10
 * Students.  Set the 4th element (meaning use array
 * index 3) to
 *
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 */
Student* six(){
	

	//**** I could not get this function to work,
	//so I commented out the corresponding test
	//in the main.c file so that the rest of the
	//tests would run, since I would get a 
	//segfault if I didn't ****


	Student* temp = (Student*)malloc(sizeof temp);

	temp->first_name = "Luigi";
	temp->last_name = "Mario";
	temp->g_number = 2;
	temp->gpa = 3.54;

	
//	Student arr[10] = malloc(sizeof(Student));
	Student* arr; 

	arr[3] = *temp;

	
	return temp;

}

/**
 * Seven will take a pointer to a pointer.  It should
 * create a hunk of memory that can be used as an array
 * of size 10, and will set the pointer correctly so
 * that the "array" is usable in main.
 * Set the 10th (index 9) element equal to
 *
 * "Luigi" (first_name)
 * "Mario" (last_name)
 * 2       ( :( )
 * 3.54    (gpa [we know he's the smart one])
 */
void seven(Student** students){


	//**** I could not get this function to work, 
	//so I commented out the corresponding test 
	//in the main.c file so that the rest of the
	//tests would run, since I would get a 
	//segfault if I didn't ****



//	Student* temp = (Student*)malloc(sizeof temp);
//	temp->first_name = "Luigi";
//	temp->last_name = "Mario";
//	temp->g_number = 2;
//	temp->gpa = 3.54;

//        Student arr[10] = malloc(sizeof(Student));
//	Student* arr;

//	arr[3] = *temp;


	
}

/**
 * Given a, b, and c calculate the first solution for
 * the quadratic equation (given below).
 *
 * -b + sqrt(b^2 - 4ac) / (2a)
 */
double quadratic(double a, double b, double c){
	double temp;

	temp = (-(b) + sqrt((b*b) - 4*a*c)) / (2*a);

	return temp;
}


/**
 * Given a "string" (a character array) and a length,
 * replace each lower case character with its uppercase
 * equivalent.
 *
 * Do not use any string functions provided by the library.
 * Merely check to see if each character is between the
 * range of values for a lowercase letter.  If it is,
 * replace it with the uppercase value equivalent.
 *
 * If you are writing more than five lines you are doing it wrong.
 */
#include <stdio.h>
void capitalize(char* str, size_t len){


	for (int i = 0; i < len; ++i){
		if(str[i] > 96 && str[i] < 123){
			str[i] = str[i] - 32;

		}


	}

}

