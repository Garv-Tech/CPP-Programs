#include <iostream>

int main(){

    //Integer Data Types

    int age = 25;
    int year = 2025;
    int days = 7;

    std::cout << days << "\n";

    //Floating Point Data Types

    double price = 19.99;
    double gpa = 2.5;
    double temperature = 36.6; //This will store 36.6

    std::cout << temperature << "\n";

    //Character Data Type

    char grade = 'A';
    char initial = 'B';
    char currency = '$';

    std::cout << currency << "\n";

    //Boolean Data Type

    bool student = true;
    bool power = false;
    bool forSale = true;

    std::cout << student << "\n"; //Output: 1 (true)

    //String Data Type

    std::string name = "Bro";
    std::string food = "Pizza";
    std::string day = "Friday";

    std::cout << day << "\n";

    //Displaying a Variable with Text
    std::cout << "Hello " << name << "\n";
    std::cout << "You are " << age << " years old\n";
    std::cout << "You like " << food << "\n";
    
}
