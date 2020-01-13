load("@io_tweag_rules_nixpkgs//nixpkgs:nixpkgs.bzl", "nixpkgs_git_repository", "nixpkgs_package")

load(":private/idris_loader_impl.bzl", "loadScala")

def loadIdris(localIdrisInstallation=None):
  loadScala()
  nixpkgs_git_repository(
      name = "nixpkgs",
      revision = "18f0a9ab1c347e1364728957e6e93df68e391438", # Any tag or commit hash
      sha256 = "" # optional sha to verify package integrity!
  )
  nixpkgs_package(
      name = "idris",
      repository = "@nixpkgs",
      attribute_path = "idris"
  )
