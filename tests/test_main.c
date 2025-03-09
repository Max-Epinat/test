#include <criterion/criterion.h>

Test(basic_test, passing_test) {
    cr_assert(1 == 1, "This test should pass");
}

// Uncomment this test to simulate a failing build

/*
Test(basic_test, failing_test) {
    cr_assert(1 == 0, "This test should fail");
}
*/