function pawn() {
  a = cylinder ({r1: 10, r2: 5, h: 25, fn: 40});
  b = translate ([0,0,25],
                scale([1,1,0.3],
                      sphere({r: 10, fn: 40})));
  c = translate ([0,0,35],
                 sphere({r: 9, fn: 50}));
  d = cylinder ({r: 14, h: 5.5});
  e = translate ([0,0,6],
                scale([1,1,0.3],
                     sphere(14)));
  return union (a,b,c,d,e)
}
function main() {
  return pawn();
}
