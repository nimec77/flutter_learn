import 'package:flutter_learn/learn/7/parts_of_a_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final partOfAList = PartsOfAList();
  void testing(List<String> arr, List<List<String>> exp) {
    final str = arr.map((x) => "'$x'").join(', ');
    test('Testing for [$str]', () => expect(partOfAList.partlist(arr), equals(exp)));
  }

  group('Fixed tests', () {
    testing([
      'I',
      'wish',
      'I',
      "hadn't",
      'come'
    ], [
      ['I', "wish I hadn't come"],
      ['I wish', "I hadn't come"],
      ['I wish I', "hadn't come"],
      ["I wish I hadn't", 'come'],
    ]);
    testing([
      'cdIw',
      'tzIy',
      'xDu',
      'rThG'
    ], [
      ['cdIw', 'tzIy xDu rThG'],
      ['cdIw tzIy', 'xDu rThG'],
      ['cdIw tzIy xDu', 'rThG']
    ]);
    testing([
      'vJQ',
      'anj',
      'mQDq',
      'sOZ'
    ], [
      ['vJQ', 'anj mQDq sOZ'],
      ['vJQ anj', 'mQDq sOZ'],
      ['vJQ anj mQDq', 'sOZ']
    ]);
    testing([
      'mkC',
      'WoiP',
      'pCHh',
      'mkv'
    ], [
      ['mkC', 'WoiP pCHh mkv'],
      ['mkC WoiP', 'pCHh mkv'],
      ['mkC WoiP pCHh', 'mkv']
    ]);
    testing([
      'vHW',
      'bPq',
      'pme',
      'jJr',
      'HGHV'
    ], [
      ['vHW', 'bPq pme jJr HGHV'],
      ['vHW bPq', 'pme jJr HGHV'],
      ['vHW bPq pme', 'jJr HGHV'],
      ['vHW bPq pme jJr', 'HGHV']
    ]);
    testing([
      'YZd',
      'ptUD',
      'IXr'
    ], [
      ['YZd', 'ptUD IXr'],
      ['YZd ptUD', 'IXr']
    ]);
    testing([
      'dOXj',
      'nMlK',
      'QGT',
      'LSt',
      'BHNR'
    ], [
      ['dOXj', 'nMlK QGT LSt BHNR'],
      ['dOXj nMlK', 'QGT LSt BHNR'],
      ['dOXj nMlK QGT', 'LSt BHNR'],
      ['dOXj nMlK QGT LSt', 'BHNR']
    ]);
    testing([
      'UQB',
      'aIfC',
      'eVB',
      'aCL',
      'bWoU'
    ], [
      ['UQB', 'aIfC eVB aCL bWoU'],
      ['UQB aIfC', 'eVB aCL bWoU'],
      ['UQB aIfC eVB', 'aCL bWoU'],
      ['UQB aIfC eVB aCL', 'bWoU']
    ]);
    testing([
      'Pimt',
      'qxEm',
      'enzX',
      'Luk',
      'Smi'
    ], [
      ['Pimt', 'qxEm enzX Luk Smi'],
      ['Pimt qxEm', 'enzX Luk Smi'],
      ['Pimt qxEm enzX', 'Luk Smi'],
      ['Pimt qxEm enzX Luk', 'Smi']
    ]);
    testing([
      'CyAg',
      'zzWg',
      'ZZuR',
      'wbpx',
      'mYr'
    ], [
      ['CyAg', 'zzWg ZZuR wbpx mYr'],
      ['CyAg zzWg', 'ZZuR wbpx mYr'],
      ['CyAg zzWg ZZuR', 'wbpx mYr'],
      ['CyAg zzWg ZZuR wbpx', 'mYr']
    ]);
    testing([
      'Epb',
      'yTcb',
      'njU'
    ], [
      ['Epb', 'yTcb njU'],
      ['Epb yTcb', 'njU']
    ]);
  });
}
