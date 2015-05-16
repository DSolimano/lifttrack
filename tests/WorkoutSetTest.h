/*
 * File:   WorkoutSetTest.h
 * Author: davidlou
 *
 * Created on Feb 8, 2015, 11:07:01 AM
 */

#ifndef WORKOUTSETTEST_H
#define	WORKOUTSETTEST_H

#include <cppunit/extensions/HelperMacros.h>

class WorkoutSetTest : public CPPUNIT_NS::TestFixture {
    CPPUNIT_TEST_SUITE(WorkoutSetTest);

    CPPUNIT_TEST(testGetSeperatorSet);
    CPPUNIT_TEST(testRestSetIsNotSeperatorSet);
    CPPUNIT_TEST(testRestSetStoresTime);

    CPPUNIT_TEST_SUITE_END();

public:
    WorkoutSetTest();
    virtual ~WorkoutSetTest();
    void setUp();
    void tearDown();

private:
    void testGetSeperatorSet();
    void testRestSetIsNotSeperatorSet();
    void testRestSetStoresTime();

};

#endif	/* WORKOUTSETTEST_H */

