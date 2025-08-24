unitsize(1cm);
size(10cm);

texpreamble("\usepackage{bm}");
include "labelled_path";

path module = ellipse((0,0),10,6);
path submod = ellipse((0,-3.3), 6,2.7);
real middle_ring = -12;
path ring = (-9,middle_ring-2) -- (9,middle_ring-2) -- (9,middle_ring+2) -- (-9,middle_ring+2) -- cycle;

path mideal = (-6,middle_ring + 1.5) -- (3,middle_ring + 1.5){right} .. (3,middle_ring - 1.5) -- (-6, middle_ring - 1.5){left} .. cycle;

pair a1 = (-5.4, middle_ring);
pair v  = (-3, -2);
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
//label("\scriptsize $\langle \widehat \varphi(v')\rangle$", )

fill(dideal, gray(0.9));

draw(phiv_ideal, gray(0.3));
fill(phiv_ideal, gray(0.9));
draw(dideal, gray(0.4));

draw(Label("$\langle a_1 \rangle = \varphi(N)$", align=Relative(NW)), mideal);

draw("$\bm M$", module);
draw("$\bm N$", submod);
draw("$\bm R$", ring);

dot(a1);
draw("$a_1$", circle(a1,0.4));

label(Label("$v'$", position = v + (1, 0.1)));
dot(v);
draw("$\varphi$", v .. {down}(a1+(0,0.5)), arrow=ArcArrow());
dot("$\widehat\varphi(v')$", aprim);
draw("$\widehat\varphi$", v .. {down}aprim, arrow=ArcArrow());

dot("$d$", d);
draw(dcirc);
draw("$r'$",  a1    .. {SE} d + (-1/sqrt(8), 1/sqrt(8)), arrow=ArcArrow(SimpleHead));
draw("$r''$", aprim .. {SW} d + ( 1/sqrt(8), 1/sqrt(8)), arrow=ArcArrow(SimpleHead));

labelled_path("$r' \varphi + r''\widehat\varphi$", v .. {down}d+(0, 0.4), invert=false, pos = 0.65, offby = -0.5);

pair e1 = (-8,0), e2 = (-7,2.2), e3 = (-4,4), e4=(0,4.5);

dot("$e_1$", e1);
dot("$e_2$", e2);
dot("$e_i$", e3);
dot("$e_n$", e4);
pen arrcol = gray(0.5);

labelled_path("\scriptsize $\bm{a_1}\lambda_1'$", e1{SE} .. v + (-0.2, 0), arrcol, pos=0.4, offby = -0.4);
labelled_path("\scriptsize $\bm{a_1}\lambda_2'$", e2{SE} .. v + (-0.1, 0.1), arrcol, pos=0.4, offby = -0.4);
labelled_path("\scriptsize $\bm{a_1}\lambda_i'$", e3{S}  .. v + (0, 0.15), arrcol, pos=0.5, offby = -0.4);
labelled_path("\scriptsize $\bm{a_1}\lambda_n'$", e4{SW} .. v + (0, 0.15), arrcol, pos=0.3, offby = 0.4, invert=true);

dot(Label("$v$"), vprime);
labelled_path("\scriptsize $\lambda_1'$", e1{E} .. vprime, arrcol, pos=0.7, offby = -0.4);
labelled_path("\scriptsize $\lambda_2'$", e2{E} .. vprime, arrcol, pos=0.7, offby = -0.4);
labelled_path("\scriptsize $\lambda_i'$", e3{E} .. vprime, arrcol, pos=0.7, offby = -0.4);
labelled_path("\scriptsize $\lambda_n'$", e4{E} .. vprime, arrcol, pos=0.5, offby = -0.4);

labelled_path("$a_1$", vprime{SW} .. {SW} v + (0.2, 0.2), pos=0.3, offby=-0.4, invert = true);
