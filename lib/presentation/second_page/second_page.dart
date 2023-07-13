import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suitmedia_km5_test/presentation/second_page/selected_name_provider.dart';
import 'package:suitmedia_km5_test/presentation/shared/sm_app_bar.dart';
import 'package:suitmedia_km5_test/presentation/shared/sm_button.dart';
import 'package:suitmedia_km5_test/presentation/third_page/third_page.dart';

class SecondPage extends ConsumerWidget {
  const SecondPage({
    required this.name,
    super.key,
  });

  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedName = ref.watch(selectedNameProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: smAppBar(title: 'Second Screen', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: GoogleFonts.poppins(
                color: const Color(0xFF04021D),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              name,
              style: GoogleFonts.poppins(
                color: const Color(0xFF04021D),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  selectedName ?? 'Selected User Name',
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF04021D),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SmButton(
                label: 'Choose a User',
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ThirdPage(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
