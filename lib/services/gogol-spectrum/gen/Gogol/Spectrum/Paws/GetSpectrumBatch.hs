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
-- Module      : Gogol.Spectrum.Paws.GetSpectrumBatch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Spectrum Database does not support batch requests, so this method always yields an UNIMPLEMENTED error.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @spectrum.paws.getSpectrumBatch@.
module Gogol.Spectrum.Paws.GetSpectrumBatch
  ( -- * Resource
    SpectrumPawsGetSpectrumBatchResource,

    -- ** Constructing a Request
    newSpectrumPawsGetSpectrumBatch,
    SpectrumPawsGetSpectrumBatch,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Spectrum.Types

-- | A resource alias for @spectrum.paws.getSpectrumBatch@ method which the
-- 'SpectrumPawsGetSpectrumBatch' request conforms to.
type SpectrumPawsGetSpectrumBatchResource =
  "spectrum"
    Core.:> "v1explorer"
    Core.:> "paws"
    Core.:> "getSpectrumBatch"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PawsGetSpectrumBatchRequest
    Core.:> Core.Post '[Core.JSON] PawsGetSpectrumBatchResponse

-- | The Google Spectrum Database does not support batch requests, so this method always yields an UNIMPLEMENTED error.
--
-- /See:/ 'newSpectrumPawsGetSpectrumBatch' smart constructor.
newtype SpectrumPawsGetSpectrumBatch = SpectrumPawsGetSpectrumBatch
  { -- | Multipart request metadata.
    payload :: PawsGetSpectrumBatchRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SpectrumPawsGetSpectrumBatch' with the minimum fields required to make a request.
newSpectrumPawsGetSpectrumBatch ::
  -- |  Multipart request metadata. See 'payload'.
  PawsGetSpectrumBatchRequest ->
  SpectrumPawsGetSpectrumBatch
newSpectrumPawsGetSpectrumBatch payload =
  SpectrumPawsGetSpectrumBatch {payload = payload}

instance
  Core.GoogleRequest
    SpectrumPawsGetSpectrumBatch
  where
  type
    Rs SpectrumPawsGetSpectrumBatch =
      PawsGetSpectrumBatchResponse
  type Scopes SpectrumPawsGetSpectrumBatch = '[]
  requestClient SpectrumPawsGetSpectrumBatch {..} =
    go (Core.Just Core.AltJSON) payload spectrumService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SpectrumPawsGetSpectrumBatchResource
          )
          Core.mempty
