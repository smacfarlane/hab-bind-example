pkg_name=nginx
pkg_origin=smacfarlane
pkg_version=0.0.1
pkg_source=http://some_source_url/releases/${pkg_name}-${pkg_version}.tar.gz
pkg_shasum=TODO
pkg_deps=(core/nginx core/openssl)
pkg_svc_user="root"
pkg_exports=(
  [port]=nginx.http.listen.port
)
pkg_exposes=(port)
pkg_svc_run="nginx -c ${pkg_svc_config_path}/default.conf"

do_build() {
  return 0
}
do_unpack() {
  return 0
}
do_install() {
  return 0
}
do_download() {
  return 0
}
do_verify() {
  return 0
}
