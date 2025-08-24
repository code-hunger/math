unitsize(0.5cm);
size(9cm);
include "labelpath";
include "labelled_path";

texpreamble("\usepackage{bm}");

draw(circle((0,0.5), 5));
label("\Large $\bm M$", (3,3));

path nmod = ellipse((0,0),3,2);
draw(nmod);
label("\Large $\bm N$", (-2, 0));
fill(nmod, gray(0.9));

path ker = ellipse((0,-2.5), 3,1.5);
real[][] sec = intersections(ker, nmod);

path ker_sec_n = subpath(ker, sec[0][0], sec[1][0])
              .. subpath(nmod, sec[1][1], sec[0][1]) -- cycle;

path vprim =  ellipse((0,0.5),0.2,1.5);
label(Label("\large $\bm{\langle v \rangle} = \textrm{Im}\varphi$", position=(0,3.7)));
draw(ellipse((0,2),0.5,3));
label(Label("$\bm{\langle v' \rangle} = \varphi(N)$", position=(0,0)));
draw(vprim);
fill(vprim, gray(0.6));

label(Label("$\textrm{Ker}\varphi$"), position=(0,-3.5));
label(Label("\small $\textrm{Ker}\varphi \cap N$"), position=(-0.7,-1.5));
draw(ker);
fill(ker_sec_n, gray(0.6));

dot("$\bm 0$", (0, -1));

pair m = (-4, 2);
pair phim = (0,2.7);
pair mrest = (-2,-2.5);
dot("$m$", m);
dot("$\varphi(m)v$", phim);
dot("$(m-\varphi(m)v)$", mrest);

path m_to_ker = m{SW} .. {SE}mrest,
     m_to_v = m .. {E}phim;
draw(m_to_v, arrow=Arrow(SimpleHead));
draw(m_to_ker, arrow=Arrow(SimpleHead));
labelpath(shift(0,2) * Label("$\varphi$"), m_to_v);

pair n = (2,0.3);
pair phin = (0,1);
pair nrest = (1,-1.4);
path n_to_phi = n .. {SW} phin;
dot("$n$", n);
dot("\scriptsize $\varphi(n)v$", phin);
dot(nrest);
label("\scriptsize $(n-\varphi(n)v)$", nrest - (0,0.2));
labelled_path("$\varphi$", n_to_phi, invert = true, offby = 0.2);
draw(n_to_phi, arrow=Arrow(SimpleHead));
draw(n .. {SW}nrest, arrow=Arrow(SimpleHead));

