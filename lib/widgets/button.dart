import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Button extends StatelessWidget {
	final String text;
	final String color;
	final String textColor;
	final Function callback;

	const Button ({
		super.key, 
		required this.text,
		required this.color,
		required this.textColor,
		required this.callback
	});

  @override
  Widget build(BuildContext context) {
    return Container(
			margin: const EdgeInsets.all(10),
			child: SizedBox(
				width: 70,
				height: 70,
				child: MaterialButton(
					color: HexColor(color),
					shape: const CircleBorder(),
					onPressed: () => callback(text),
					child: Padding(
						padding: const EdgeInsets.all(1),
						child: Text(
							text,
							style: GoogleFonts.rubik(
								textStyle: TextStyle(
									fontSize: 24,
									color: HexColor(textColor),
								),
							),
						),
					),
				)
			),
		);
  }
}
