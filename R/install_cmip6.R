#' @title Install chelsa cmip6 package from conda
#' @param ... Passing additional parameters
#'
#' @param envname The name of a conda environment attached to this package
#' @param new_env Set a new environment where to install this package
#'
#' @importFrom reticulate conda_create conda_install virtualenv_exists virtualenv_remove
#' @export
#
install_cmip6 <-  function(...,
           envname = "r-cmip6",
           new_env = identical(envname, "r-cmip6")) {

  conda_create(envname)

  if(new_env && virtualenv_exists(envname))
      virtualenv_remove(envname)

  conda_install(packages = "chelsa-cmip6", pip = TRUE, envname = envname, ...)

  }
