import 'package:portfolio_site/constants/image_assets.dart';
import 'package:portfolio_site/models/project.dart';

class ProjectsList {
  static List<Project> projectsList = [
    Project(
        title: 'ARTIFICIAL VISION SYSTEM FOR MEAT QUALITY GRADATION',
        period: "2023",
        description:
            'A computer vision-based system which classifies meat into different grades using Machine Learning and Deep Learning Models. Developed classification models and tested them on 3 most consumed meat datasets in India.\nDeveloped an app in Flutter which uses Keras to grade the meat quality.',
        icon: ImageAssetConstants.flutter,
        url:
            "https://github.com/DebRC/Meat-Quality-Gradation-Research-Project-2023"),
    Project(
        title: 'ALGORITHM VISUALIZER',
        period: "2019",
        description:
            'A GUI-based desktop app made using Tkinter and Pygame module of Python to visualize different popular algorithms (Searching, Sorting and Backtracking).',
        icon: ImageAssetConstants.python,
        url: "https://github.com/DebRC/Algorithm-Visualizer"),
    Project(
        title: 'TCP-SOCKET CHAT-ROOM',
        period: "2021",
        description:
            'A GUI-based secured TCP-Socket Chat-Room of Client-Server Architecture.\nMessages are encrypted between Client and Server using AES-256 encryption algorithm where symmetric keys are exchanged using Diffie-Hellman Key-Exchange method.',
        icon: ImageAssetConstants.python,
        url: "https://github.com/DebRC/TCP-Socket-Chat-Room"),
    Project(
        title: 'HUFFMANN FILE COMPRESSOR',
        period: "2021",
        description:
            'A File Compressor site which uses Huffmann Coding technique to perform lossless compression/decompression of text (.txt) files.',
        icon: ImageAssetConstants.java,
        url: "https://github.com/DebRC/Huffmann-File-Compressor"),
  ];
}
