# nix/modules/home-manager.nix — auto-generated from env_logger.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.env_logger; in {
  options.programs.env_logger = {
    enable = lib.mkEnableOption "env_logger";
    package = lib.mkOption { type = lib.types.package; default = pkgs.env_logger or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
