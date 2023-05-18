import 'package:flutter/material.dart';
Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blueGrey,
  bool isUpperCase = true,
  double radius = 3.0,
  function,
  required  text,
}) =>
    Container(
      width: width,
      height: 50.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

Widget defaultTextButton({
  required  function,
  required  text,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text.toUpperCase(),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  onSubmit,
  onChange,
  onTap,
  bool isPassword = false,
  required  validate,
  required String label,
  required IconData prefix,
  suffix,
  suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
          onPressed: suffixPressed,
          icon: Icon(
            suffix,
          ),
        )
            : null,
        border: OutlineInputBorder(),
      ),
    );

Widget buildTaskItem(Map model, context) => Dismissible(
    key: Key(model['id'].toString()),
    child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
            children: [
              CircleAvatar(
                radius: 40.0,
                child: Text(
                  '${model['time']}',
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${model['title']}',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${model['date']}',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),])));
void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

void navigateAndFinish(
    context,
    widget,
    ) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
          (route) {
        return false;
      },
    );

// SizedBox(
//   width: 20.0,
// ),
// IconButton(
//   onPressed: () {
//     AppCubit.get(context).updateData(
//       status: 'done',
//       id: model['id'],
//     );
//   },
//   icon: Icon(
//     Icons.check_box,
//     color: Colors.green,
//   ),
// ),
//         IconButton(
//           onPressed: () {
//             AppCubit.get(context).updateData(
//               status: 'archive',
//               id: model['id'],
//             );
//           },
//           icon: Icon(
//             Icons.archive,
//             color: Colors.black45,
//           ),
//         ),
//       ],
//     ),
//   ),
//   onDismissed: (direction) {
//     AppCubit.get(context).deleteData(
//       id: model['id'],
//     );
//   },
// );