{ lib, ... }:
{
  plugins.todo-comments = {
    enable = true;

    settings = {
      signs = true;

      highlight = {
        multiline = true;
        pattern = ''.*<(KEYWORDS)\s*:'';
        before = "fg";
      };

      search = {
        pattern = ''\b(KEYWORDS):'';
      };

      mergeKeywords = true;

      keywords = {
        FIX = {
          icon = " ";
          color = "error";
          alt = [
            "FIXME"
            "BUG"
            "FIXIT"
            "ISSUE"
          ];
        };
        TODO = {
          icon = " ";
          color = "todo";
        };
        HACK = {
          icon = " ";
          color = "error";
          alt = [
            "HACK"
            "DRAGONS"
          ];
        };
        WARN = {
          icon = " ";
          color = "warning";
          alt = [
            "WARNING"
            "WARNING"
            "WARN"
          ];
        };
        PERF = {
          icon = " ";
          color = "info";
          alt = [
            "OPTIM"
            "PERFORMANCE"
            "OPTIMIZE"
            "PERF"
            "PERFORMANCE"
          ];
        };
        NOTE = {
          icon = " ";
          color = "hint";
          alt = [
            "INFO"
            "NOTE"
            "INFO"
          ];
        };
      };

      colors = with lib.flocke.theme.nord; {
        error = [ nord11 ];
        warning = [ nord12 ];
        info = [ nord15 ];
        hint = [ nord10 ];
        todo = [ nord6 ];
        default = [ nord6 ];
      };
    };
  };
}
