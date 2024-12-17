function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  var x: int = 10;
  var y: int = baz(x);
  echo y;
}

/*This code will work perfectly in most cases. However there is a potential bug which can arise due to integer overflow if the input value of x is large enough that the result of foo(x), bar(x), or baz(x) exceeds the maximum value that an integer can hold in Hack. This will lead to unexpected results or program crashes. */