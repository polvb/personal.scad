function bishop() {
  a = cylinder ({r1: 10, r2: 5, h: 30, fn: 14});
  b = translate ([0,0,30],
                scale ([1,1,0.3],
                      sphere(9)));
  c = translate([0,0,32],
    			scale ([1,1,0.3],
      						sphere (8)));
  d = translate([0,0,40],
      				sphere (9));
  e = translate([0,0,52],
      				sphere(3));
  f = translate([0,0,5],
    			union (a,b,c,d,e));
  g = cylinder({r: 16, h: 5});
  h = translate([0,0,5],
    			scale([1,1,0.3],
    				sphere({r: 16})));
  return union (f, g, h)
}
function main() {
  return scale([0.5,0.5,0.5],
               bishop())
}
