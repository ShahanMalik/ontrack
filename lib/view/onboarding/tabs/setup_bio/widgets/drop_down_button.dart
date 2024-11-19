import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/utils/color_resources.dart';

import 'package:ontrack/view_model/onboarding/bio/height_type_provider.dart';

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Container(
        height: double.infinity,
        width: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: ColorResources.lightWhite, width: 0.3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          color: ColorResources.commonColor,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: DropdownButton<String>(
          value: ref.watch(heightTypeProvider),
          onChanged: (String? value) {
            ref.read(heightTypeProvider.notifier).changeHeightType(value!);
          },
          underline: const SizedBox(),
          isExpanded: true,
          style: const TextStyle(color: ColorResources.white),
          dropdownColor: ColorResources.commonColor,
          icon: const Icon(Icons.keyboard_arrow_down,
              color: ColorResources.white),
          selectedItemBuilder: (BuildContext context) {
            return heightType.map((String value) {
              return Align(
                alignment: Alignment.centerLeft,
                child: Text(value,
                    style: const TextStyle(
                      color: ColorResources.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
              );
            }).toList();
          },
          items: heightType.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      );
    });
  }
}
