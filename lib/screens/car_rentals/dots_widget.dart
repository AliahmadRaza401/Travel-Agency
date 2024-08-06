// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:travel_agency/utils/colors.dart';

// class DotsScreen extends StatefulWidget {
//   const DotsScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _DotsScreenState createState() => _DotsScreenState();
// }

// class _DotsScreenState extends State<DotsScreen> {
//   final _totalDots = 5;
//   int _currentPosition = 0;

//   int _validPosition(int position) {
//     if (position >= _totalDots) return 0;
//     if (position < 0) return _totalDots - 1;
//     return position;
//   }

//   void _updatePosition(int position) {
//     setState(() => _currentPosition = _validPosition(position));
//   }

//   Widget _buildRow(List<Widget> widgets) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 24.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: widgets,
//       ),
//     );
//   }

//   String getPrettyCurrPosition() {
//     return (_currentPosition + 1.0).toStringAsPrecision(3);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final decorator = DotsDecorator(
//       activeColor: KColors.kiconcolor,
//       size: Size.square(15.0),
//       activeSize: Size.square(35.0),
//       activeShape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(25.0),
//       ),
//     );

//     const titleStyle = TextStyle(
//       fontWeight: FontWeight.w700,
//       fontSize: 18.0,
//     );

//     return Scaffold(
//       body: Center(
//         child: ListView(
//           shrinkWrap: true,
//           padding: const EdgeInsets.all(16.0),
//           children: [
//             _buildRow([
//               Text(
//                 'Current position ${getPrettyCurrPosition()} / $_totalDots',
//                 style: titleStyle,
//               ),
//             ]),
//             _buildRow([
//               SizedBox(
//                 width: 300.0,
//                 child: Slider(
//                   value: _currentPosition.toDouble(),
//                   max: (_totalDots - 1).toDouble(),
//                   onChanged: (val) {
//                     _updatePosition(val.round());
//                   },
//                 ),
//               ),
//             ]),
//             _buildRow([
//               FloatingActionButton(
//                 child: const Icon(Icons.remove),
//                 onPressed: () {
//                   _updatePosition(max(--_currentPosition, 0));
//                 },
//               ),
//               FloatingActionButton(
//                 child: const Icon(Icons.add),
//                 onPressed: () {
//                   _updatePosition(min(
//                     ++_currentPosition,
//                     _totalDots,
//                   ));
//                 },
//               )
//             ]),
//             _buildRow([
//               Column(
//                 children: [
//                   const Text('Vertical', style: titleStyle),
//                   const SizedBox(height: 16.0),
//                   DotsIndicator(
//                     dotsCount: _totalDots,
//                     position: _currentPosition,
//                     axis: Axis.vertical,
//                     decorator: decorator,
//                     onTap: (pos) {
//                       setState(() => _currentPosition = pos);
//                     },
//                   ),
//                 ],
//               ),
//               Column(
//                 children: [
//                   const Text('Vertical reversed', style: titleStyle),
//                   const SizedBox(height: 16.0),
//                   DotsIndicator(
//                     dotsCount: _totalDots,
//                     position: _currentPosition,
//                     axis: Axis.vertical,
//                     reversed: true,
//                     decorator: decorator,
//                   ),
//                 ],
//               ),
//             ]),
//             _buildRow([
//               const Text('Horizontal', style: titleStyle),
//             ]),
//             _buildRow([
//               const Text('Individual custom dot'),
//               DotsIndicator(
//                 dotsCount: _totalDots,
//                 position: _currentPosition,
//                 decorator: DotsDecorator(
//                   colors: [
//                     KColors.kPrimary,
//                     Colors.blue,
//                     Colors.green,
//                     KColors.highgreycolor,
//                     Colors.cyan,
//                   ].reversed.toList(),
//                   activeColors: [
//                     KColors.kPrimary,
//                     Colors.blue,
//                     Colors.green,
//                     KColors.highgreycolor,
//                     Colors.cyan,
//                   ],
//                   sizes: [
//                     Size.square(40.0),
//                     Size.square(35.0),
//                     Size.square(30.0),
//                     Size.square(25.0),
//                     Size.square(20.0),
//                   ],
//                   activeSizes: [
//                     Size.square(20.0),
//                     Size.square(25.0),
//                     Size.square(30.0),
//                     Size.square(35.0),
//                     Size.square(40.0),
//                   ],
//                   shapes: [
//                     RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(5.0)),
//                     RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10.0)),
//                     RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15.0)),
//                     RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20.0)),
//                     RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25.0)),
//                   ],
//                   activeShapes: [
//                     RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(5.0)),
//                     RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10.0)),
//                     RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(15.0)),
//                     RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20.0)),
//                     RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25.0)),
//                   ],
//                 ),
//               ),
//             ]),
//             _buildRow([
//               const Text('Reversed'),
//               DotsIndicator(
//                 dotsCount: _totalDots,
//                 position: _currentPosition,
//                 reversed: true,
//                 decorator: decorator,
//               ),
//             ]),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';
import 'package:travel_agency/screens/car_rentals/dot_controller.dart';
import 'package:travel_agency/utils/colors.dart';

class DotsScreen extends StatelessWidget {
  final DotsController dotsController = Get.put(DotsController());

  DotsScreen({super.key});

  Widget _buildRow(List<Widget> widgets) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widgets,
      ),
    );
  }

  String getPrettyCurrPosition(int position) {
    return (position + 1.0).toStringAsPrecision(3);
  }

  @override
  Widget build(BuildContext context) {
    final decorator = DotsDecorator(
      activeColor: KColors.kiconcolor,
      size: const Size.square(15.0),
      activeSize: const Size.square(35.0),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    );

    const titleStyle = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18.0,
    );

    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16.0),
          children: [
            Obx(() => _buildRow([
                  Text(
                    'Current position ${getPrettyCurrPosition(dotsController.currentPosition.value)} / ${dotsController.totalDots}',
                    style: titleStyle,
                  ),
                ])),
            Obx(() => _buildRow([
                  SizedBox(
                    width: 300.0,
                    child: Slider(
                      value: dotsController.currentPosition.value.toDouble(),
                      max: (dotsController.totalDots - 1).toDouble(),
                      onChanged: (val) {
                        dotsController.updatePosition(val.round());
                      },
                    ),
                  ),
                ])),
            Obx(() => _buildRow([
                  FloatingActionButton(
                    child: const Icon(Icons.remove),
                    onPressed: () {
                      dotsController.updatePosition(
                          max(--dotsController.currentPosition.value, 0));
                    },
                  ),
                  FloatingActionButton(
                    child: const Icon(Icons.add),
                    onPressed: () {
                      dotsController.updatePosition(min(
                        ++dotsController.currentPosition.value,
                        dotsController.totalDots,
                      ));
                    },
                  )
                ])),
            Obx(() => _buildRow([
                  Column(
                    children: [
                      const Text('Vertical', style: titleStyle),
                      const SizedBox(height: 16.0),
                      DotsIndicator(
                        dotsCount: dotsController.totalDots,
                        position: dotsController.currentPosition.value,
                        axis: Axis.vertical,
                        decorator: decorator,
                        onTap: (pos) {
                          dotsController.updatePosition(pos);
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Vertical reversed', style: titleStyle),
                      const SizedBox(height: 16.0),
                      DotsIndicator(
                        dotsCount: dotsController.totalDots,
                        position: dotsController.currentPosition.value,
                        axis: Axis.vertical,
                        reversed: true,
                        decorator: decorator,
                      ),
                    ],
                  ),
                ])),
            _buildRow([
              const Text('Horizontal', style: titleStyle),
            ]),
            Obx(() => _buildRow([
                  const Text('Individual custom dot'),
                  DotsIndicator(
                    dotsCount: dotsController.totalDots,
                    position: dotsController.currentPosition.value,
                    decorator: DotsDecorator(
                      colors: [
                        KColors.kPrimary,
                        Colors.blue,
                        Colors.green,
                        KColors.highgreycolor,
                        Colors.cyan,
                      ].reversed.toList(),
                      activeColors: [
                        KColors.kPrimary,
                        Colors.blue,
                        Colors.green,
                        KColors.highgreycolor,
                        Colors.cyan,
                      ],
                      sizes: [
                        const Size.square(40.0),
                        const Size.square(35.0),
                        const Size.square(30.0),
                        const Size.square(25.0),
                        const Size.square(20.0),
                      ],
                      activeSizes: [
                        const Size.square(20.0),
                        const Size.square(25.0),
                        const Size.square(30.0),
                        const Size.square(35.0),
                        const Size.square(40.0),
                      ],
                      shapes: [
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                      ],
                      activeShapes: [
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                      ],
                    ),
                  ),
                ])),
            Obx(() => _buildRow([
                  const Text('Reversed'),
                  DotsIndicator(
                    dotsCount: dotsController.totalDots,
                    position: dotsController.currentPosition.value,
                    reversed: true,
                    decorator: decorator,
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}
