// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:hi_music/features/auth/presentation/pages/login_page.dart'
    as _i2;
import 'package:hi_music/features/auth/presentation/pages/splash_page.dart'
    as _i3;
import 'package:hi_music/features/home/presentation/pages/home_page.dart'
    as _i1;
import 'package:hi_music/features/topic/presentation/pages/topic_detail_page.dart'
    as _i4;
import 'package:hi_music/features/topic/presentation/pages/topic_page.dart'
    as _i5;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomePage();
    },
  );
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return _i2.LoginPage(key: args.key);
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.SplashPage();
    },
  );
}

/// generated route for
/// [_i4.TopicDetailPage]
class TopicDetailRoute extends _i6.PageRouteInfo<TopicDetailRouteArgs> {
  TopicDetailRoute({
    _i7.Key? key,
    required String id,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          TopicDetailRoute.name,
          args: TopicDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'TopicDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<TopicDetailRouteArgs>(
          orElse: () => TopicDetailRouteArgs(id: pathParams.getString('id')));
      return _i4.TopicDetailPage(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class TopicDetailRouteArgs {
  const TopicDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i7.Key? key;

  final String id;

  @override
  String toString() {
    return 'TopicDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.TopicPage]
class TopicRoute extends _i6.PageRouteInfo<void> {
  const TopicRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TopicRoute.name,
          initialChildren: children,
        );

  static const String name = 'TopicRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.TopicPage();
    },
  );
}
