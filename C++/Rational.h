#ifndef RATIONAL_H
#define RATIONAL_H

class Rational{
public:
	Rational(int a, int b = 1){
		num = a;
		den = b;
	}

	Rational(const Rational & other){
		num = other.num;
		den = other.den;
	}
/*
	ostringstream & operator<< (ostringstream & os){
		os<<" "<<num<<"\n";
		os<<" ---\n";
		os<<" "<<den<<"\n";
		return os;
	}
*/
	Rational operator= (const Rational & ref){
		this->num = ref.num;
		this->den = ref.den;
		return *this;
	}
/*
	Rational operator+ (const Rational & op){

	}
*/
private:
	int num, den;	
};

#endif //RATIONAL_H