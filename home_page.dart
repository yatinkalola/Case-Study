import 'package:case_study/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController editingController = TextEditingController();

  Widget _topSearch() {
    return Container(
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 10, right: 30, bottom: 10),
                child: TextField(
                  onChanged: (value) {},
                  controller: editingController,
                  decoration: InputDecoration(
                      labelText: "Search",
                      hintText: "Search",
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(1.0)))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                alignment: Alignment.center,
                width: 120,
                height: 40,
                child: Text(
                  "Other Filters",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.tealAccent.shade400,
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _listview() {
    return new Flexible(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                elevation: 0,
                margin: EdgeInsets.all(5),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text("Name"),
                      //Text("City"),
                      Container(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.zero,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        "https://www.shieldsgazette.com/images-i.jpimedia.uk/imagefetch/https://jpgreatcontent.co.uk/wp-content/uploads/2020/04/spain.jpg",
                                      ))),
                              width: 400,
                              height: 250,
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                          size: 40,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 45,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons
                                                    .fiber_manual_record_rounded,
                                                color: Colors.greenAccent,
                                              ),
                                              Text(
                                                "Active",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.w800,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Text(
                                            "\$${' 321,581,583'}",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 3),
                                          Text(
                                            "Arizona",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3.0,
                                          ),
                                          Text(
                                            "3 bds | 3 ba | 7121 sq ft",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Test Case Study",
          style: TextStyle(color: Colors.tealAccent.shade400),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            _topSearch(),
            _listview(),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 300.0),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.help_outline,
            color: Colors.greenAccent,
          ),
        ),
      ),
      endDrawer: MyDrawer(),
    );
  }
}
