{ config, lib, pkgs, ... }:

{
  mkShell,
  system,
  inputs,
  ...
}:
mkShell{inherit (inputs.self.chechs.${system}.pre-commit-check) shellHook;}
