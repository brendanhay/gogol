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
-- Module      : Network.Google.Spectrum.Paws.NotifySpectrumUse
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notifies the database that the device has selected certain frequency ranges for transmission. Only to be invoked when required by the regulator. The Google Spectrum Database does not operate in domains that require notification, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @spectrum.paws.notifySpectrumUse@.
module Network.Google.Spectrum.Paws.NotifySpectrumUse
  ( -- * Resource
    SpectrumPawsNotifySpectrumUseResource,

    -- ** Constructing a Request
    newSpectrumPawsNotifySpectrumUse,
    SpectrumPawsNotifySpectrumUse,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.Spectrum.Types

-- | A resource alias for @spectrum.paws.notifySpectrumUse@ method which the
-- 'SpectrumPawsNotifySpectrumUse' request conforms to.
type SpectrumPawsNotifySpectrumUseResource =
  "spectrum"
    Core.:> "v1explorer"
    Core.:> "paws"
    Core.:> "notifySpectrumUse"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              PawsNotifySpectrumUseRequest
    Core.:> Core.Post '[Core.JSON] PawsNotifySpectrumUseResponse

-- | Notifies the database that the device has selected certain frequency ranges for transmission. Only to be invoked when required by the regulator. The Google Spectrum Database does not operate in domains that require notification, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ 'newSpectrumPawsNotifySpectrumUse' smart constructor.
newtype SpectrumPawsNotifySpectrumUse = SpectrumPawsNotifySpectrumUse
  { -- | Multipart request metadata.
    payload :: PawsNotifySpectrumUseRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpectrumPawsNotifySpectrumUse' with the minimum fields required to make a request.
newSpectrumPawsNotifySpectrumUse ::
  -- |  Multipart request metadata. See 'payload'.
  PawsNotifySpectrumUseRequest ->
  SpectrumPawsNotifySpectrumUse
newSpectrumPawsNotifySpectrumUse payload =
  SpectrumPawsNotifySpectrumUse {payload = payload}

instance
  Core.GoogleRequest
    SpectrumPawsNotifySpectrumUse
  where
  type
    Rs SpectrumPawsNotifySpectrumUse =
      PawsNotifySpectrumUseResponse
  type Scopes SpectrumPawsNotifySpectrumUse = '[]
  requestClient SpectrumPawsNotifySpectrumUse {..} =
    go (Core.Just Core.AltJSON) payload spectrumService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpectrumPawsNotifySpectrumUseResource
          )
          Core.mempty
