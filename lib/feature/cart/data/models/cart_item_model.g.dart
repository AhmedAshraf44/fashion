// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartItemMoelAdapter extends TypeAdapter<CartItemMoel> {
  @override
  final int typeId = 0;

  @override
  CartItemMoel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartItemMoel(
      item: (fields[0] as List).cast<AllProductModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, CartItemMoel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.item);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItemMoelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
