import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:suitmedia_km5_test/model/user_model.dart';
import 'package:suitmedia_km5_test/repository/user_repository.dart';

part 'third_page_notifier.g.dart';

@riverpod
class ThirdPageNotifier extends _$ThirdPageNotifier {
  @override
  PagingController<int, UserModel> build() {
    final pagingController = PagingController<int, UserModel>(firstPageKey: 1);
    pagingController.addPageRequestListener(_fetchPage);
    return pagingController;
  }

  Future<void> _fetchPage(int page) async {
    try {
      final response =
          await ref.watch(userRepositoryProvider).getUsers(page: page);
      final isLastPage = response.page == response.totalPages;
      if (isLastPage) {
        state.appendLastPage(response.users);
      } else {
        final nextPageKey = page + 1;
        state.appendPage(response.users, nextPageKey);
      }
    } catch (error) {
      state.error = error;
    }
  }
}
