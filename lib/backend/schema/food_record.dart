import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoodRecord extends FirestoreRecord {
  FoodRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  bool hasWeight() => _weight != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _desc = snapshotData['desc'] as String?;
    _name = snapshotData['name'] as String?;
    _price = snapshotData['price'] as String?;
    _weight = snapshotData['weight'] as String?;
    _img = snapshotData['img'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('food')
          : FirebaseFirestore.instance.collectionGroup('food');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('food').doc(id);

  static Stream<FoodRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoodRecord.fromSnapshot(s));

  static Future<FoodRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoodRecord.fromSnapshot(s));

  static FoodRecord fromSnapshot(DocumentSnapshot snapshot) => FoodRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoodRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoodRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoodRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoodRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoodRecordData({
  String? desc,
  String? name,
  String? price,
  String? weight,
  String? img,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'desc': desc,
      'name': name,
      'price': price,
      'weight': weight,
      'img': img,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoodRecordDocumentEquality implements Equality<FoodRecord> {
  const FoodRecordDocumentEquality();

  @override
  bool equals(FoodRecord? e1, FoodRecord? e2) {
    return e1?.desc == e2?.desc &&
        e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.weight == e2?.weight &&
        e1?.img == e2?.img;
  }

  @override
  int hash(FoodRecord? e) => const ListEquality()
      .hash([e?.desc, e?.name, e?.price, e?.weight, e?.img]);

  @override
  bool isValidKey(Object? o) => o is FoodRecord;
}
