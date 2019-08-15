#ifndef CATCH_CONFIG_MAIN
#define CATCH_CONFIG_MAIN  // This tells Catch to provide a main() - only do this in one cpp file
#endif

#include <catch2/catch.hpp>
#include "utils.hpp"

TEST_CASE( "Factorials are computed", "[factorial]" ) {
    REQUIRE( Factorial(1) == 1 );
    REQUIRE( Factorial(2) == 2 );
    REQUIRE( Factorial(3) == 6 );
    REQUIRE( Factorial(10) == 3628800 );
}

TEST_CASE( "Square are computed", "[square]" ) {
    REQUIRE( Square(1) == 1 );
    REQUIRE( Square(2) == 4 );
    REQUIRE( Square(3) == 9 );
    REQUIRE( Square(10) == 100 );
    REQUIRE( Square(-10) == 100 );
    REQUIRE( Square(-8) == 64 );
}

TEST_CASE( "vectors can be sized and resized", "[vector]" ) {
    // initialization block executed for each section
    std::vector<int> v( 5 );
    REQUIRE( v.size() == 5 );
    REQUIRE( v.capacity() >= 5 );
    // end of initialization block

    SECTION( "resizing bigger changes size and capacity" ) {
         v.resize( 10 );

         REQUIRE( v.size() == 10 );
         REQUIRE( v.capacity() >= 10 );
    }
    SECTION( "resizing smaller changes size but not capacity" ) {
        v.resize( 0 );

        REQUIRE( v.size() == 0 );
        REQUIRE( v.capacity() >= 5 );
    }
}
