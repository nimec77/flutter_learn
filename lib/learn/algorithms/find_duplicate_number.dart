class FindDuplicateNumber {
  int findDuplicateBySort(List<int> nums) {
    final lst = [...nums]..sort();

    for (var i = 1; i < lst.length; i++) {
      if (lst[i - 1] == lst[i]) {
        return lst[i];
      }
    }

    return -1;
  }

  int findDuplicateByHash(List<int> nums) {
    final seen = <int, bool>{};

    for (final num in nums) {
      if (seen.containsKey(num)) {
        return num;
      }
      seen[num] = true;
    }

    return -1;
  }

  int findDuplicateByTortoiseAndHare(List<int> nums) {
    var tortoise = nums.first;
    var hare = nums.first;

    do {
      tortoise = nums[tortoise];
      hare = nums[nums[hare]];
    } while(tortoise != hare);

    var ptr1 = nums.first;
    var ptr2 = tortoise;

    while (ptr1 != ptr2) {
      ptr1 = nums[ptr1];
      ptr2 = nums[ptr2];
    }

    return ptr1;
  }

  int findDuplicateByBrent(List<int> nums) {
    var power = 1;
    var lam = 1;

    var tortoise = nums.first;
    var hare = nums[1];

    while (tortoise != hare) {
      if (power == lam) {
        tortoise = hare;
        power *= 2;
        lam = 0;
      }
      hare = nums[hare];
      lam++;
    }

    tortoise = nums.first;
    hare = nums.first;
    for(var i = 0; i < lam; i++) {
      hare = nums[hare];
    }

    while(tortoise != hare) {
      tortoise = nums[tortoise];
      hare = nums[hare];
    }

    return tortoise;
  }
}
