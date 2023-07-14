// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_tugas1/data/data_source/remote_data_source/remote_data_source.dart';
// import 'package:flutter_tugas1/data/repository/book_repository_impl.dart';
// import 'package:flutter_tugas1/domain/use_case/get_book_use_case.dart';
// import 'package:flutter_tugas1/prasentation/screen/home/controller/home_controller.dart';
// import 'package:get/get.dart';

// class HomeView extends StatelessWidget {
//   HomeView({super.key});

//   final homeController = HomeController(
//     getBooksUseCase: GetBooksUseCase(
//       repository: BookRepositoryImpl(
//         remoteDataSource: BookRemoteDataSource(client: Dio()),
//       ),
//     ),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GetBuilder<HomeController>(
//           init: homeController,
//           initState: (state) => homeController.getBooks(),
//           builder: (state) {
//             return ListView.builder(
//               shrinkWrap: true,
//               itemCount: state.listBooks.value.length,
//               padding: const EdgeInsets.symmetric(vertical: 8.0),
//               itemBuilder: (context, index) {
//                 return Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           state.listBooks.value[index].title ?? 'no title',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text(state.listBooks.value[index].subtitle ??
//                             'no Subtitle'),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             );
//           }),
//     );
//   }
// }
