void main(){
  // final yo = DateTime.now();
  // print(yo);
  Car myCar = Car(carBrand: Brand.tesla);

}

class Car {
  Brand carBrand;
  Car({required this.carBrand});
}
enum Brand {
  tesla,toyota,benz,
}