module "ads_b_snap" {
  source = "./modules/repo"

  name        = "ads-b-snap"
  description = "Snap package for ADS-B, Mode S, and Mode 3A/3C demodulator and decoder"
}

module "bash_d" {
  source = "./modules/repo"

  name        = "bash.d"
  description = "My own bash setup"
}

module "dot_emacs_d" {
  source = "./modules/repo"

  name        = "dot-emacs.d"
  description = "~ack/.emacs.d (my own Emacs config)"
}

module "h2static" {
  source = "./modules/repo"

  name        = "h2static"
  description = "Tiny static web server with TLS and HTTP/2 support"
}

module "lxstats" {
  source = "./modules/repo"

  name        = "lxstats"
  description = "Python library to access process and system stats from /proc and /sys on Linux"
}

module "metapackages" {
  source = "./modules/repo"

  name        = "metapackages"
  description = "Script to build distribution metapackages and a repository for them"
}

module "pelican_chemistry" {
  source = "./modules/repo"

  name        = "pelican-chemistry"
  description = "A minimalistic responsive Pelican theme"
}

module "process_stats_exporter" {
  source = "./modules/repo"

  name        = "process-stats-exporter"
  description = "Export Prometheus metrics about processes and tasks"
}

module "prometheus_aioexporter" {
  source = "./modules/repo"

  name        = "prometheus-aioexporter"
  description = "Asyncio library for creating Prometheus exporters"
}

module "pylsp_snap" {
  source = "./modules/repo"

  name        = "pylsp-snap"
  description = "Snap for the python-lsp-server"
}

module "python_skeleton" {
  source = "./modules/repo"

  name        = "python-skeleton"
  description = "Helper script to setup Python projects"
}

module "query_exporter" {
  source = "./modules/repo"

  name        = "query-exporter"
  description = "Export Prometheus metrics from SQL queries"
}

module "quickrepo" {
  source = "./modules/repo"

  name        = "quickrepo"
  description = "Script to build a Debian repository from a set of .deb or .changes files"
}

module "rtlsdr_snap" {
  source = "./modules/repo"

  name         = "rtlsdr-snap"
  description  = "Snap package for RTL-SDR tools"
  homepage_url = "https://osmocom.org/projects/rtl-sdr"
}

module "snap_helpers" {
  source = "./modules/repo"

  name        = "snap-helpers"
  description = "Interact with the Snap system within a Snap"
}

module "sonarr_snap" {
  source = "./modules/repo"

  name         = "sonarr-snap"
  description  = "Snap for the Sonarr smart PVR"
  homepage_url = "https://sonarr.tv"
}

module "sshoot" {
  source = "./modules/repo"

  name        = "sshoot"
  description = "Manage sshuttle VPN sessions"
}

module "toolrack" {
  source = "./modules/repo"

  name        = "toolrack"
  description = "Collection of reusable functions and classes, and a few scripts too"
}
