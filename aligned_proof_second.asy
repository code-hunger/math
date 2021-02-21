unitsize(1cm);
size(7cm);

texpreamble("\usepackage{bm}");
include "labelled_path";

path module = ellipse((0,0),10,6);
path submod = ellipse((0,-3.3), 6,2);

pair v       = (7,  1);
pair vprime  = (2, -3.8);

path genby_v =  rotate(-45, (4,0)) * ellipse((5.3, -0.7), 0.8, 6);
path genby_vp = rotate(-45, (4,0)) * ellipse((5.3, -3.7), 0.5, 2.3);

draw(Label("$\bm M$", align=Relative(W)), module);
draw(Label("$\bm N$", align=Relative(W)), submod);
draw(genby_v, gray(0.3));
draw(genby_vp);
fill(genby_vp, gray(0.8));

dot(Label("$v'$", align = Relative(SW)), vprime);
dot(Label("$v$",  align = Relative(NE)), v);

pair e1 = (-6,-1), e2 = (-6.5,1.6), e3 = (-5,3), e4=(-1,4.5);

dot(Label("$e_1$", align=Relative(W)), e1);
//dot(Label("$e_2$", align=Relative(W)), e2);
dot(Label("$e_i$", align=Relative(W)), e3);
dot(Label("$e_n$", align=Relative(W)), e4);
pen arrcol = gray(0.5);

// Paths e_i to v'
labelled_path("\scriptsize $\bm{a_1}\lambda_1'$", e1{SE} .. vprime + (-0.2, 0), arrcol, pos=0.4, offby = -0.4);
//labelled_path("\scriptsize $\bm{a_1}\lambda_2'$", e2{SE} .. vprime + (-0.1, 0.1), arrcol, pos=0.25, offby = -0.4);
labelled_path("\scriptsize $\bm{a_1}\lambda_i'$", e3{S}  .. vprime + (0, 0.15), arrcol, pos=0.3, offby = -0.4);
labelled_path("\scriptsize $\bm{a_1}\lambda_n'$", e4{SW} .. vprime + (0, 0.15), arrcol, pos=0.75, offby = -0.5);

// Paths e_i to v
labelled_path("\scriptsize $\lambda_1'$", e1{E} .. v, arrcol, pos=0.7, offby = -0.5);
//labelled_path("\scriptsize $\lambda_2'$", e2{E} .. v, arrcol, pos=0.7, offby = -0.5);
labelled_path("\scriptsize $\lambda_i'$", e3{E} .. v, arrcol, pos=0.64, offby = -0.5);
labelled_path("\scriptsize $\lambda_n'$", e4{E} .. v, arrcol, pos=0.5, offby = -0.5);

draw(Label("$a_1$", align=Relative(W)), v{SE} .. {SW}vprime + (0.2, 0.2), arrow = Arrow(SimpleHead));
