import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:kampusgratis/date_picker/date_picker.dart';

class DatePickerPage extends StatelessWidget {
  const DatePickerPage({
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
    super.key,
  });

  final DateTime? initialDate;
  final DateTime firstDate;
  final DateTime lastDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Tanggal'),
      ),
      body: BlocProvider(
        create: (context) => DatePickerCubit()..dateChanged(initialDate),
        child: _DatePickerBody(
          firstDate: firstDate,
          lastDate: lastDate,
          initialDate: initialDate,
        ),
      ),
    );
  }
}

class _DatePickerBody extends StatelessWidget {
  const _DatePickerBody({
    required this.initialDate,
    required this.firstDate,
    required this.lastDate,
  });

  final DateTime? initialDate;
  final DateTime firstDate;
  final DateTime lastDate;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DatePickerCubit, DateTime?>(
      builder: (context, selectedDate) {
        final theme = Theme.of(context);
        var selectedDateString = '...';
        if (selectedDate != null) {
          selectedDateString = DateFormat.yMMMEd('id_ID').format(selectedDate);
        }
        final canPressed = selectedDate != null && selectedDate != initialDate;

        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                          child: Text(
                            selectedDateString,
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                        ),
                        const Divider(),
                      ],
                    ),
                    CalendarDatePicker(
                      initialDate: initialDate,
                      firstDate: firstDate,
                      lastDate: lastDate,
                      onDateChanged: (value) =>
                          context.read<DatePickerCubit>().dateChanged(value),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Divider(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: FilledButton(
                    onPressed:
                        canPressed ? () => context.pop(selectedDate) : null,
                    child: const Text('Pilih'),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
