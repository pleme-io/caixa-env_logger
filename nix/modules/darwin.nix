# nix/modules/darwin.nix — auto-generated from env_logger.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.env_logger; in {
  options.services.env_logger = {
    enable = lib.mkEnableOption "env_logger";
    package = lib.mkOption { type = lib.types.package; default = pkgs.env_logger or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
