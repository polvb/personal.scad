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
  t1 = translate ([100,100,0],
                 tower());
  t2 = translate ([-100,100,0],
                 tower());
  T1 = union (t1,t2);
  p1 = translate ([100,65,0],
                 scale([0.8,0.8,0.8],
                 	pawn()));
  p2 = translate ([70,65,0],
                 scale([0.8,0.8,0.8],
                 	pawn()));
  p3 = translate ([40,65,0],
                 scale([0.8,0.8,0.8],
                 	pawn()));
  p4 = translate ([-100,65,0],
                 scale([0.8,0.8,0.8],
                 	pawn()));
  p5 = translate ([-70,65,0],
                 scale([0.8,0.8,0.8],
                 	pawn()));
  p6 = translate ([-40,65,0],
                 scale([0.8,0.8,0.8],
                 	pawn()));
  p7 = translate ([-13,65,0],
                 scale([0.8,0.8,0.8],
                 	pawn()));
  p8 = translate ([13,65,0],
                 scale([0.8,0.8,0.8],
                 	pawn()));
  P1 = union (p1,p2,p3,p4,p5,p6,p7,p8);
  k1 = translate ([70,100,0],
  				 scale([0.8,0.8,0.8],
            		knight()));
  k2 = translate ([-70,100,0],
  				 scale([0.8,0.8,0.8],
            		knight()));
  K1 = union (k1,k2);
  b1 = translate ([40,100,0],
                  scale([0.8,0.8,0.8],
               		bishop()));
  b2 = translate ([-40,100,0],
                  scale([0.8,0.8,0.8],
               		bishop()));
  Q1 = translate ([13,100,0],
                scale ([0.8,0.8,0.8],
                      queen()));
  R1 = translate ([-13,100,0],
                scale ([0.8,0.8,0.8],
                      king()));
  white = union (T1,P1,K1,b1,b2,Q1,R1)
  black = translate([0,-7,0],
                    rotate ([0,0,180],
                            white));
  return union (white, black);
}
