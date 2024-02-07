import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerProvider = ref.watch(routerProv);
    return CupertinoApp.router(
      title: 'Cupertino App',
      routerDelegate: routerProvider.routerDelegate,
      routeInformationParser: routerProvider.routeInformationParser,
    );
  }
}
