import 'package:flutter/material.dart';

class TextFildWidgets extends StatelessWidget {
  const TextFildWidgets({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(5),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white)),
          hintText: 'Search...',
          hintStyle: const TextStyle(
              color: Color(0xff677294),
              fontSize: 15,
              fontFamily: 'Rubik',
              fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: const Icon(
            Icons.search,
            color: Color(0xFf677294),
          ),
          suffixIcon: IconButton(
              onPressed: () {
                controller.clear();

                FocusScope.of(context).unfocus();
              },
              icon: const Icon(Icons.close, color: Color(0xff677294))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
