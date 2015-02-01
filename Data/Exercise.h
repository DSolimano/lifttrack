/* 
 * File:   Exercise.h
 * Author: davidlou
 *
 * Created on January 31, 2015, 10:16 PM
 */

#ifndef EXERCISE_H
#define	EXERCISE_H

#include <cstdlib>
#include <string>
using namespace std;

class Exercise {
public:
    Exercise(const string name_, const string category_);
    Exercise(const Exercise& orig);
    virtual ~Exercise();
    std::string name() const;
    std::string category() const;
private:
    std::string _name;
    std::string _category;
};

#endif	/* EXERCISE_H */

/* 
 * File:   exercise.h
 * Author: davidlou
 *
 * Created on January 31, 2015, 10:12 PM
 */
