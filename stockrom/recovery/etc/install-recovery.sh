#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:2048:cdcf61d1047e17ecae3359f64affabfc26dcc96e; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:15331328:6ced7e79b3313e9110fdb8794758c7eedea04b08 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 1cd3d34e613ef35c957611bdfcf5011f3ca727b7 15894528 6ced7e79b3313e9110fdb8794758c7eedea04b08:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
