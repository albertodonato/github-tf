module "ads_b_snap" {
  source = "./modules/repo"

  name        = "ads-b-snap"
  description = "Snap package for ADS-B, Mode S, and Mode 3A/3C demodulator and decoder"
}

module "h2static" {
  source = "./modules/repo"

  name        = "h2static"
  description = "Tiny static web server with TLS and HTTP/2 support"
}

module "prometheus_aioexporter" {
  source = "./modules/repo"

  name        = "prometheus-aioexporter"
  description = "Asyncio library for creating Prometheus exporters"
}

module "query_exporter" {
  source = "./modules/repo"

  name        = "query-exporter"
  description = "Export Prometheus metrics from SQL queries"
}

module "rtlsdr_snap" {
  source = "./modules/repo"

  name        = "rtlsdr-snap"
  description = "Snap package for RTL-SDR tools"
  homepage_url = "https://osmocom.org/projects/rtl-sdr"
}

module "sshoot" {
  source = "./modules/repo"

  name        = "sshoot"
  description = "Manage sshuttle VPN sessions"
}

module "snap_helpers" {
  source = "./modules/repo"

  name        = "snap-helpers"
  description = "Interact with the Snap system within a Snap"
}

module "toolrack" {
  source = "./modules/repo"

  name        = "toolrack"
  description = "Collection of reusable functions and classes, and a few scripts too"
}
