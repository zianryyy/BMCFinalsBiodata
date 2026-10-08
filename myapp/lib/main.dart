import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bio Data',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
        ),
        scaffoldBackgroundColor: const Color(0xFFF7F7F7),
      ),
      home: const BioDataPage(),
    );
  }
}

class BioDataPage extends StatefulWidget {
  const BioDataPage({super.key});

  @override
  State<BioDataPage> createState() => _BioDataPageState();
}

class _BioDataPageState extends State<BioDataPage> {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final birthController = TextEditingController();
  final placeBirthController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();
  final currentAddressController = TextEditingController();
  final permanentAddressController = TextEditingController();
  final citizenshipController = TextEditingController();
  final nationalityController = TextEditingController();
  final civilStatusController = TextEditingController();

  final elementaryController = TextEditingController();
  final elementaryYearController = TextEditingController();
  final highController = TextEditingController();
  final highYearController = TextEditingController();
  final collegeController = TextEditingController();
  final collegeYearController = TextEditingController();

  String output = '';

  void submitForm() {
    setState(() {
      output = '''
Name: ${nameController.text}
Mobile Number: ${mobileController.text}
Email Address: ${emailController.text}
Date of Birth: ${birthController.text}
Place of Birth: ${placeBirthController.text}
Age: ${ageController.text}
Gender: ${genderController.text}
Current Address: ${currentAddressController.text}
Permanent Address: ${permanentAddressController.text}
Citizenship: ${citizenshipController.text}
Nationality: ${nationalityController.text}
Civil Status: ${civilStatusController.text}

Educational Background
Elementary: ${elementaryController.text}
Elementary Graduate Date: ${elementaryYearController.text}
High School: ${highController.text}
High School Graduate Date: ${highYearController.text}
College: ${collegeController.text}
College Graduate Date: ${collegeYearController.text}
''';
    });
  }

  Widget inputField({
    required TextEditingController controller,
    required String label,
    TextInputType? keyboardType,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xFFE0E0E0),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.teal,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 12,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.teal,
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    birthController.dispose();
    placeBirthController.dispose();
    ageController.dispose();
    genderController.dispose();
    currentAddressController.dispose();
    permanentAddressController.dispose();
    citizenshipController.dispose();
    nationalityController.dispose();
    civilStatusController.dispose();

    elementaryController.dispose();
    elementaryYearController.dispose();
    highController.dispose();
    highYearController.dispose();
    collegeController.dispose();
    collegeYearController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bio Data',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Personal Information',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'Please enter your personal details.',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            inputField(
              controller: nameController,
              label: 'Full Name',
            ),

            inputField(
              controller: mobileController,
              label: 'Mobile Number',
              keyboardType: TextInputType.phone,
            ),

            inputField(
              controller: emailController,
              label: 'Email Address',
              keyboardType: TextInputType.emailAddress,
            ),

            inputField(
              controller: birthController,
              label: 'Date of Birth',
            ),

            inputField(
              controller: placeBirthController,
              label: 'Place of Birth',
            ),

            inputField(
              controller: ageController,
              label: 'Age',
              keyboardType: TextInputType.number,
            ),

            inputField(
              controller: genderController,
              label: 'Gender',
            ),

            inputField(
              controller: currentAddressController,
              label: 'Current Address',
            ),

            inputField(
              controller: permanentAddressController,
              label: 'Permanent Address',
            ),

            inputField(
              controller: citizenshipController,
              label: 'Citizenship',
            ),

            inputField(
              controller: nationalityController,
              label: 'Nationality',
            ),

            inputField(
              controller: civilStatusController,
              label: 'Civil Status',
            ),

            sectionTitle('Educational Background'),

            inputField(
              controller: elementaryController,
              label: 'Elementary School',
            ),

            inputField(
              controller: elementaryYearController,
              label: 'Elementary Graduate Date',
            ),

            inputField(
              controller: highController,
              label: 'High School',
            ),

            inputField(
              controller: highYearController,
              label: 'High School Graduate Date',
            ),

            inputField(
              controller: collegeController,
              label: 'College School',
            ),

            inputField(
              controller: collegeYearController,
              label: 'College Graduate Date',
            ),

            const SizedBox(height: 15),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            if (output.isNotEmpty) ...[
              const SizedBox(height: 25),

              const Text(
                'Submitted Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFFE0E0E0),
                  ),
                ),
                child: Text(
                  output,
                  style: const TextStyle(
                    fontSize: 14,
                    height: 1.6,
                  ),
                ),
              ),
            ],

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}