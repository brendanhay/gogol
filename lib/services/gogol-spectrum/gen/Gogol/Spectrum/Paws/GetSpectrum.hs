{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Spectrum.Paws.GetSpectrum
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests information about the available spectrum for a device at a location. Requests from a fixed-mode device must include owner information so the device can be registered with the database.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @spectrum.paws.getSpectrum@.
module Gogol.Spectrum.Paws.GetSpectrum
  ( -- * Resource
    SpectrumPawsGetSpectrumResource,

    -- ** Constructing a Request
    SpectrumPawsGetSpectrum (..),
    newSpectrumPawsGetSpectrum,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spectrum.Types

-- | A resource alias for @spectrum.paws.getSpectrum@ method which the
-- 'SpectrumPawsGetSpectrum' request conforms to.
type SpectrumPawsGetSpectrumResource =
  "spectrum"
    Core.:> "v1explorer"
    Core.:> "paws"
    Core.:> "getSpectrum"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PawsGetSpectrumRequest
    Core.:> Core.Post '[Core.JSON] PawsGetSpectrumResponse

-- | Requests information about the available spectrum for a device at a location. Requests from a fixed-mode device must include owner information so the device can be registered with the database.
--
-- /See:/ 'newSpectrumPawsGetSpectrum' smart constructor.
newtype SpectrumPawsGetSpectrum = SpectrumPawsGetSpectrum
  { -- | Multipart request metadata.
    payload :: PawsGetSpectrumRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpectrumPawsGetSpectrum' with the minimum fields required to make a request.
newSpectrumPawsGetSpectrum ::
  -- |  Multipart request metadata. See 'payload'.
  PawsGetSpectrumRequest ->
  SpectrumPawsGetSpectrum
newSpectrumPawsGetSpectrum payload =
  SpectrumPawsGetSpectrum {payload = payload}

instance Core.GoogleRequest SpectrumPawsGetSpectrum where
  type Rs SpectrumPawsGetSpectrum = PawsGetSpectrumResponse
  type Scopes SpectrumPawsGetSpectrum = '[]
  requestClient SpectrumPawsGetSpectrum {..} =
    go (Core.Just Core.AltJSON) payload spectrumService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SpectrumPawsGetSpectrumResource)
          Core.mempty
