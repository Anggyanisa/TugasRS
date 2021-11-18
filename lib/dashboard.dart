import 'package:flutter/material.dart';

class DashboardRs extends StatefulWidget {
  const DashboardRs({Key? key}) : super(key: key);

  @override
  _DashboardRsState createState() => _DashboardRsState();
}

class _DashboardRsState extends State<DashboardRs> {
  TextEditingController inputnama = TextEditingController();
  TextEditingController inputlamainap = TextEditingController();
  TextEditingController visitdokter = TextEditingController();
  String? _valFriends;
  double biayakamar = 0;
  double biayadokter = 0;
  double totalbayar = 0;
  double totalbiayakamar = 0;
  double totalbiayadokter = 0;
  double inap = 0;
  double visit = 0;

  List _myFriends = [
    "Kelas 1",
    "Kelas 2",
    "Kelas 3",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Rawat Inap"),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Column(
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                      "Nama Pasien",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    // ignore: prefer_const_constructors
                    Expanded(
                      child: TextField(
                        controller: inputnama,
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            isDense: true,
                            hintText: 'input nama pasoen',
                            hintStyle: TextStyle(fontSize: 12)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                      "Lama Inap",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    // ignore: prefer_const_constructors
                    Expanded(
                      child: TextField(
                        controller: inputlamainap,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                      "Visit Dokter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    // ignore: prefer_const_constructors
                    Expanded(
                      child: TextField(
                        controller: visitdokter,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                        child: Text(
                      "Kelas",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      height: 40,
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: DropdownButton(
                        hint: const Text("Pilih kelas"),
                        value: _valFriends,
                        items: _myFriends.map((value) {
                          return DropdownMenuItem(
                            child: Text(value),
                            value: value,
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _valFriends = value.toString();
                            //Untuk memberitahu _valFriends bahwa isi nya akan diubah sesuai dengan value yang kita pilih
                            if (_valFriends == "Kelas 1") {
                              biayakamar = 100000;
                              biayadokter = 150000;
                              String hasilinputinap =
                                  inputlamainap.text.toString();
                              inap = double.parse(hasilinputinap);
                              String hasilinputvisit =
                                  visitdokter.text.toString();
                              visit = double.parse(hasilinputvisit);
                              totalbiayakamar = biayakamar * inap;
                              totalbiayadokter = biayadokter * visit;
                              totalbayar = totalbiayakamar + totalbiayadokter;
                              setState(() {});
                            } else if (_valFriends == "Kelas 2") {
                              biayakamar = 75000;
                              biayadokter = 100000;
                              String hasilinputinap =
                                  inputlamainap.text.toString();
                              inap = double.parse(hasilinputinap);
                              String hasilinputvisit =
                                  visitdokter.text.toString();
                              visit = double.parse(hasilinputvisit);
                              totalbiayakamar = biayakamar * inap;
                              totalbiayadokter = biayadokter * visit;
                              totalbayar = totalbiayakamar + totalbiayadokter;
                              setState(() {});
                            } else if (_valFriends == "Kelas 3") {
                              biayakamar = 50000;
                              biayadokter = 25000;
                              String hasilinputinap =
                                  inputlamainap.text.toString();
                              inap = double.parse(hasilinputinap);
                              String hasilinputvisit =
                                  visitdokter.text.toString();
                              visit = double.parse(hasilinputvisit);
                              totalbiayakamar = biayakamar * inap;
                              totalbiayadokter = biayadokter * visit;
                              totalbayar = totalbiayakamar + totalbiayadokter;
                              setState(() {});
                            }
                          });
                        },
                      ),
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Biaya-Biaya"),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                      "Biaya Kamar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    // ignore: prefer_const_constructors
                    Expanded(
                        child: Text(
                      "@" + biayakamar.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      "=" + totalbiayakamar.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                      "Biaya Dokter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    // ignore: prefer_const_constructors
                    Expanded(
                        child: Text(
                      "@" + biayadokter.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      "=" + totalbiayadokter.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Expanded(
                        child: Text(
                      "Total Biaya =",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                    // ignore: prefer_const_constructors
                    Expanded(
                        child: Text(
                      "Rp." + totalbayar.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
