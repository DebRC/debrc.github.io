class Education {
  final String description;
  final String linkName;
  final String period;

  Education({
    required this.description,
    required this.linkName,
    required this.period,
  });
  static List<Education> educationList = [
    Education(
      description:
          "This is a sample education and details about it is stated below. This is a sample education and details about it is stated below",
      linkName: "www.flutterpanda.com",
      period: "2019 - PRESENT",
    ),
    Education(
      description:
          "This is a sample education and details about it is stated below.This is a sample education and details about it is stated below",
      linkName: "www.flutterpanda.com",
      period: "2018 - 2019",
    ),
    Education(
      description:
          "This is a sample education and details about it is stated below. This is a sample education and details about it is stated below",
      linkName: "www.flutterpanda.com",
      period: "2017 - 2018",
    ),
    Education(
      description:
          "This is a sample education and details about it is stated below. This is a sample education and details about it is stated below",
      linkName: "www.flutterpanda.com",
      period: "2016 - 2017",
    ),
  ];
}
