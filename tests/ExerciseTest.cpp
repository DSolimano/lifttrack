/*
 * File:   ExerciseTest.cpp
 * Author: davidlou
 *
 * Created on Jan 31, 2015, 10:21:02 PM
 */

#include "ExerciseTest.h"
#include "..\Data\Exercise.h"

CPPUNIT_TEST_SUITE_REGISTRATION(ExerciseTest);

ExerciseTest::ExerciseTest() {
}

ExerciseTest::~ExerciseTest() {
}

void ExerciseTest::setUp() {
}

void ExerciseTest::tearDown() {
}

//void ExerciseTest::testMethod() {
//    CPPUNIT_ASSERT(true);
//}
//
//void ExerciseTest::testFailedMethod() {
//    CPPUNIT_ASSERT(false);
//}

void ExerciseTest::testNameSets() {
    Exercise e(string("Foo"), string("Bar"));
    CPPUNIT_ASSERT_EQUAL(string("Foo"), e.name());
}

void ExerciseTest::testCategorySets() {
    Exercise e(string("Foo"), string("Bar"));
    CPPUNIT_ASSERT_EQUAL(string("Bar"), e.category());
}


