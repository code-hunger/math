unitsize(0.5cm);
size(3cm);

// texpreamble("\usepackage{bm}");

path free = ellipse((0,0), 1.5, 5);
path module = ellipse((5,0), 1, 4);
path submodule = ellipse((5,-1.5), 0.7, 2.5);
path sub_preimage = ellipse((0,-2.5), 1, 2);

draw(module);
draw(free);
label(Label("$R^n$", align=Relative(N), position=(0,5)));
label(Label("$M$", align=Relative(N), position=(5,4)));
filldraw(submodule, gray(0.8), black);
filldraw(sub_preimage, gray(0.8), black);

dot(Label("$e_1$", align=Relative(W)),(0,4));
dot(Label("$g_1$", align=Relative(E)),(5,3));
draw((0,4)  -- (5,3), arrow=Arrow(TeXHead));
draw((0,3)  -- (5,2), arrow=Arrow(TeXHead));
dot(Label("$e_2$", align=Relative(W)),(0,1));
dot(Label("$g_2$", align=Relative(E)),(5,2));
draw((0,1)  -- (5,2), arrow=Arrow(TeXHead));
draw((0,0)  -- (5,3), arrow=Arrow(TeXHead));
dot(Label("$e_3$", align=Relative(W)),(0,-1));
dot(Label("$g_3$", align=Relative(E)),(5,0));
draw((0,-1) -- (5,0), arrow=Arrow(TeXHead));
draw((0,-2) -- (5,-0.5), arrow=Arrow(TeXHead));
dot(Label("$e_4$", align=Relative(W)),(0,-2.5));
dot(Label("$g_4$", align=Relative(E)),(5,-2.4));
draw((0,-2.5) -- (5,-2.4), arrow=Arrow(TeXHead));
draw((0,-3) -- (5,-0.5), arrow=Arrow(TeXHead));
draw((0,-4) -- (5,-3), arrow=Arrow(TeXHead));

label(Label("$\textrm{span}B$", embed=Rotate((0,1))), (-2, -2.5));
