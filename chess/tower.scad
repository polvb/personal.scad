function tower() {
  a = cylinder ({r1: 10, r2: 5, h: 25, fn: 6});
  b = translate ([0,0,25],
    cylinder({r: 10, h: 5, fn: 8}));
  c = translate([10,0,30],
    rotate([0,0,112],
      cube({size: [7.7,2,4]})));
  d = translate([0,-10,30],
    rotate([0,0,22],
      cube({size: [7.7,2,4]})));
  e = translate([-6.4,5.3,30],
    rotate([0,0,22],
      cube({size: [7.7,2,4]})));
  f = translate([-5.3,-6.3,30],
    rotate([0,0,112],
    cube({size: [7.7,2,4]})));
  g = translate([0,0,5],
    union (a,b,c,d,e,f));
  h = cylinder({r: 16, h: 5});
  i = translate([0,0,5],
    scale([1,1,0.3],
    sphere({r: 16})));
  return union (g, h, i)
}
function main() {
  return tower()
}
