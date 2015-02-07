/* 
 * File:   Exercise.cpp
 * Author: davidlou
 * 
 * Created on January 31, 2015, 10:16 PM
 */

#include "Exercise.h"

Exercise::Exercise(const string name_, const string category_)
: _name(name_), _category(category_){
    
}

Exercise::Exercise(const Exercise& orig) {
}

Exercise::~Exercise() {
}

const string& Exercise::category() const{
    return _category;    
}

const string& Exercise::name() const{
    return _name;
}
