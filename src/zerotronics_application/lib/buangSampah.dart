import 'package:aplikasi_alpha/login_page.dart';
import 'package:flutter/material.dart';

Color textField = Color.fromARGB(234, 211, 210, 224);
Color text = Color.fromARGB(234, 55, 50, 104);

// Buang Sampah
class BuangSampah extends StatefulWidget {
  const BuangSampah({Key? key}) : super(key: key);

  @override
  State<BuangSampah> createState() => _BuangSampahState();
}

class _BuangSampahState extends State<BuangSampah> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 227, 239),
      body: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Row(
                  children: [
                    Container(
                      width: 55,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: textField,
                            onPrimary: Color.fromARGB(255, 229, 223, 223),
                            elevation: 0.0,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: null,
                          child: Icon(Icons.arrow_back)),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Buang Sampah",
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: text,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Deskripsi Sampah",
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: text,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: text,
                ),
              ),
              Text(
                "Jenis Sampah",
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: text,
                ),
              ),
              Trash(),
              Text(
                "Berat Sampah",
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: text,
                ),
              ),
              Weight(),
              Text(
                "Deskripsi Sampah",
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: text,
                ),
              ),
              Description(),
              Text(
                "Titik Pengambilan",
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: text,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: text,
                ),
              ),
            ]),
          ])),
    );
  }
}

class Trash extends StatefulWidget {
  const Trash({Key? key}) : super(key: key);

  @override
  State<Trash> createState() => _TrashState();
}

class _TrashState extends State<Trash> {
  List<String> items = [
    'pilih jenis sampah',
    'Peralatan rumah tangga besar',
    'Peralatan rumah tangga kecil',
    'Perangkat IT dan telekomunikasi',
    'Alat Penerangan dan Baterai',
    'Peralatan Olahraga, Rekreasi, dan Mainan Elektronik'
  ];
  String? selectedItem = 'pilih jenis sampah';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
      height: 60,
      child: DropdownButtonFormField<String>(
        isExpanded: true,
        decoration: InputDecoration(
            fillColor: textField,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 1, color: textField))),
        value: selectedItem,
        items: items
            .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 18,
                    color: text,
                  ),
                )))
            .toList(),
        onChanged: (item) => setState(() => selectedItem = item),
      ),
    );
  }
}

class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  double number = 0.0;
  void tekanTombol() {
    setState(() {
      number = number + 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
        height: 60,
        decoration: BoxDecoration(
          color: textField,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                flex: 1,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: textField,
                      onPrimary: Colors.black,
                      elevation: 0.0,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () {
                      setState(() {
                        number = number - 0.1;
                      });
                    },
                    child: Icon(Icons.remove))),
            Flexible(
              flex: 3,
              child: Text(
                number.toStringAsFixed(2) + " kg",
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 18,
                  color: text,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: textField,
                    onPrimary: Colors.black,
                    elevation: 0.0,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {
                    setState(() {
                      number = number + 0.1;
                    });
                  },
                  child: Icon(Icons.add)),
            ),
          ],
        ));
  }
}

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 50),
      height: 62,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextField(
            style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 18,
              color: text,
            ),
            decoration: InputDecoration(
                hintText: "'Ada baterai kembung'",
                fillColor: textField,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(width: 1, color: textField))),
            onChanged: (value) {
              setState(() {});
            },
            controller: controller,
          ),
        ],
      ),
    );
  }
}
