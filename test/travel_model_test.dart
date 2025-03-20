import 'package:flutter_test/flutter_test.dart';
import 'package:test_wizh_front_end/models/travel_model.dart';

void main() {
  group('TravelModel Unit Test', () {
    test('TravelModel harus dibuat dengan nilai yang benar', () {
      // Data contoh
      final travel = TravelModel(
        id: 1,
        title: 'Bali - Pantai Kuta',
        imagePath: 'assets/images/bali.jpg',
        price: 'IDR 5,000,000',
        rating: 4.8,
        description: 'Pantai Kuta adalah surga tropis...',
        isOpenTrip: true,
        termsAndConditions: 'Tidak termasuk tiket pesawat, wajib membawa KTP.',
        includeExclude:
            'Termasuk hotel dan transportasi, tidak termasuk makan.',
        pax: 2,
      );

      // Cek apakah nilai sesuai yang diharapkan
      expect(travel.id, equals(1));
      expect(travel.title, equals('Bali - Pantai Kuta'));
      expect(travel.imagePath, equals('assets/images/bali.jpg'));
      expect(travel.price, equals('IDR 5,000,000'));
      expect(travel.rating, equals(4.8));
      expect(travel.description, contains('Pantai Kuta'));
      expect(travel.isOpenTrip, isTrue);
      expect(travel.termsAndConditions, isNotEmpty);
      expect(travel.includeExclude, contains('hotel'));
      expect(travel.pax, equals(2));
    });

    test('TravelModel harus menangani deskripsi kosong dengan benar', () {
      final travel = TravelModel(
        id: 2,
        title: 'Test Destination',
        imagePath: 'assets/images/test.jpg',
        price: 'IDR 1,000,000',
        rating: 4.0,
        description: '',
        isOpenTrip: false,
        termsAndConditions: 'Beberapa ketentuan',
        includeExclude: 'Termasuk transportasi',
        pax: 1,
      );

      // Pastikan deskripsi kosong tetap valid
      expect(travel.description.isEmpty, isTrue);
      expect(travel.isOpenTrip, isFalse);
      expect(travel.pax, greaterThan(0));
    });
  });
}
