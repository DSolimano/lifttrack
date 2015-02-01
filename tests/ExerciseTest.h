/*
 * File:   ExerciseTest.h
 * Author: davidlou
 *
 * Created on Jan 31, 2015, 10:21:02 PM
 */

#ifndef EXERCISETEST_H
#define	EXERCISETEST_H

#include <cppunit/extensions/HelperMacros.h>

class ExerciseTest : public CPPUNIT_NS::TestFixture {
    CPPUNIT_TEST_SUITE(ExerciseTest);

//    CPPUNIT_TEST(testMethod);
//    CPPUNIT_TEST(testFailedMethod);
    CPPUNIT_TEST(testNameSets);
    CPPUNIT_TEST(testCategorySets);

    CPPUNIT_TEST_SUITE_END();

public:
    ExerciseTest();
    virtual ~ExerciseTest();
    void setUp();
    void tearDown();

private:
//    void testMethod();
//    void testFailedMethod();
    void testNameSets();
    void testCategorySets();
    
};

#endif	/* EXERCISETEST_H */

