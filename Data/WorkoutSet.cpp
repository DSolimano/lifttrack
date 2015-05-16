/* 
 * File:   WorkoutSet.cpp
 * Author: davidlou
 * 
 * Created on February 7, 2015, 12:26 AM
 */

#include <vector>

#include "WorkoutSet.h"

WorkoutSet::WorkoutSet():
_isSeparator(false){
    
}

WorkoutSet::WorkoutSet(const WorkoutSet& orig) {
    
}

WorkoutSet::WorkoutSet(const int restTimeInSeconds_):
_isSeparator(false){
    _restTimeInSeconds = restTimeInSeconds_;
}

WorkoutSet::~WorkoutSet() {
}

int WorkoutSet::RestTimeInSeconds(){
    return _restTimeInSeconds;
}