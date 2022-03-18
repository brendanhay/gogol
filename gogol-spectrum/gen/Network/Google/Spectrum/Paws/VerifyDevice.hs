{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.Spectrum.Paws.VerifyDevice
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates a device for white space use in accordance with regulatory rules. The Google Spectrum Database does not support master\/slave configurations, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @spectrum.paws.verifyDevice@.
module Network.Google.Spectrum.Paws.VerifyDevice
  ( -- * Resource
    SpectrumPawsVerifyDeviceResource,

    -- ** Constructing a Request
    newSpectrumPawsVerifyDevice,
    SpectrumPawsVerifyDevice,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Spectrum.Types

-- | A resource alias for @spectrum.paws.verifyDevice@ method which the
-- 'SpectrumPawsVerifyDevice' request conforms to.
type SpectrumPawsVerifyDeviceResource =
  "spectrum"
    Core.:> "v1explorer"
    Core.:> "paws"
    Core.:> "verifyDevice"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PawsVerifyDeviceRequest
    Core.:> Core.Post '[Core.JSON] PawsVerifyDeviceResponse

-- | Validates a device for white space use in accordance with regulatory rules. The Google Spectrum Database does not support master\/slave configurations, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ 'newSpectrumPawsVerifyDevice' smart constructor.
newtype SpectrumPawsVerifyDevice = SpectrumPawsVerifyDevice
  { -- | Multipart request metadata.
    payload :: PawsVerifyDeviceRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpectrumPawsVerifyDevice' with the minimum fields required to make a request.
newSpectrumPawsVerifyDevice ::
  -- |  Multipart request metadata. See 'payload'.
  PawsVerifyDeviceRequest ->
  SpectrumPawsVerifyDevice
newSpectrumPawsVerifyDevice payload =
  SpectrumPawsVerifyDevice {payload = payload}

instance Core.GoogleRequest SpectrumPawsVerifyDevice where
  type
    Rs SpectrumPawsVerifyDevice =
      PawsVerifyDeviceResponse
  type Scopes SpectrumPawsVerifyDevice = '[]
  requestClient SpectrumPawsVerifyDevice {..} =
    go (Core.Just Core.AltJSON) payload spectrumService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpectrumPawsVerifyDeviceResource
          )
          Core.mempty
