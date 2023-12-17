import '../model/store.dart';
import '../DTO/mask_dto.dart';

void main() {

}

extension StoresToStore on Stores {
  Store toStore() {
    return Store(
      name : name ?? '',
      code: code ?? '코드 없음',
      stock: stockAt ?? '매진',
    );
  }
}