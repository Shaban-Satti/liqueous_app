import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Button Example',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Button Example'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              _showFilterDialog(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Tap the filter icon'),
      ),
    );
  }

  Future<void> _showFilterDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return FilterDialog();
      },
    );
  }
}

class FilterDialog extends StatefulWidget {
  @override
  _FilterDialogState createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  String? _selectedSort;
  String? _selectedRequestBy;
  String? _selectedService;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Filter'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildSection('Sort', [
            _buildRadio('Name', 'Name'),
            _buildRadio('Date', 'Date'),
          ]),
          _buildSection('Request By', [
            _buildRadio('All', 'All'),
            _buildRadio('User 1', 'User 1'),
            _buildRadio('User 2', 'User 2'),
          ]),
          _buildSection('Services', [
            _buildRadio('All', 'All'),
            _buildRadio('Service 1', 'Service 1'),
            _buildRadio('Service 2', 'Service 2'),
          ]),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // Apply filter logic
            Navigator.of(context).pop();
          },
          child: Text('Apply'),
        ),
      ],
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Column(children: children),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildRadio(String title, String value) {
    return RadioListTile<String>(
      title: Text(title),
      value: value,
      groupValue: _getGroupValue(title),
      onChanged: (newValue) {
        setState(() {
          _updateSelection(title, newValue!);
        });
      },
    );
  }

  String? _getGroupValue(String section) {
    switch (section) {
      case 'Sort':
        return _selectedSort;
      case 'Request By':
        return _selectedRequestBy;
      case 'Services':
        return _selectedService;
      default:
        return null;
    }
  }

  void _updateSelection(String section, String value) {
    switch (section) {
      case 'Sort':
        _selectedSort = value;
        break;
      case 'Request By':
        _selectedRequestBy = value;
        break;
      case 'Services':
        _selectedService = value;
        break;
    }
  }
}
