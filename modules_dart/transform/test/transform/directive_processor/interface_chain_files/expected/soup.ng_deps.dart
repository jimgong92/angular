library dinner.soup.ng_deps.dart;

import 'soup.dart';
export 'soup.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/metadata.dart';

var _visited = false;
void initReflector() {
  if (_visited) return;
  _visited = true;
  _ngRef.reflector
    ..registerType(
        ChangingSoupComponent,
        new _ngRef.ReflectionInfo(
            const [const Component(selector: '[soup]')],
            const [],
            () => new ChangingSoupComponent(),
            const [PrimaryInterface]));
}
