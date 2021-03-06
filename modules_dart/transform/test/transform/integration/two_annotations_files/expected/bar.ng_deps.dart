library bar.ng_deps.dart;

import 'package:angular2/src/core/change_detection/pregen_proto_change_detector.dart'
    as _gen;

import 'bar.dart';
export 'bar.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import 'package:angular2/src/core/metadata.dart';

var _visited = false;
void initReflector() {
  if (_visited) return;
  _visited = true;
  _ngRef.reflector
    ..registerType(MyComponent, new _ngRef.ReflectionInfo(const [
      const Component(selector: '[soup]'),
      const View(template: 'Salad: {{myNum}} is awesome')
    ], const [], () => new MyComponent()))
    ..registerGetters({'myNum': (o) => o.myNum});
  _gen.preGeneratedProtoDetectors['MyComponent_comp_0'] =
      _MyComponent_ChangeDetector0.newProtoChangeDetector;
}

class _MyComponent_ChangeDetector0
    extends _gen.AbstractChangeDetector<MyComponent> {
  var myNum0, interpolate1;

  _MyComponent_ChangeDetector0(dispatcher) : super(
          "MyComponent_comp_0", dispatcher, 2,
          _MyComponent_ChangeDetector0.gen_propertyBindingTargets,
          _MyComponent_ChangeDetector0.gen_directiveIndices,null) {
    dehydrateDirectives(false);
  }

  void detectChangesInRecordsInternal(throwOnChange) {
    var l_context = this.context,
        l_myNum0,
        c_myNum0,
        l_interpolate1;
    c_myNum0 = false;
    var isChanged = false;
    var changes = null;

    this.propertyBindingIndex = 0;
    l_myNum0 = l_context.myNum;
    if (_gen.looseNotIdentical(l_myNum0, this.myNum0)) {
      c_myNum0 = true;

      this.myNum0 = l_myNum0;
    }
    if (c_myNum0) {
      l_interpolate1 =
          "${"Salad: "}${_gen.ChangeDetectionUtil.s(l_myNum0)}${" is awesome"}";
      if (_gen.looseNotIdentical(l_interpolate1, this.interpolate1)) {
        if (throwOnChange) {
          this.throwOnChangeError(this.interpolate1, l_interpolate1);
        }

        this.notifyDispatcher(l_interpolate1);
        this.logBindingUpdate(l_interpolate1);

        this.interpolate1 = l_interpolate1;
      }
    }
    changes = null;

    isChanged = false;
  }

  void checkNoChanges() {
    runDetectChanges(true);
  }

  void dehydrateDirectives(destroyPipes) {
    this.myNum0 = this.interpolate1 = _gen.ChangeDetectionUtil.uninitialized;
  }

  static var gen_propertyBindingTargets = [
    _gen.ChangeDetectionUtil.bindingTarget("textNode", 0, null, null,
        "Salad: {{myNum}} is awesome in MyComponent: <template>")
  ];

  static var gen_directiveIndices = [];

  static _gen.ProtoChangeDetector newProtoChangeDetector(
      _gen.ChangeDetectorDefinition def) {
    return new _gen.PregenProtoChangeDetector(
        (a) => new _MyComponent_ChangeDetector0(a), def);
  }
}