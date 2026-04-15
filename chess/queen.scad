function queen() {
  a = cylinder ({r1: 10, r2: 5, h: 30, fn: 14});
  b = translate ([0,0,30],
                scale ([1,1,0.3],
                      sphere(9)));
  c = translate([0,0,32],
    			scale ([1,1,0.3],
      						sphere (8)));
  d = translate([0,0,42],
      				sphere (7));
  e = translate([0,0,52],
      				sphere(3));
  f = translate([0,0,30],
                cylinder({r1: 5, r2: 10, h: 15, fn: 14}));
  g = translate([0,0,5],
    			union (a,b,c,d,e,f));
  h = cylinder({r: 16, h: 5});
  i = translate([0,0,5],
    			scale([1,1,0.3],
    				sphere({r: 16})));
  return union (g, h, i)
}
function main (){
  return scale([0.5,0.5,0.5],
               queen());
}
