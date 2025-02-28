import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment:Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 330,
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(

                    filled: true,
                    hintStyle: TextStyle(color: Colors.black),
                    hintText: 'Search Product ...',
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  cursorColor: Colors.black,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
