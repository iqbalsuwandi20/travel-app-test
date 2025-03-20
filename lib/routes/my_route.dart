import 'package:go_router/go_router.dart';

import '../models/travel_model.dart';
import '../pages/detail_home_view.dart';
import '../pages/home_view.dart';
import '../pages/introduction_view.dart';

part 'route_name.dart';

class MyRoute {
  get router => GoRouter(initialLocation: '/', routes: [
        GoRoute(
          path: '/',
          name: RouteName.introduction,
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: IntroductionView()),
        ),
        GoRoute(
            path: '/home',
            name: RouteName.home,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: HomeView()),
            routes: [
              GoRoute(
                path: 'detailHome',
                name: RouteName.detailHome,
                pageBuilder: (context, state) {
                  final travelData = state.extra as TravelModel;
                  return NoTransitionPage(
                    child: DetailHomeView(travel: travelData),
                  );
                },
              ),
            ]),
      ]);
}
