function knight() {
  a = cylinder ({r1: 10, r2: 5, h: 25, fn: 6});
  b = translate ([0,0,30],
    sphere({r: 9, fn: 8}));
  c = translate ([-4,-12,22],
    rotate([30,0,0],
      cube({size: [8,10,5], round: true})));
  d = translate([-3,0,36.5],
    cylinder ({r1: 2.5, r2: 0, h: 5}));
  e = translate([3,0,36.5],
    cylinder ({r1: 2.5, r2: 0, h: 5}));
  z = translate([0,0,5],
    union (a,b,c,d,e));
  f = cylinder({r: 16, h: 5});
  g = translate([0,0,5],
    scale([1,1,0.3],
      sphere({r: 16})));
  return union (z, f, g);
}
function main() {
  return scale([0.8,0.8,0.8],
  knight());
}

