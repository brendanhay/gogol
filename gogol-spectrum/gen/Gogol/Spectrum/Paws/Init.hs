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
-- Module      : Gogol.Spectrum.Paws.Init
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initializes the connection between a white space device and the database.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @spectrum.paws.init@.
module Gogol.Spectrum.Paws.Init
  ( -- * Resource
    SpectrumPawsInitResource,

    -- ** Constructing a Request
    newSpectrumPawsInit,
    SpectrumPawsInit,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spectrum.Types

-- | A resource alias for @spectrum.paws.init@ method which the
-- 'SpectrumPawsInit' request conforms to.
type SpectrumPawsInitResource =
  "spectrum"
    Core.:> "v1explorer"
    Core.:> "paws"
    Core.:> "init"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PawsInitRequest
    Core.:> Core.Post '[Core.JSON] PawsInitResponse

-- | Initializes the connection between a white space device and the database.
--
-- /See:/ 'newSpectrumPawsInit' smart constructor.
newtype SpectrumPawsInit = SpectrumPawsInit
  { -- | Multipart request metadata.
    payload :: PawsInitRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpectrumPawsInit' with the minimum fields required to make a request.
newSpectrumPawsInit ::
  -- |  Multipart request metadata. See 'payload'.
  PawsInitRequest ->
  SpectrumPawsInit
newSpectrumPawsInit payload = SpectrumPawsInit {payload = payload}

instance Core.GoogleRequest SpectrumPawsInit where
  type Rs SpectrumPawsInit = PawsInitResponse
  type Scopes SpectrumPawsInit = '[]
  requestClient SpectrumPawsInit {..} =
    go (Core.Just Core.AltJSON) payload spectrumService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SpectrumPawsInitResource)
          Core.mempty
