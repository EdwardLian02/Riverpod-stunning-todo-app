// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TodoNotifier)
const todoProvider = TodoNotifierProvider._();

final class TodoNotifierProvider
    extends $NotifierProvider<TodoNotifier, List<Todo>> {
  const TodoNotifierProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'todoProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$todoNotifierHash();

  @$internal
  @override
  TodoNotifier create() => TodoNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Todo> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Todo>>(value),
    );
  }
}

String _$todoNotifierHash() => r'382d9ce2ee7d2023f379a1a4407173ad5964685b';

abstract class _$TodoNotifier extends $Notifier<List<Todo>> {
  List<Todo> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Todo>, List<Todo>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<List<Todo>, List<Todo>>, List<Todo>, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
