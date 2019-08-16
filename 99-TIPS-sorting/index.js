const inputArray = [1, 2, 3, 4, 5, 6, 7, 8, 9];
const solution = [1, 2, 3, 4, 5, 6, 7, 8, 9];

bubbleSort = arr => {
  //Bubble Sort
  //your code here
  for (let index = 0; index < arr.length; index++) {
    for (let check = 0; check < arr.length; check++) {
      if (arr[check] > arr[check + 1]) {
        // console.log("fix loop:", `${arr[index]} and ${arr[check]}`);
        temp = arr[check];
        arr[check] = arr[check + 1];
        arr[check + 1] = temp;
      }
    }
  }
  //   console.log(arr);
  return arr;
};

mergeSort = arr => {
  if (arr.length <= 1) {
    return arr;
  }
  //merge sort
  const middle = Math.floor(arr.length / 2);

  // This is where we will be dividing the array into left and right
  const left = arr.slice(0, middle);
  const right = arr.slice(middle);

  return merge(mergeSort(left), mergeSort(right));
};

function merge(left, right) {
  let resultArray = [],
    leftIndex = 0,
    rightIndex = 0;

  // We will concatenate values into the resultArray in order
  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] < right[rightIndex]) {
      resultArray.push(left[leftIndex]);
      leftIndex++; // move left array cursor
    } else {
      resultArray.push(right[rightIndex]);
      rightIndex++; // move right array cursor
    }
  }

  // We need to concat here because there will be one element remaining
  // from either left OR the right
  return resultArray
    .concat(left.slice(leftIndex))
    .concat(right.slice(rightIndex));
}

(testFunction = () => {
  const bStartTime = Date.now();
  for (let i = 0; i < 100000; i++) {
    bubbleSort(inputArray);
  }
  //   console.log("Bubble sort took: ", Date.now() - bStartTime);

  const bTime = Date.now() - bStartTime;

  const mStartTime = Date.now();
  for (let i = 0; i < 100000; i++) {
    mergeSort(inputArray);
  }
  console.log("Ratio: ", (Date.now() - mStartTime) / bTime);
})();

const obs = [{ age: 12 }, { age: 7 }, { age: 34 }, {age: 21}];
obs.sort();
console.log(
  obs.sort((a, b) => {
    if (a.age > b.age) {
        console.log(`${a.age} > ${b.age}`)
      return 1;
    } else {
      return -1;
    }
  })
);
