import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:suitmedia_km5_test/model/user_model.dart';
import 'package:suitmedia_km5_test/presentation/second_page/selected_name_provider.dart';
import 'package:suitmedia_km5_test/presentation/shared/sm_app_bar.dart';
import 'package:suitmedia_km5_test/presentation/third_page/third_page_notifier.dart';

class ThirdPage extends ConsumerWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(thirdPageNotifierProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: smAppBar(
        title: 'Third Screen',
        context: context,
      ),
      body: PagedListView<int, UserModel>(
        pagingController: state,
        builderDelegate: PagedChildBuilderDelegate<UserModel>(
          itemBuilder: (context, user, index) {
            return _buildUserTile(user, ref, context);
          },
        ),
      ),
    );
  }

  Column _buildUserTile(UserModel user, WidgetRef ref, BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            '${user.firstName} ${user.lastName}',
            style: GoogleFonts.poppins(
              color: const Color(0xFF04021D),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            user.email,
            style: GoogleFonts.poppins(
              color: const Color(0xFF686777),
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              user.avatar,
            ),
          ),
          onTap: () {
            ref.read(selectedNameProvider.notifier).state =
                '${user.firstName} ${user.lastName}';
            Navigator.of(context).pop();
          },
        ),
        const Divider(),
      ],
    );
  }
}
