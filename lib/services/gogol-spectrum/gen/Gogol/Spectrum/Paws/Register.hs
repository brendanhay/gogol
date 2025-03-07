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
-- Module      : Gogol.Spectrum.Paws.Register
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Spectrum Database implements registration in the getSpectrum method. As such this always returns an UNIMPLEMENTED error.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @spectrum.paws.register@.
module Gogol.Spectrum.Paws.Register
  ( -- * Resource
    SpectrumPawsRegisterResource,

    -- ** Constructing a Request
    SpectrumPawsRegister (..),
    newSpectrumPawsRegister,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.Spectrum.Types

-- | A resource alias for @spectrum.paws.register@ method which the
-- 'SpectrumPawsRegister' request conforms to.
type SpectrumPawsRegisterResource =
  "spectrum"
    Core.:> "v1explorer"
    Core.:> "paws"
    Core.:> "register"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PawsRegisterRequest
    Core.:> Core.Post '[Core.JSON] PawsRegisterResponse

-- | The Google Spectrum Database implements registration in the getSpectrum method. As such this always returns an UNIMPLEMENTED error.
--
-- /See:/ 'newSpectrumPawsRegister' smart constructor.
newtype SpectrumPawsRegister = SpectrumPawsRegister
  { -- | Multipart request metadata.
    payload :: PawsRegisterRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpectrumPawsRegister' with the minimum fields required to make a request.
newSpectrumPawsRegister ::
  -- |  Multipart request metadata. See 'payload'.
  PawsRegisterRequest ->
  SpectrumPawsRegister
newSpectrumPawsRegister payload =
  SpectrumPawsRegister {payload = payload}

instance Core.GoogleRequest SpectrumPawsRegister where
  type Rs SpectrumPawsRegister = PawsRegisterResponse
  type Scopes SpectrumPawsRegister = '[]
  requestClient SpectrumPawsRegister {..} =
    go (Core.Just Core.AltJSON) payload spectrumService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy SpectrumPawsRegisterResource)
          Core.mempty
