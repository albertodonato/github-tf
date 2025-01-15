module "ads_b_snap" {
  source = "./modules/repo"

  name        = "ads-b-snap"
  description = "Snap package for ADS-B, Mode S, and Mode 3A/3C demodulator and decoder"
  topics      = ["ads-b", "snap"]
}

module "bash_d" {
  source = "./modules/repo"

  name        = "bash.d"
  description = "My own bash setup"
  topics      = ["bash", "bashrc-configs", "shell"]
}

module "dot_emacs_d" {
  source = "./modules/repo"

  name        = "dot-emacs.d"
  description = "~ack/.emacs.d (my own Emacs config)"
  topics = [
    "emacs",
    "emacs-configuration",
    "emacs-lisp",
  ]
}

module "h2static" {
  source = "./modules/repo"

  name        = "h2static"
  description = "Tiny static web server with TLS and HTTP/2 support"
  topics = [
    "http-server",
    "http2",
    "https-server",
    "json-format",
    "serving-files",
    "static-server",
    "tls",
  ]
}

module "lxstats" {
  source = "./modules/repo"

  name        = "lxstats"
  description = "Python library to access process and system stats from /proc and /sys on Linux"
  topics = [
    "linux",
    "monitoring",
    "proc",
    "python-library",
    "sys",
  ]
}

module "metapackages" {
  source = "./modules/repo"

  name        = "metapackages"
  description = "Script to build distribution metapackages and a repository for them"
  topics = [
    "deb",
    "debian",
    "arch",
    "packaging",
  ]
}

module "pelican_chemistry" {
  source = "./modules/repo"

  name        = "pelican-chemistry"
  description = "A minimalistic responsive Pelican theme"
  topics = [
    "pelican",
    "pelican-theme",
  ]
}

module "process_stats_exporter" {
  source = "./modules/repo"

  name        = "process-stats-exporter"
  description = "Export Prometheus metrics about processes and tasks"
  topics = [
    "monitoring",
    "process",
    "prometheus",
    "prometheus-exporter",
  ]
}

module "prometheus_aioexporter" {
  source = "./modules/repo"

  name        = "prometheus-aioexporter"
  description = "Asyncio library for creating Prometheus exporters"
  topics = [
    "asyncio",
    "library",
    "metrics",
    "prometheus",
    "prometheus-exporter",
    "python-library",
  ]
}

module "pylsp_snap" {
  source = "./modules/repo"

  name        = "pylsp-snap"
  description = "Snap for the python-lsp-server"
  topics = [
    "lsp",
    "lsp-server",
    "python-language-server",
    "snap",
  ]
}

module "python_skeleton" {
  source = "./modules/repo"

  name        = "python-skeleton"
  description = "Helper script to setup Python projects"
  topics      = ["python"]
}

module "query_exporter" {
  source = "./modules/repo"

  name        = "query-exporter"
  description = "Export Prometheus metrics from SQL queries"
  topics = [
    "database",
    "metrics",
    "metrics-exporter",
    "prometheus",
    "prometheus-exporter",
    "query",
    "sql",
  ]
  extra_issue_labels = [
    {
      name        = "github_actions"
      description = "Pull requests that update GitHub Actions code"
      color       = "000000"
    },
    {
      name        = "dependencies"
      description = "Pull requests that update a dependency file"
      color       = "0366d6"
    },
    {
      name        = "python"
      description = "Pull requests that update Python code"
      color       = "2b67c6"
    },
  ]
}

module "quickrepo" {
  source = "./modules/repo"

  name        = "quickrepo"
  description = "Script to build a Debian repository from a set of .deb or .changes files"
  topics = [
    "apt",
    "apt-get",
    "deb",
    "debian",
    "debian-packaging",
    "repository",
  ]
}

module "rtlsdr_snap" {
  source = "./modules/repo"

  name         = "rtlsdr-snap"
  description  = "Snap package for RTL-SDR tools"
  homepage_url = "https://osmocom.org/projects/rtl-sdr"
  topics = [
    "radioham",
    "rtl-sdr",
    "sdr",
    "snap",
  ]
}

module "snap_helpers" {
  source = "./modules/repo"

  name        = "snap-helpers"
  description = "Interact with the Snap system within a Snap"
  topics = [
    "python-library",
    "snap",
    "snapcraft",
    "snappy",
  ]
}

module "sonarr_snap" {
  source = "./modules/repo"

  name         = "sonarr-snap"
  description  = "Snap for the Sonarr smart PVR"
  homepage_url = "https://sonarr.tv"
  topics = [
    "snap",
    "sonarr",
    "sonarr-pvr",
  ]
}

module "sshoot" {
  source = "./modules/repo"

  name        = "sshoot"
  description = "Manage sshuttle VPN sessions"
  topics = [
    "ssh",
    "sshuttle",
    "vpn",
  ]
}

module "toolrack" {
  source = "./modules/repo"

  name        = "toolrack"
  description = "Collection of reusable functions and classes, and a few scripts too"
  topics = [
    "python-library",
    "utility-library",
  ]
}
