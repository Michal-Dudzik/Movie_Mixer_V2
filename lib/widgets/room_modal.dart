import 'package:flutter/material.dart';
import 'package:movie_mixer/core/app_export.dart';
import 'package:movie_mixer/widgets/custom_text_form_field.dart';

import 'hero_dialog_route.dart';

class AddTodoButton extends StatelessWidget {
  const AddTodoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(HeroDialogRoute(builder: (context) {
            return const _AddTodoPopupCard();
          }));
        },
        child: Hero(
          tag: _heroAddTodo,
          child: CustomButton(
              height: getVerticalSize(40),
              width: getHorizontalSize(181),
              text: "Discover it!",
              variant: ButtonVariant.Purple,
              fontStyle: ButtonFontStyle.RobotoRomanMedium20),
        ),
      ),
    );
  }
}

/// Tag-value used for the add todo popup button.
const String _heroAddTodo = 'add-todo-hero';

class _AddTodoPopupCard extends StatelessWidget {
  const _AddTodoPopupCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: _heroAddTodo,
          child: Material(
            color: ColorConstant.purple,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomTextFormField(
                            focusNode: FocusNode(),
                            hintText: "Room code",
                            width: getHorizontalSize(180),
                            margin: getMargin(right: 15),
                            textInputAction: TextInputAction.done),
                        IconButton(
                            icon: const Icon(Icons.check_circle_rounded),
                            color: ColorConstant.cyan,
                            iconSize: 40,
                            onPressed: () => onJoinRoom(context)),
                      ],
                    ),
                    CustomButton(
                        height: getVerticalSize(40),
                        width: getHorizontalSize(248),
                        text: "Create new room",
                        variant: ButtonVariant.OutlineBlack9003f,
                        fontStyle: ButtonFontStyle.RobotoRomanMedium20,
                        onTap: () => onRoomCreate(context),
                        alignment: Alignment.bottomCenter)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

onJoinRoom(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.waitingRoomScreen);
}

onRoomCreate(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.roomPreferencesScreen);
}
