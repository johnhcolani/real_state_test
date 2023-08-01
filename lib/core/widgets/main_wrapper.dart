import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_state_app/core/resources/color_manager.dart';
import 'package:real_state_app/features/fearture_one/presentation_layer/blocs/simpsons_bloc.dart';
import '../../features/fearture_one/presentation_layer/blocs/simpsons_status.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({Key? key}) : super(key: key);

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SimpsonsBloc>(context).add(LoadSimpsonsEvent("simpsons"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteGreen,
      body: BlocBuilder<SimpsonsBloc, SimpsonsState>(
        builder: (context, state) {
          if (state.simpsonsStatus is SimpsonsLoading) {
            return const Center(child: Text('Loading...'));
          }
          if (state.simpsonsStatus is SimpsonsCompleted) {
            return const Center(child: Text('Completed...'));
          }
          if (state.simpsonsStatus is SimpsonsError) {
            return const Center(child: Text('Error...'));
          }
          return Container();
        },
      ),
    );
  }
}
