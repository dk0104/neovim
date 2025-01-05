{ config, lib, pkgs, ... }:

{
  lua = {
    mkRaw = value: {__raw = value; };
  };
}
