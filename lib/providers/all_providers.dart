import 'package:altipzz/providers/loading_provider.dart';
import 'package:provider/provider.dart';

var allProvider = [
  ChangeNotifierProvider<LoadingProvider>(
    create: (_) => LoadingProvider(),
    lazy: true,
  ),
 
];