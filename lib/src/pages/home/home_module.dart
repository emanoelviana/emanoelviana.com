import 'package:emanoelviana/src/core/modules/routers_module.dart';
import 'package:emanoelviana/src/pages/home/controllers/home_controller.dart';
import 'package:emanoelviana/src/pages/home/views/home_page.dart';
import 'package:provider/provider.dart';

class HomeModule extends RoutersModule {
  HomeModule()
      : super(
          routers: {
            '/home_page': (context) => const HomePage(),
          },
          bindings: [
            ChangeNotifierProvider(create: (_) => HomeController()),
          ],
        );
}
