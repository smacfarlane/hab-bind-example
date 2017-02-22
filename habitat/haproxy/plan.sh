pkg_name=haproxy
pkg_origin=smacfarlane
pkg_version=0.0.1
pkg_source=http://some_source_url/releases/${pkg_name}-${pkg_version}.tar.gz
pkg_shasum=TODO
pkg_deps=(core/haproxy)
pkg_svc_user="root"

pkg_expose=(80 443 9000)
pkg_binds=(
  [backend]="port"
)

pkg_svc_run="haproxy -f ${pkg_svc_config_path}/haproxy.conf -db"

do_download() {
  return 0
}

do_unpack() {
  return 0
}

do_verify() {
  return 0
}

do_build() {
  openssl req -newkey rsa:2048 -nodes -keyout pe.key \
    -out pe.csr -x509 -days 365 \
    -subj "/C=US/ST=Washington/L=Seattle/O=Planet Express/CN=planet.express"
  cat pe.key pe.csr > pe.pem 
}

do_install() {
  mkdir -p "${pkg_prefix}/ssl" 
  cp -a pe.key pe.csr pe.pem "${pkg_prefix}/ssl"
}
