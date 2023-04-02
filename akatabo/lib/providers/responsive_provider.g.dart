// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responsive_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$akataboResponsiveHash() => r'5c1b7635b168a70eaa3f6a7df10478f2d5e4f55a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef AkataboResponsiveRef = AutoDisposeProviderRef<AkataboResponsive>;

/// See also [akataboResponsive].
@ProviderFor(akataboResponsive)
const akataboResponsiveProvider = AkataboResponsiveFamily();

/// See also [akataboResponsive].
class AkataboResponsiveFamily extends Family<AkataboResponsive> {
  /// See also [akataboResponsive].
  const AkataboResponsiveFamily();

  /// See also [akataboResponsive].
  AkataboResponsiveProvider call(
    BuildContext context,
  ) {
    return AkataboResponsiveProvider(
      context,
    );
  }

  @override
  AkataboResponsiveProvider getProviderOverride(
    covariant AkataboResponsiveProvider provider,
  ) {
    return call(
      provider.context,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'akataboResponsiveProvider';
}

/// See also [akataboResponsive].
class AkataboResponsiveProvider extends AutoDisposeProvider<AkataboResponsive> {
  /// See also [akataboResponsive].
  AkataboResponsiveProvider(
    this.context,
  ) : super.internal(
          (ref) => akataboResponsive(
            ref,
            context,
          ),
          from: akataboResponsiveProvider,
          name: r'akataboResponsiveProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$akataboResponsiveHash,
          dependencies: AkataboResponsiveFamily._dependencies,
          allTransitiveDependencies:
              AkataboResponsiveFamily._allTransitiveDependencies,
        );

  final BuildContext context;

  @override
  bool operator ==(Object other) {
    return other is AkataboResponsiveProvider && other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
