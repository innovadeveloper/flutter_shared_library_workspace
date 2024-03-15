// ignore_for_file: depend_on_referenced_packages

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';

class ModelVisitor extends SimpleElementVisitor<void> {
  String className = '';
  Map<String, dynamic> fields = {};

  @override
  void visitConstructorElement(ConstructorElement element) {
    final returnType = element.returnType.toString();
    print('[BUILD-RUNNER-LOG] [1] ${returnType}');
    className = returnType.replaceFirst('*', '');
  }

  @override
  void visitFieldElement(FieldElement element) {
    print('[BUILD-RUNNER-LOG] [2] ${element}');
    fields[element.name] = element.type.toString().replaceFirst('*', '');
  }
}
