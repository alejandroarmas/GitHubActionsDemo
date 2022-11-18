#include "src/foo_dir/include/foo.h"

#include <catch2/catch_test_macros.hpp>


TEST_CASE( "Basic Usage", "[foo]" ) {

    Foo a;
    a.greet("Alejandro!");

    REQUIRE(true == true);
}