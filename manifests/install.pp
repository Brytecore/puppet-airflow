# == Class: airflow::install
# == Description: Install airflow python package using pip.
#
class airflow::install inherits airflow {
  include airflow::deps

  # Install airflow python package
  ensure_resource(python::pip,$airflow::package_name,
    {pkgname => $airflow::package_name, ensure => $airflow::version, require => Package['python-pip']})
}
