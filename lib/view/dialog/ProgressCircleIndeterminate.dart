import 'package:flutter/widgets.dart';
import 'package:icorrect/theme/app_themes.dart';

// class ProgressCircle extends CustomPainter {
//   bool firstAnimationOver = false;
//   int cont = 0;
//   double radius1 = 0;
//   double radius2 = 0;
//   int backgroundColor = AppThemes.colors.gray as int;
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     if (!firstAnimationOver) {
//
//     }
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return null;
//   }
//
//   void drawFirstAnimation(Canvas canvas, Size size) {
//     if (radius1 < size.width / 2) {
//       Paint paint = new Paint();
//       paint.isAntiAlias;
//       paint.color;
//       radius1 = (radius1 >= size.width / 2) ? size.width / 2 : radius1+1;
//       canvas.drawCircle(c, radius, paint)
//     canvas.drawCircle(size.width/2, size.width/2, radius1, paint);
//     }else{
//     Bitmap bitmap = Bitmap.createBitmap(canvas.getWidth(), canvas.getHeight(), Bitmap.Config.ARGB_8888);
//     Canvas temp = new Canvas(bitmap);
//     Paint paint = new Paint();
//     paint.setAntiAlias(true);
//     paint.setColor(makePressColor());
//     temp.drawCircle(getWidth()/2, getHeight()/2, getHeight()/2, paint);
//     Paint transparentPaint = new Paint();
//     transparentPaint.setAntiAlias(true);
//     transparentPaint.setColor(getResources().getColor(android.R.color.transparent));
//     transparentPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
//     if(cont >= 50){
//     radius2 = (radius2 >= getWidth()/2)? (float)getWidth()/2 : radius2+1;
//     }else{
//     radius2 = (radius2 >= getWidth()/2-Utils.dpToPx(4, getResources()))? (float)getWidth()/2-Utils.dpToPx(4, getResources()) : radius2+1;
//     }
//     temp.drawCircle(getWidth()/2, getHeight()/2, radius2, transparentPaint);
//     canvas.drawBitmap(bitmap, 0, 0, new Paint());
//     if(radius2 >= getWidth()/2-Utils.dpToPx(4, getResources()))
//     cont++;
//     if(radius2 >= getWidth()/2)
//     firstAnimationOver = true;
//     }
//   }
//
//   Color _makePressColor() {
//     int r = (backgroundColor >> 16) & 0xFF;
//     int g = (backgroundColor >> 8) & 0xFF;
//     int b = (backgroundColor >> 0) & 0xFF;
// //		r = (r+90 > 245) ? 245 : r+90;
// //		g = (g+90 > 245) ? 245 : g+90;
// //		b = (b+90 > 245) ? 245 : b+90;
//     return Color.fromARGB(128, r, g, b);
//   }
// }
