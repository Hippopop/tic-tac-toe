import 'dart:developer';

import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/features/auth/controller/auth_controller.dart';
import 'package:tic_tac_toe/src/features/auth/domain/models/user_model.dart';
import 'package:tic_tac_toe/src/features/auth/view/widgets/button_widget.dart';
import 'package:tic_tac_toe/src/features/create/controller/create_controller.dart';
import 'package:tic_tac_toe/src/features/global/widgets/bottom_bar.dart';
import 'package:tic_tac_toe/src/features/global/widgets/top_bar.dart';
import 'package:tic_tac_toe/src/services/data_source/user_provider/user_controller.dart';
import 'package:tic_tac_toe/src/services/theme/flutter_flow_theme.dart';

import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(callApiForData);
  }

  callApiForData() {
    if (_controller.text.length > 3) {
      context.read<UserController>().fetchUserList(_controller.text);
    }
  }

  User? _selectedUser;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CreateController(requestHandler: context.read()),
      builder: (context, child) => Scaffold(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (_selectedUser != null)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Card(
                            child: Row(
                              children: [
                                Expanded(
                                  child: UserWidget(
                                    user: _selectedUser!,
                                    padding: const EdgeInsets.all(8),
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      TextFormField(
                        controller: _controller,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: FlutterFlowTheme.of(context).bodyText2,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          suffixIcon: const Icon(
                            Icons.search,
                            color: Color(0xFF757575),
                            size: 16,
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                      Expanded(
                        child: Consumer<UserController>(
                          builder: (context, value, child) {
                            List<User> users = value.userList
                                .where((element) => element.name
                                    .toLowerCase()
                                    .contains(_controller.text.toLowerCase()))
                                .toList();
                            users.removeWhere((element) =>
                                element.id ==
                                context.read<AuthController>().currentUser?.id);
                            log("${users.map((e) => e.id).toList()}");
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 4, 0, 0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16, 16, 16, 16),
                                  child: ListView.builder(
                                    itemCount: users.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) =>
                                        GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _selectedUser = users[index];
                                        });
                                      },
                                      child: UserWidget(
                                        user: users[index],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          // child: ,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: FFButtonWidget(
                          onPressed: context.watch<CreateController>().isLoading
                              ? null
                              : () async {
                                  if (_selectedUser == null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        backgroundColor: Colors.red,
                                        content: Text(
                                            "Select a user by clicking on name!"),
                                      ),
                                    );
                                  } else {
                                    final res = await context
                                        .read<CreateController>()
                                        .createGame(_selectedUser!);
                                    if (res != null && context.mounted) {
                                      context
                                          .pushReplacement("/game/${res.id}");
                                    }
                                  }
                                },
                          text: context.watch<CreateController>().isLoading
                              ? "Loading..."
                              : 'Create',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 56,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class UserWidget extends StatelessWidget {
  const UserWidget({
    super.key,
    this.padding,
    required this.user,
  });
  final User user;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 24,
            height: 24,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              'https://picsum.photos/seed/257/600',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
            child: Text(
              user.name,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
