void labelled_path(string text, path mypath, pen mypen = currentpen, real pos = 0.5, real offby = 0, bool invert = false, arrowbar myarrow = ArcArrow(SimpleHead)) {
    pair dir = dir(mypath, reltime(mypath, pos));

    label(Label(text,
          embed    = Rotate((invert ? -1 : 1) * dir),
          position = relpoint(mypath, pos) - scale(offby) * rotate(90) * dir));

    draw(mypath, arrow = myarrow, mypen);
}

