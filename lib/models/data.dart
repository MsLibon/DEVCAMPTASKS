import 'dart:core';

class Data{
  late String cityName;
  late String cityImage;
  late String cityDescription;
  Data({required this.cityName, required this.cityImage, required this.cityDescription});
}

List<Data> mydatalist = [
  Data(cityName: "Paris",
  cityImage: "https://www.dangerous-business.com/wp-content/uploads/2013/08/15300279005_62ca277eba_k.jpg",
      cityDescription: "Something about Paris"),

  Data(cityName: "London",
      cityImage: "https://cms.inspirato.com/media/5682444/London_Dest_16531610X.jpg",
      cityDescription: "Something about London"),

  Data(cityName: "Mecca",
      cityImage: "https://www.todayifoundout.com/wp-content/uploads/2017/02/mecca.jpg",
      cityDescription: "Something about Mecca"),

  Data(cityName: "Paris",
      cityImage: "https://www.dangerous-business.com/wp-content/uploads/2013/08/15300279005_62ca277eba_k.jpg",
      cityDescription: "Something about Paris"),

  Data(cityName: "London",
      cityImage: "https://cms.inspirato.com/media/5682444/London_Dest_16531610X.jpg",
      cityDescription: "Something about London"),

  Data(cityName: "Mecca",
      cityImage: "https://www.todayifoundout.com/wp-content/uploads/2017/02/mecca.jpg",
      cityDescription: "Something about Mecca")
];