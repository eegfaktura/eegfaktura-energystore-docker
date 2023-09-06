# syntax=docker/dockerfile:1
# vfeeg-energystore energy data storage for EEGFaktura
# Copyright (C) 2023  Matthias Poettinger
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

FROM ghcr.io/vfeeg-development/energy-store
LABEL org.vfeeg.vendor="Verein zur Förderung von Erneuerbaren Energiegemeinschaften"
LABEL org.vfeeg.image.authors="eegfaktura@vfeeg.org"
LABEL org.opencontainers.image.vendor="Verein zur Förderung von Erneuerbaren Energiegemeinschaften"
LABEL org.opencontainers.image.authors="eegfaktura@vfeeg.org"
LABEL org.opencontainers.image.title="eegfaktura-energystore"
LABEL org.opencontainers.image.version="0.1.0"
LABEL org.opencontainers.image.description="EEG Faktura Energystore with docker compose configuration"
LABEL org.opencontainers.image.licenses=AGPL-3.0
LABEL org.opencontainers.image.source=https://github.com/eegfaktura/eegfaktura-energystore
LABEL org.opencontainers.image.base.name=ghcr.io/vfeeg-development/energy-store
LABEL description="EEG Faktura Energystore with docker compose configuration"
LABEL version="0.1.0"

RUN mkdir -p "/etc/energystore"
COPY energystore/etc/* /etc/energystore