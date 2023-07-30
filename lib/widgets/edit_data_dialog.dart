import 'package:flutter/material.dart';
import 'package:secure_storage_demo/models/storage_item.dart';
import 'package:secure_storage_demo/widgets/textfield_decoration.dart';

class EditDataDialog extends StatefulWidget {
  final StorageItem item;
  const EditDataDialog({super.key, required this.item});

  @override
  State<EditDataDialog> createState() => _EditDataDialogState();
}

class _EditDataDialogState extends State<EditDataDialog> {
  late TextEditingController _valueController;

  @override
  void initState() {
    super.initState();
    _valueController = TextEditingController(text: widget.item.value);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _valueController,
              decoration: textFieldDecoration(hintText: "Enter Value"),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(_valueController.text);
                },
                child: const Text('Update'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
