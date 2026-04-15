function king() {
  a = cylinder ({r1: 12, r2: 5, h: 40, fn: 14});
  b = translate ([0,0,40],
                scale ([1,1,0.3],
                      sphere(9)));
  c = translate([0,0,42],
    			scale ([1,1,0.3],
      						sphere (8)));
  d = translate([0,0,52],
      				sphere (7));
  e = translate([-1,-1,58],
                cube({size: [2,2,8]}));
  f = translate([-4,-1,62],
                cube({size: [8,2,2]}));
  g = translate ([0,0,40],
                 cylinder ({r1: 5, r2: 10, h: 15, fn: 32}));
  h = translate([0,0,5],
    			union (a,b,c,d,e,f,g));
  y = cylinder({r: 16, h: 5});
  j = translate([0,0,5],
    			scale([1,1,0.3],
    				sphere({r: 16})));
  return union (h, y, j)
}
function main (){
  return scale([0.5,0.5,0.5],
               king());
}
