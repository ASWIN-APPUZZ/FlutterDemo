import 'package:flutter/material.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Lessons for you"),
        actions: [
          Icon(Icons.menu),
        ],
      ),

      //Bottom Navigationbar
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Color.fromARGB(255, 147, 148, 171),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          // Tab1
          NavigationDestination(
            selectedIcon: Icon(Icons.search),
            icon: Icon(Icons.search),
            label: 'Lessons',
          ),
          //Tab 2
          NavigationDestination(
            icon: Icon(Icons.calendar_month),
            label: 'Schedule',
          ),
          //Tab 3
          NavigationDestination(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          //Tab 4
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: <Widget>[
        // Lessons
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    "FILTERED BY",
                  ),
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("Design")),
                      ElevatedButton(
                          onPressed: () {}, child: Text("Art&craft")),
                      ElevatedButton(onPressed: () {}, child: Text("Prague"))
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("Monday")),
                      ElevatedButton(onPressed: () {}, child: Text("2+ spot")),
                      ElevatedButton(
                          onPressed: () {}, child: const Text("300-980 KO"))
                    ],
                  ),
                  const Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Card(
                          child: SizedBox(
                            // width: 300,
                            // height: 100,
                            child: Column(children: [
                              Text("2/7 SPOTS LEFT"),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 3,
                                    child: Text("Best UI/UX practices"),
                                  ),
                                  Expanded(flex: 3, child: Text("800 KO"))
                                ],
                              )
                            ]),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Card(
                          child: SizedBox(
                            // width: 300,
                            // height: 100,
                            child: Column(children: [
                              Text("2/7 SPOTS LEFT"),
                              // Image: Image.network(""),
                              
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 3,
                                    child: Text("Best UI/UX practices"),
                                  ),
                                  Expanded(flex: 3, child: Text("800 KO"))
                                ],
                              )
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Card(
                          child: SizedBox(
                            // width: 300,
                            // height: 100,
                            child: Column(children: [
                              Text("2/7 SPOTS LEFT"),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 3,
                                    child: Text("Best UI/UX practices"),
                                  ),
                                  Expanded(flex: 3, child: Text("800 KO"))
                                ],
                              )
                            ]),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Card(
                          child: SizedBox(
                            // width: 300,
                            // height: 100,
                            child: Column(children: [
                              Text("2/7 SPOTS LEFT"),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 3,
                                    child: Text("Best UI/UX practices"),
                                  ),
                                  Expanded(flex: 3, child: Text("800 KO"))
                                ],
                              )
                            ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: Text("See All Lessons")),

                  //other cate.
                  Text("OTHER CATEROGIES"),

                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Card(
                          child: SizedBox(
                            child:
                            Image.network("https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),   
                          ),
                        ),
                      ),
                       Expanded(
                        flex: 2,
                        child: Card(
                          child: SizedBox(
                            child:
                            Image.network("https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),   
                          ),
                        ),
                      ),

                        Expanded(
                        flex: 2,
                        child: Card(
                          child: SizedBox(
                            child:
                            Image.network("https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),   
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Card(
                          child: SizedBox(
                            child:
                            Image.network("https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),   
                          ),
                        ),
                      ),
                       Expanded(
                        flex: 2,
                        child: Card(
                          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                          child: SizedBox(
                            child:
                            Image.network("https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),   
                          ),
                        ),
                      ),

                        Expanded(
                        flex: 2,
                        child: Card(
                          child: SizedBox(
                            child:
                            Image.network("https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),   
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        // Schedule
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Schedule',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),

        // Messages page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Messages',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),
        //profile page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Profile',
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
        ),
      ][currentPageIndex],
    );
  }
}
