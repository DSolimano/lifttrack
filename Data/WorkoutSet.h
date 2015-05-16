/* 
 * File:   WorkoutSet.h
 * Author: davidlou
 *
 * Created on February 7, 2015, 12:26 AM
 */

#ifndef WORKOUTSET_H
#define	WORKOUTSET_H

#include <cstdlib>
#include <string>
using namespace std;

class WorkoutSet {
public:
    WorkoutSet();
    WorkoutSet(const WorkoutSet& orig);
    virtual ~WorkoutSet();
    
    /*
     * This represents rest between sets of a workout, if we want to track that
     */
    WorkoutSet(const int restTimeInSeconds_);
    int RestTimeInSeconds();
    
    /*
     * This separates "exercises".  We can't impute this from a change in exercise, 
     * because we might consider a superset to be a single exercise.
     */
    static WorkoutSet& GetSeperatorSet(){
        static WorkoutSet s(string("foobar"));
        return s;
    }
    bool IsSeparator(){ return _isSeparator; }
    
private:
    WorkoutSet(string isSeparator){
        _isSeparator = true;
    }
    
    bool _isSeparator;
    int _restTimeInSeconds;
    
};

#endif	/* WORKOUTSET_H */

