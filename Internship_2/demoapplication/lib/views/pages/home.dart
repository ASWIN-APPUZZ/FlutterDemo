import 'package:demoapplication/src/core/colors/colors.dart';
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

        // SafeArea(
        //   child: Card(
        //     shadowColor: Colors.transparent,
        //     margin: const EdgeInsets.all(8.0),
        //     child: SizedBox.expand(
        //       child: SingleChildScrollView(
        //         padding: EdgeInsets.all(8.0),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.stretch,
        //           children: [
        //             Padding(padding: EdgeInsets.all(8.0)),
        //             Card(
        //               elevation: 0,
        //               child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.stretch,
        //                   children: [
        //                     TextButton.icon(
        //                       onPressed: () {},
        //                       icon: Icon(Icons.menu),
        //                       label: Text(""),
        //                     ),
        //                     Text(
        //                       'Lessons for you',
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           color: AppColors.text,
        //                           fontSize: 24),
        //                     )
        //                   ]),
        //             ),
        //             Text(
        //               "FILTERED BY",
        //               textAlign: TextAlign.left,
        //               style: TextStyle(
        //                 color: AppColors.text,
        //               ),
        //             ),
        //             Row(
        //               children: [
        //                 ElevatedButton(onPressed: () {}, child: Text("Design")),
        //                 ElevatedButton(
        //                     onPressed: () {}, child: Text("Art&craft")),
        //                 ElevatedButton.icon(
        //                     onPressed: () {},
        //                     icon: Icon(Icons.location_on_outlined),
        //                     label: Text("Prague"))
        //               ],
        //             ),
        //             Row(
        //               children: [
        //                 ElevatedButton(onPressed: () {}, child: Text("Monday")),
        //                 ElevatedButton(
        //                     onPressed: () {}, child: Text("2+ spot")),
        //                 ElevatedButton(
        //                     onPressed: () {}, child: const Text("300-980 KO"))
        //               ],
        //             ),
        //             Row(
        //               children: <Widget>[
        //                 Expanded(
        //                   flex: 3,
        //                   child: Card(
        //                     child: SizedBox(
        //                       child: Column(children: [
        //                         Text("2/7 SPOTS LEFT"),
        //                         Image.asset('assets/bus.png'),
        //                         Row(
        //                           children: <Widget>[
        //                             Expanded(
        //                               flex: 3,
        //                               child: Text("Best UI/UX practices"),
        //                             ),
        //                             Expanded(flex: 3, child: Text("800 KO"))
        //                           ],
        //                         ),
        //                         Text(
        //                           "By Marian Fusek",
        //                           textAlign: TextAlign.start,
        //                         )
        //                       ]),
        //                     ),
        //                   ),
        //                 ),
        //                 Expanded(
        //                   flex: 3,
        //                   child: Card(
        //                     child: SizedBox(
        //                       // width: 300,
        //                       // height: 100,
        //                       child: Column(children: [
        //                         Text("2/7 SPOTS LEFT"),
        //                         Image.asset('assets/bus.png'),
        //                         Row(
        //                           children: <Widget>[
        //                             Expanded(
        //                               flex: 3,
        //                               child: Text("Best UI/UX practices"),
        //                             ),
        //                             Expanded(flex: 3, child: Text("800 KO"))
        //                           ],
        //                         ),
        //                         Text("By Marian Fusek")
        //                       ]),
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             Row(
        //               children: <Widget>[
        //                 Expanded(
        //                   flex: 3,
        //                   child: Card(
        //                     child: SizedBox(
        //                       child: Column(children: <Widget>[
        //                         Text("2/7 SPOTS LEFT"),
        //                         Image.asset('assets/bus.png'),
        //                         Row(
        //                           children: <Widget>[
        //                             Expanded(
        //                               flex: 3,
        //                               child: Text("Best UI/UX practices"),
        //                             ),
        //                             Expanded(flex: 3, child: Text("800 KO"))
        //                           ],
        //                         ),
        //                         Text("By Marian Fusek")
        //                       ]),
        //                     ),
        //                   ),
        //                 ),
        //                 Expanded(
        //                   flex: 3,
        //                   child: Card(
        //                     child: SizedBox(
        //                       child: Column(children: [
        //                         Text("2/7 SPOTS LEFT"),
        //                         Image.asset('assets/bus.png'),
        //                         Row(
        //                           children: <Widget>[
        //                             Expanded(
        //                               flex: 3,
        //                               child: Text("Best UI/UX practices"),
        //                             ),
        //                             Expanded(flex: 3, child: Text("800 KO"))
        //                           ],
        //                         ),
        //                         Text("By Marian Fusek")
        //                       ]),
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             ElevatedButton(
        //                 onPressed: () {}, child: Text("See All Lessons")),

        //             SizedBox(
        //               height: 20,
        //             ),
        //             //other cate.
        //             Text(
        //               "OTHER CATEROGIES",
        //               style: TextStyle(
        //                 color: AppColors.text,
        //               ),
        //               textAlign: TextAlign.start,
        //             ),

        //             Row(
        //               children: <Widget>[
        //                 Expanded(
        //                   flex: 2,
        //                   child: Card(
        //                     child: SizedBox(
        //                       child: Image.network(
        //                           "https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),
        //                     ),
        //                   ),
        //                 ),
        //                 Expanded(
        //                   flex: 2,
        //                   child: Card(
        //                     child: SizedBox(
        //                       child: Image.network(
        //                           "https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),
        //                     ),
        //                   ),
        //                 ),
        //                 Expanded(
        //                   flex: 2,
        //                   child: Card(
        //                     child: SizedBox(
        //                       child: Image.network(
        //                           "https://images.pexels.com/photos/2251798/pexels-photo-2251798.jpeg?cs=srgb&dl=pexels-mark-arron-smith-2251798.jpg&fm=jpg"),
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             Row(
        //               children: <Widget>[
        //                 Expanded(
        //                   flex: 2,
        //                   child: Card(
        //                     child: Column(children: [
        //                       Image.asset('assets/bus.png'),
        //                       Text("data")
        //                     ]),
        //                   ),
        //                 ),
        //                 Expanded(
        //                   flex: 2,
        //                   child: Card(
        //                     child: SizedBox(
        //                       child: Image.asset('assets/bus.png'),
        //                     ),
        //                   ),
        //                 ),
        //                 Expanded(
        //                   flex: 2,
        //                   child: Card(
        //                     child: SizedBox(
        //                       child: Image.asset('assets/bus.png'),
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),

        // Schedule
        // Card(
        //   shadowColor: Colors.transparent,
        //   margin: const EdgeInsets.all(8.0),
        //   child: SizedBox.expand(
        //     child: Center(
        //       child: Text(
        //         'Schedule',
        //         style: theme.textTheme.titleLarge,
        //       ),
        //     ),
        //   ),
        // ),

        // Messages page
        // Card(
        //   shadowColor: Colors.transparent,
        //   margin: const EdgeInsets.all(8.0),
        //   child: SizedBox.expand(
        //     child: Center(
        //       child: Text(
        //         'Messages',
        //         style: theme.textTheme.titleLarge,
        //       ),
        //     ),
        //   ),
        // ),
        //profile page
        // Card(
        //   shadowColor: Colors.transparent,
        //   margin: const EdgeInsets.all(8.0),
        //   child: SizedBox.expand(
        //     child: Center(
        //       child: Text(
        //         'Profile',
        //         style: theme.textTheme.titleLarge,
        //       ),
        //     ),
        //   ),
        // ),
      ][currentPageIndex],
    );
  }
}
