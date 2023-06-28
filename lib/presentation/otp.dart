import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
List<String> otpValues = List.filled(6, '');
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 40,
                      color: Color(0xFFFFF5F1F),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.06,
              ),
              Image.asset(
                'assets/images/otp.png',
                width: screenWidth * 0.8,
              ),
              SizedBox(
                height: screenHeight * 0.12,
              ),
              // otp input
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    otpValues.length,
                    (index) => SizedBox(
                      width: screenWidth * 0.10,
                      height: screenHeight * 0.05,
                      child: TextField(
                        maxLength: 1,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          if (value.length == 1) {
                            setState(() {
                              otpValues[index] = value;
                            });
                            if (index < otpValues.length - 1) {
                              FocusScope.of(context).nextFocus();
                            } else {
                              // All OTP inputs have been filled
                              String otp = otpValues.join();
                              print('Entered OTP: $otp');
                              // Perform further actions with the OTP
                            }
                          }
                        },
                        decoration: InputDecoration(
                          counterText: '',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFFEB4335),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFFEB4335),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
                child:const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '00:30',
                      style: TextStyle(
                        color: Color(0xFFFFFAF8F),
                      ),
                    ),
                    Text(
                      'Resend OTP',
                      style: TextStyle(
                          color: Color(0xFFF3E3E3E),
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.1,
              ),
              SizedBox(
                height: screenHeight * 0.05,
                width: screenWidth * 0.7,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFF5F1F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}