// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:red/dashboard/bloc/dashboard_bloc.dart';
// import 'package:red/dashboard/bloc/dashboard_event.dart';
// import 'package:red/dashboard/bloc/dashboard_state.dart';
// import 'package:red/dashboard/model/dashboard_model.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // final ApiClient apiClient = ApiClient();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocBuilder<DashboardBloc, DashboardState>(
//         builder: (context, state) {
//           if (state is DashboardLoading) {
//             CircularProgressIndicator();
//           } else if (state is DashboardLoaded) {
//             return ElevatedButton(
//               onPressed: () {
//                 context.read<DashboardBloc>().add(LoadDashboard(state.data as Location));
//               },
//               child: Text('data'),
//             );
//           }
//           return throw Exception();
//         },
//       ),
//     );
//   }
// }
