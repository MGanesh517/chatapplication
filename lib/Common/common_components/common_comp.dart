import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Customtextfild2 {
  static Widget textField(controller, txt, name1, clr, textcolor, suffixIcon, Function(String)? onChanged,
      {String? Function(String?)? validator, Icon? icon, Color? errorColor}) {
    return ScreenUtilInit(
      builder: (context, child) => Container(
        color: Colors.transparent,
        child: TextFormField(
          controller: controller,
          obscureText: txt,
          validator: validator,
          onChanged: onChanged,
          style: TextStyle(color: textcolor),
          decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            prefixIcon: icon,
            labelText: name1,
            labelStyle: TextStyle(color: clr),
            suffixIcon: Padding(padding: const EdgeInsets.all(10), child: suffixIcon),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            errorStyle: TextStyle(color: errorColor),
            errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: errorColor!, width: 1)),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300, width: 1), borderRadius: BorderRadius.circular(10)),
            focusedBorder:
                OutlineInputBorder(borderSide: const BorderSide(color: Color(0xff5669FF), width: 1), borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class Customtextfild {
  static Widget textField(
      {TextEditingController? controller,
      String? name1,
      Color? labelclr,
      Color? textcolor,
      Color? imagecolor,
      String? Function(String?)? validator,
      Widget? prefixIcon,
      Function(String)? onChanged,
      TextInputType? keyboardType,
      TextInputAction? textInputAction,
      Color? errorColor}) {
    return ScreenUtilInit(
      builder: (context, child) => Container(
        color: Colors.transparent,
        child: TextFormField(
          controller: controller,
          onChanged: onChanged,
          validator: validator,
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          style: TextStyle(color: textcolor),
          decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: name1,
            labelStyle: TextStyle(color: labelclr),
            prefixIcon: prefixIcon,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            errorStyle: TextStyle(color: errorColor),
            errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: errorColor!, width: 1)),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade300, width: 1), borderRadius: BorderRadius.circular(10)),
            focusedBorder:
                OutlineInputBorder(borderSide: const BorderSide(color: Color(0xff5669FF), width: 1), borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}

class CommonComponents {
  static Column defaultTextField(context,
      {TextEditingController? controller,
      String? title,
      String? hintText,
      bool? readOnly = false,
      bool? filled = false,
      bool? obScureText = false,

      // bool isPassword = false,
      // IconButton? iconButton,
      Widget? suffixIcon,
      Icon? prefixIcon,
      int? maxLength,
      int? maxLines,
      int? minLines,
      List<TextInputFormatter>? inputFormatters,
      TextInputAction? textInputAction,
      TextInputType? keyboardType,
      FocusNode? focusNode,
      TextCapitalization? textCapitalization,
      Color? color,
      // bool isInt = false,
      // bool isMobile = false,
      validator,
      void Function(String?)? onSaved,
      void Function()? onTap,
      void Function()? onEditingComplete,
      void Function(String)? onChange,
      void Function(String)? onFieldSubmitted}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title!,
            style: TextStyle(
              color: color ?? const Color(0xff24786D),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            )),
        Container(height: 8),
        TextFormField(
          
          scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom + 10),
          autofocus: false,
          obscureText: obScureText ?? false,
          maxLength: maxLength,
          key: ValueKey(title),
          readOnly: readOnly!,
          controller: controller,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          focusNode: focusNode,
          textInputAction: textInputAction,
          maxLines: obScureText==true?1:maxLines,
          minLines: minLines,
          keyboardType: keyboardType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          inputFormatters: inputFormatters ?? <TextInputFormatter>[],
          cursorColor: color,
          style: TextStyle(color: color ?? Colors.black , fontWeight: FontWeight.w400,fontSize: 15),
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              counterText: '',
              hintText: hintText,
              prefixIcon: prefixIcon,
              hintStyle: TextStyle(
                color: color ?? const Color(0xff808081) , fontSize: 15,fontWeight: FontWeight.w400),
              filled: true,
              fillColor: const Color(0xffFAFAFF),
              // border: OutlineInputBorder(
              //   borderSide: BorderSide(color: color ?? Colors.black),
              // ),
              // suffixIcon: iconButton,
              suffixIcon: suffixIcon,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none
              ),
          // style: TextStyle(
          //   fontWeight: FontWeight.w500,
          //   color: Theme.of(context).colorScheme.primary,
          //   fontSize:   AppConstants.themeConstants.fontsize_17,
          // ),
          onChanged: onChange,
          onFieldSubmitted: onFieldSubmitted,
          onSaved: onSaved,
          onTap: onTap,
          validator: validator,
          onEditingComplete: onEditingComplete,
        ),
        const SizedBox(height: 24,)
      ],
      
    );
  }
  static Column defaultDropdownSearch<T>(
      context, {
        Key? key,
        //   TextEditingController? controller,
        String? title,
        String? hintText,
        bool? enabled,
        List<T>? items,
        validator,
        Future<List<T>> Function(String)? asyncItems,
        compareFn,
        itemAsString,
        selectedItem,
        onChanged,
        itemBuilder,
        bool? showTitle =true
      }) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
      Visibility(
        visible: showTitle==true?true:false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
            Container(height: 8),
          ],
        ),
      ),
      DropdownSearch<T>(
          autoValidateMode: AutovalidateMode.onUserInteraction,
          asyncItems: asyncItems ?? asyncItems,
          items: items ?? [],
          key: ValueKey(title),
          dropdownButtonProps: const DropdownButtonProps(icon: Icon(Icons.keyboard_arrow_down)),
          // clearButtonProps: const ClearButtonProps(isVisible: true),
          validator: validator,
          compareFn: compareFn,
          enabled: enabled ?? true,
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(border: InputBorder.none,
              // border: OutlineInputBorder(
              //     borderSide: BorderSide(color: Theme.of(context).colorScheme.primaryContainer), borderRadius: BorderRadius.circular(15)),
              // labelText: title,
              filled: true,
              fillColor: const Color(0xffFAFAFF),
              labelStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w400),
              floatingLabelAlignment: FloatingLabelAlignment.start,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: "Select $title",
              // filled: true,
              // fillColor: Colors.grey[100],
            ),
          ),
          popupProps: PopupPropsMultiSelection.modalBottomSheet(
              showSelectedItems: true,
              showSearchBox: true,
              itemBuilder: itemBuilder,
              fit: FlexFit.tight,
              searchFieldProps: const TextFieldProps(
                  decoration: InputDecoration(border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xffFAFAFF),
                    // border: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Theme.of(context).colorScheme.primaryContainer), borderRadius: BorderRadius.circular(15)),
                    suffixIcon:  Icon(Icons.search),
                    // labelText: 'Search Here',
                    // labelStyle: const TextStyle(fontSize: 16),
                    // floatingLabelAlignment: FloatingLabelAlignment.start,
                    // floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: 'Search Here',
                  )),
              modalBottomSheetProps: const ModalBottomSheetProps(
                  backgroundColor: Colors.white,

                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  )),
              title: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  // boxShadow: const [BoxShadow(color: Colors.white, blurRadius: 10.0)],
                ),
                child: Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
          itemAsString: itemAsString,
          selectedItem: selectedItem,
          onChanged: onChanged),const SizedBox(height: 24)
    ]
    );
  }
}
