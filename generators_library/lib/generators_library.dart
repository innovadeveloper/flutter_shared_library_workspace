library generators_library;

import 'package:build/build.dart';
import 'package:generators_library/src/json_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder generateJsonClass(BuilderOptions options) => SharedPartBuilder(
      [JsonGenerator()],
      'json_generator',
    );
