# Shamelessly copied from Oh My Zsh's Fishy theme.
_fishy_path() {
  echo $(pwd | perl -pe '
   BEGIN {
      binmode STDIN,  ":encoding(UTF-8)";
      binmode STDOUT, ":encoding(UTF-8)";
   }; s|^$ENV{HOME}|~|g; s|/([^/.])[^/]*(?=/)|/$1|g; s|/\.([^/])[^/]*(?=/)|/.$1|g
')
}

local path_color='green'; [ $UID -eq 0 ] && path_color='red'
PROMPT='%{$fg[blue]%}[%m]%{$reset_color%} %{$fg[$path_color]%}$(_fishy_path)%{$reset_color%} %(!.#.§) '
