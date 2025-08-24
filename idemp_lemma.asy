unitsize(0.7cm);
size(5cm);

texpreamble("\usepackage{bm}");

path ker = ellipse((0,0), 0.5, 1.8);
pair restc = (3,-2);
path rest = ellipse(restc,3,1);

label("$\bm M$", (6, 0.5));
label("$\textrm{Im} \pi$", restc - (0,0.4));
label(Label("$\textrm{Ker}\pi$", position=(0,-0.5), embed=Rotate((0,1))));

path whole = ellipse((3,-0.3),4.9,2.7);

pair mypoint = (4,1);
pair projIm = (mypoint.x, restc.y + 0.7),
     projKer = (0, mypoint.y);
path projX = mypoint -- projIm;
path projY = mypoint -- projKer;

fill(ker, gray(0.95));
fill(rest, gray(0.95));

draw(ker);
draw(rest);
draw(whole);

dot(Label("$\overline 0$", align=Relative(W)), (0,-1.85));
dot("$v$", mypoint);

dot(Label("$u=v - \varphi(v)$", align=Relative(SE)), projKer);
dot(Label("$w=\varphi(v)$", align=Relative(S)), projIm);

draw(projX, arrow=ArcArrow(), dashed);
draw(projY, arrow=ArcArrow(), dashed);
