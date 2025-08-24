unitsize(0.7cm);
size(10cm);

texpreamble("\usepackage{bm}");

path ker = ellipse((0,0), 0.3, 2);
path kerRestr = ellipse((0,-0.8), 0.2, 1.2);

pair restc = (3,-2);
path rest = ellipse(restc,3,1);
path imRestr = ellipse(restc - (0.5,0), 2.5, 0.3);
label("$\textrm{Im} \pi \cong R^n$", restc - (0,0.6));
label("\scriptsize $\textrm{Im}\overline{\pi}=\pi(N)$", restc - (0.5,0));

label(Label("$\textrm{Ker}\pi \cong R$", position=(-0.7,0), embed=Rotate((0,1))));
label(Label("\scriptsize $\textrm{Ker}\overline{\pi}$", position=(0,-0.8), embed=Rotate((0,1))));

path whole = ellipse((3,0),4.9,3);

path Mmod = (0,-0.8 + 1.2) .. {SE}(3,1) .. (5.5, 0.5).. (4.8,-0.4){left} .. (3,-1) .. {left}(0,-2) -- cycle;
pair mypoint = (4,0);
path projX = mypoint -- (mypoint.x, restc.y);
path projY = mypoint -- (0, mypoint.y);

fill(ker, gray(0.95));
fill(rest, gray(0.95));
label("$\bm N$", (2,0.8));
label("$\bm M\cong R^{n+1}$", (3, 2.2));

fill(Mmod, gray(0.8));
draw(imRestr, gray(0.3));
fill(imRestr, gray(0.8));
draw(Mmod, gray(0.3));
fill(kerRestr, gray(0.8));
draw(ker);
draw(rest);
draw(kerRestr, gray(0.3));
draw(whole);

dot(Label("$\overline 0$", align=Relative(W)), (0,-2));
dot("$\overline x$", mypoint);

draw(projX, arrow=ArcArrow(), dashed);
draw(projY, arrow=ArcArrow(), dashed);
