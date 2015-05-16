/*
 * File:   WorkoutSetTest.cpp
 * Author: davidlou
 *
 * Created on Feb 8, 2015, 11:07:01 AM
 */

#include "WorkoutSetTest.h"
#include "Data/WorkoutSet.h"


CPPUNIT_TEST_SUITE_REGISTRATION(WorkoutSetTest);

WorkoutSetTest::WorkoutSetTest() {
}

WorkoutSetTest::~WorkoutSetTest() {
}

void WorkoutSetTest::setUp() {
}

void WorkoutSetTest::tearDown() {
}

void WorkoutSetTest::testGetSeperatorSet() {
    WorkoutSet& result = WorkoutSet::GetSeperatorSet();
    CPPUNIT_ASSERT_EQUAL(true, result.IsSeparator());
}

void WorkoutSetTest::testRestSetIsNotSeperatorSet() {
    WorkoutSet result(5);
    CPPUNIT_ASSERT_EQUAL(false, result.IsSeparator());
}

void WorkoutSetTest::testRestSetStoresTime() {
    WorkoutSet result(5);
    CPPUNIT_ASSERT_EQUAL(5, result.RestTimeInSeconds());
}
