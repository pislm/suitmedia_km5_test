import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suitmedia_km5_test/presentation/second_page/second_page.dart';
import 'package:suitmedia_km5_test/presentation/shared/sm_button.dart';

import 'first_page_notifier.dart';

class FirstPage extends ConsumerWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(firstPageNotifierProvider);
    ref.listen(
      firstPageNotifierProvider,
      (_, state) {
        if (state.isPalindrome != null) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                  state.isPalindrome! ? 'is Palindrome' : 'Not Palindrome'),
              content: Text(
                  '${state.nameController.text} ${state.isPalindrome! ? 'is' : 'is not'} Palindrome'),
              actions: [
                TextButton(
                  onPressed: Navigator.of(context).pop,
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        }
      },
    );
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/ic_photo.png',
                  width: 116,
                  height: 116,
                ),
                const SizedBox(height: 54),
                _buildWhiteBox(
                  child: TextField(
                    controller: state.nameController,
                    decoration: InputDecoration(
                      hintText: 'Input your name',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                _buildWhiteBox(
                  child: Text(
                    state.isPalindrome == null
                        ? 'Palindrome'
                        : state.isPalindrome!
                            ? 'is Palindrome'
                            : 'not Palindrome',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: state.isPalindrome == null
                          ? Colors.grey
                          : state.isPalindrome!
                              ? Colors.green
                              : Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 45),
                SmButton(
                  onPressed:
                      ref.read(firstPageNotifierProvider.notifier).onCheck,
                  label: 'CHECK',
                ),
                const SizedBox(height: 16),
                SmButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SecondPage(
                        name: state.nameController.text,
                      ),
                    ),
                  ),
                  label: 'NEXT',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWhiteBox({Widget? child}) => Container(
        width: double.infinity,
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: child,
        ),
      );
}
