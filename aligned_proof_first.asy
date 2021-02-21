unitsize(1cm);
size(8cm);

texpreamble("\usepackage{bm}");
include "labelled_path";

path module = ellipse((0,-3),8,3);
path submod = ellipse((1,-3), 6,2);
real middle_ring = -9;
path ring = (-9,middle_ring-2) -- (9,middle_ring-2) -- (9,middle_ring+2) -- (-9,middle_ring+2) -- cycle;

path mideal = (-6, middle_ring + 1.5) 
           -- ( 3, middle_ring + 1.5){right} 
           .. ( 3, middle_ring - 1.5) 
           -- (-6, middle_ring - 1.5){left} 
           .. cycle;

pair a1 = (-5.4, middle_ring);
pair v  = (2, -3);
pair vprime = (4,1);
pair aprim = (2.6, middle_ring - 0.3);
pair d = (-1, middle_ring);

path dideal = (-6,middle_ring + 0.5)
           -- ( 5,middle_ring + 0.5){right}
           .. ( 5,middle_ring - 1)
           -- (-6, middle_ring - 1){left} .. cycle;

path dcirc = circle(d,0.4);
path dphi_ideal = d + (0,0.5) -- aprim + (0, 0.5){right} .. aprim - (0,0.4) -- d - (0,0.4){left} .. cycle;

real phiv_ideal_offset = 2;
path phiv_ideal = aprim + (0.6,0) + (-phiv_ideal_offset,  0.4) 
               -- aprim + (0.6,0) + ( phiv_ideal_offset,  0.4){right} 
               .. aprim + (0.6,0) + ( phiv_ideal_offset, -0.4) 
               -- aprim + (0.6,0) + (-phiv_ideal_offset, -0.4){left} 
               .. cycle;

fill(mideal, gray(0.8));

fill(dideal, gray(0.9));

draw(phiv_ideal, gray(0.3));
fill(phiv_ideal, gray(0.9));
draw(dideal, gray(0.4));

draw(Label("$\langle a_1 \rangle = \varphi(N)$", align=Relative(NW)), mideal);

draw(module);
label("\large $\bm M$", (-7,-3));
label("\large $\bm N$", (-1,-2));
draw(submod);
draw(ring);
label("$\bm R$", (7,middle_ring));

dot(a1);
draw("$a_1$", circle(a1,0.4));

label(Label("$v'$", position = v + (1, 0.1)));
dot(v);
path v_to_a = v .. {down}(a1+(0,0.5));
labelled_path("$\varphi$", v_to_a, ArcArrow(), invert = true, pos = 0.65, offby = 0.5);

dot("$\widehat\varphi(v')$", aprim);
draw("$\widehat\varphi$", v .. {down}aprim, arrow=ArcArrow());

dot("$d$", d);
draw(dcirc);
labelled_path("$r'$",  a1    .. {SE} d + (-1/sqrt(8), 1/sqrt(8)), offby=-0.5);
labelled_path("$r''$", aprim .. {SW} d + ( 1/sqrt(8), 1/sqrt(8)), offby=0.5, invert=true);

labelled_path("$r' \varphi + r''\widehat\varphi$", v .. {down}d+(0, 0.4), invert=true, pos = 0.5, offby = 0.5);
