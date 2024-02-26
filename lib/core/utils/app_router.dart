import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_reop_impl.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/presentation/manger/fetch_simialar_books_cubit/cubit/fetchsimialirbookscubit_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/book_detalis_view.dart';
import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/utils/service_locater.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KHomeView = '/homeview';
  static const KBookDetailView = '/bookdetailview';
  static const KSearchView = '/searchview';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', // دى نقطة البداية
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KBookDetailView,
        builder: (context, state) =>  BlocProvider(
          create: (context) => Fetchsimialirbookscubit(
            getIt.get<HomeRepoImpl>()
          ),
          child: BookDetalisView(
            bookModel:  state.extra as BookModel,//extraبتبعت اي بيانات انت عايزها
          ),
        ),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
