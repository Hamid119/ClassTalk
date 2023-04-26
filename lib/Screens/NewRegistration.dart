import 'package:flutter/material.dart';

class NewRegistration extends StatefulWidget {
  const NewRegistration({Key? key}) : super(key: key);

  @override
  State<NewRegistration> createState() => _NewRegistrationState();
}

class _NewRegistrationState extends State<NewRegistration> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color(0xff8C9EFF),
        automaticallyImplyLeading: false,
        // leading: Padding(
        //   padding: const EdgeInsets.all(7.0),
        //   child: CircleAvatar(
        //     backgroundColor: Colors.transparent,
        //     radius: 3,
        //     backgroundImage: AssetImage(
        //         "assets/337873474_916500876166630_7083829185730731194_n.jpg"),
        //     // Image.asset(
        //     //     "assets/337873474_916500876166630_7083829185730731194_n.jpg"),
        //   ),
        // ),
        title: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 25,
                backgroundImage: AssetImage(
                    "assets/337873474_916500876166630_7083829185730731194_n.jpg"),
                // Image.asset(
                //     "assets/337873474_916500876166630_7083829185730731194_n.jpg"),
              ),
              SizedBox(
                width: size.width * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    //widget.courseName!,
                    "Introduction to Computing",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    // widget.teacherName!,
                    "Dr Roman",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "Class Talk",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.grey.withOpacity(0.6),
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Registration",
                style: TextStyle(fontSize: 20, color: Colors.black38),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Registration",
                      hintStyle: TextStyle(color: Colors.white),
                      // label: Text("Enter Registration"),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  color: Colors.grey,
                  onPressed: () {},
                  child: Text("Add"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
