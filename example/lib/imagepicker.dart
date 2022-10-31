import 'package:country_picker/country_picker.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';

class ImageVi extends StatefulWidget {
  ImageVi({Key? key}) : super(key: key);

  @override
  State<ImageVi> createState() => _ImageViState();
}

class _ImageViState extends State<ImageVi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              showCountryPicker(
                context: context,
                showPhoneCode: true, // optional. Shows phone code before the country name.
                onSelect: (Country country) {
                  print('Select country: ${country.displayName}');
                },
              );

            },child: const Text("pick County"),),
            const SizedBox(height: 120,),
        SelectState(
          onCountryChanged: (value) {
            setState(() {
              print("Data:::::${value}");
            });
          },
          onStateChanged:(value) {
            setState(() {
              print("Data:::::${value}");
            });
          },
          onCityChanged:(value) {
            setState(() {
              print("Data:::::${value}");
            });
          },

        ),
            ElevatedButton(onPressed: (){

            }, child: Text("data"))
          ],
        ),
      ),
    );
  }


}
