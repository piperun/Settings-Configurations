

mkdir -p group_vars host_vars library module_utils filter_plugins
mkdir -p roles/common/{tasks,handlers,templates,files,vars,defaults,meta,library,module_utils,lookup_plugins}
touch production staging site.yml roles/common/{tasks,handlers,templates,files,vars,defaults,meta}/main.yml