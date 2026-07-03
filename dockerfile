FROM datarhei/restreamer:vaapi-2.12.0

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
  wget \
  gnupg2 \ 
  software-properties-common \
  ca-certificates

RUN wget -qO - https://repositories.intel.com/gpu/intel-graphics.key | gpg --dearmor --output /usr/share/keyrings/intel-graphics.gpg && \
  echo "deb [arch=amd64 signed-by=/usr/share/keyrings/intel-graphics.gpg] https://repositories.intel.com/gpu/ubuntu jammy client" | tee /etc/apt/sources.list.d/intel-gpu-jammy.list

RUN apt-get update && apt-get install -y --no-install-recommends \
  intel-media-va-driver-non-free \
  libmfx1 \
  libmfxgen1 \
  libvpl2 \
  libva-drm2 \
  libva2 \
  vainfo

RUN rm -rf /var/lib/apt/lists/*
