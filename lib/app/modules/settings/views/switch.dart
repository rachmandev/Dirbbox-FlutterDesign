import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SwitchSetting extends StatefulWidget {
  const SwitchSetting({Key? key}) : super(key: key);

  @override
  State<SwitchSetting> createState() => _SwitchSettingState();
}

class _SwitchSettingState extends State<SwitchSetting> {
  bool statusSwitch = true;

  void _statusSwitch() {
    setState(() {
      statusSwitch = !statusSwitch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Enable Sync",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Switch.adaptive(
                  value: statusSwitch,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Enable 2 Step Verification",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Switch.adaptive(
                  value: statusSwitch,
                  onChanged: (value) {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
