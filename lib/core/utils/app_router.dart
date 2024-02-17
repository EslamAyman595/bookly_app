import 'package:bookly_app/Features/home/presentation/views/book_detalis_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const KHomeView='/homeview';
  static const KBookDetailView='/bookdetailview';
  static const KSearchView='/searchview';

 static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',// دى نقطة البداية
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: KHomeView,
      builder: (context, state) => const HomeView(),
    ),
     GoRoute(
      path: KBookDetailView,
      builder: (context, state) => const BookDetalisView(),
    ),
    GoRoute(
      path: KSearchView,
      builder: (context, state) => const SearchView(),
    ),
  ],
);
}
