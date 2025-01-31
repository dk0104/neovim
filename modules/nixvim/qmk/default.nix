{
  plugins.qmk = {
    enable = true;
    auto_format_pattern = "*keymap.c";
    comment_preview = {
      keymap_overrides = { };
      position = "top";
      symbols = {
        bl = "└";
        bm = "┴";
        br = "┘";
        horz = "─";
        ml = "├";
        mm = "┼";
        mr = "┤";
        space = " ";
        tl = "┌";
        tm = "┬";
        tr = "┐";
        vert = "│";
      };
    };
    layout = [
      "x x"
      "x^x"
    ];
    name = "LAYOUT_preonic_grid";
    timeout = 5000;
    variant = "qmk";
  };
}
