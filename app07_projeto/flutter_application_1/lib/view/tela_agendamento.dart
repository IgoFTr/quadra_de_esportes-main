import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class TelaAgendamento extends StatefulWidget {
  const TelaAgendamento({super.key});

  @override
  State<TelaAgendamento> createState() => _TelaAgendamentoState();
}

class _TelaAgendamentoState extends State<TelaAgendamento> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  TimeOfDay time = const TimeOfDay(hour: 09, minute: 00);

  @override
  Widget build(BuildContext context) {
    final hours = time.hour.toString().padLeft(2, '0');
    final minutes = time.minute.toString().padLeft(2, '0');

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(100, 150, 100, 10),
        child: Column(children: [
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  size: 70,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(
                width: 800,
              ),
              IconButton(
                icon: const Icon(
                  Icons.star,
                  size: 70,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: SizedBox(
                      height: 180,
                      child: Center(
                        child: Text(
                          'Quadra Favoritada!',
                          style: GoogleFonts.poppins(
                              fontSize: 40, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    duration: Duration(seconds: 5),
                    backgroundColor: Color.fromRGBO(51, 0, 255, 20),
                  ));
                },
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Quadra selecionada',
            style: GoogleFonts.poppins(
                fontSize: 80, color: Color.fromRGBO(51, 0, 255, 20)),
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Selecione a data',
            style: GoogleFonts.poppins(
                fontSize: 50, color: Color.fromRGBO(51, 0, 255, 20)),
          ),
          const SizedBox(
            height: 30,
          ),
          TableCalendar(
            firstDay: DateTime.now(),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _selectedDay,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
              titleTextStyle: TextStyle(
                fontSize: 40,
                fontFamily: 'poppins',
              ),
              formatButtonTextStyle: TextStyle(
                fontSize: 40,
                fontFamily: 'poppins',
              ),
              leftChevronIcon: Icon(Icons.chevron_left, size: 40),
              rightChevronIcon: Icon(Icons.chevron_right, size: 40),
            ),
            calendarStyle: const CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: Color.fromRGBO(51, 0, 255, 20),
                shape: BoxShape.circle,
              ),
              defaultTextStyle: TextStyle(
                fontSize: 30,
                fontFamily: 'poppins',
              ),
              todayTextStyle: TextStyle(
                fontSize: 33,
                fontFamily: 'poppins',
              ),
              selectedTextStyle: TextStyle(
                fontSize: 35,
                color: Color.fromRGBO(55, 0, 255, 100),
                fontFamily: 'poppins',
                fontWeight: FontWeight.bold,
              ),
              weekendTextStyle: TextStyle(
                fontSize: 30,
                fontFamily: 'poppins',
              ),
            ),
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = _focusedDay;
              });
            },
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Selecione o horário',
            style: GoogleFonts.poppins(
                fontSize: 50, color: Color.fromRGBO(51, 0, 255, 20)),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            '${hours}:${minutes}',
            style: GoogleFonts.poppins(fontSize: 40),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton(
            onPressed: () async {
              TimeOfDay? newTime = await showTimePicker(
                context: context,
                builder: (BuildContext context, Widget? child) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      size: Size(double.infinity, 1000),
                    ),
                    child: child!,
                  );
                },
                initialTime: time,
              );
              if (newTime == null) return;

              setState(() => time = newTime);
            },
            style: OutlinedButton.styleFrom(
              fixedSize: Size(
                MediaQuery.of(context).size.width / 2.3,
                100,
              ),
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              side: BorderSide(color: Color.fromRGBO(51, 0, 255, 20), width: 5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
            child: Text(
              'Selecione o horário',
              style: GoogleFonts.poppins(
                fontSize: 40,
                color: Color.fromRGBO(51, 0, 255, 20),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'Selecione a Quadra',
            style: GoogleFonts.poppins(
                fontSize: 50, color: Color.fromRGBO(51, 0, 255, 20)),
          ),
          const SizedBox(
            height: 50,
          ),
          TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: 'Número da quadra'),
              style: GoogleFonts.poppins(fontSize: 40)),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: SizedBox(
                  height: 180,
                  child: Center(
                    child: Text(
                      'Agendado!',
                      style: GoogleFonts.poppins(
                          fontSize: 40, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                duration: Duration(seconds: 5),
                backgroundColor: Color.fromRGBO(51, 0, 255, 20),
              ));
              Navigator.pop(context);
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(
                MediaQuery.of(context).size.width,
                100,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Color.fromRGBO(51, 0, 255, 20),
            ),
            child: Text(
              'Agendar',
              style: GoogleFonts.poppins(fontSize: 40),
            ),
          ),
        ]),
      ),
    );
  }
}
