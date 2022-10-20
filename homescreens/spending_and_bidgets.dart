import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SandBudgets extends StatefulWidget {
  const SandBudgets({Key? key}) : super(key: key);

  @override
  State<SandBudgets> createState() => _SandBudgetsState();
}

class _SandBudgetsState extends State<SandBudgets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0E0E12),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    'Spending & budgets',
                    style: GoogleFonts.inter(
                        fontSize: 14, color: Colors.white.withOpacity(0.5)),
                  ),
                  Spacer(),
                  Icon(Icons.settings_outlined,color: Colors.white.withOpacity(0.5),)
                ],
              ),
              SizedBox(height: 30,),
              CircularStepProgressIndicator(
                unselectedColor: Colors.black,
                startingAngle: 130,
                totalSteps: 7,
                currentStep: 4,
                width: 200,
                height: 200,
                roundedCap: (_, isSelected) => isSelected,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
