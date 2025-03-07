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
-- Module      : Gogol.QPXExpress.Trips.Search
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of flights.
--
-- /See:/ <http://developers.google.com/qpx-express QPX Express API Reference> for @qpxExpress.trips.search@.
module Gogol.QPXExpress.Trips.Search
  ( -- * Resource
    QPXExpressTripsSearchResource,

    -- ** Constructing a Request
    QPXExpressTripsSearch (..),
    newQPXExpressTripsSearch,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.QPXExpress.Types

-- | A resource alias for @qpxExpress.trips.search@ method which the
-- 'QPXExpressTripsSearch' request conforms to.
type QPXExpressTripsSearchResource =
  "qpxExpress"
    Core.:> "v1"
    Core.:> "trips"
    Core.:> "search"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] TripsSearchRequest
    Core.:> Core.Post '[Core.JSON] TripsSearchResponse

-- | Returns a list of flights.
--
-- /See:/ 'newQPXExpressTripsSearch' smart constructor.
newtype QPXExpressTripsSearch = QPXExpressTripsSearch
  { -- | Multipart request metadata.
    payload :: TripsSearchRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'QPXExpressTripsSearch' with the minimum fields required to make a request.
newQPXExpressTripsSearch ::
  -- |  Multipart request metadata. See 'payload'.
  TripsSearchRequest ->
  QPXExpressTripsSearch
newQPXExpressTripsSearch payload =
  QPXExpressTripsSearch {payload = payload}

instance Core.GoogleRequest QPXExpressTripsSearch where
  type Rs QPXExpressTripsSearch = TripsSearchResponse
  type Scopes QPXExpressTripsSearch = '[]
  requestClient QPXExpressTripsSearch {..} =
    go (Core.Just Core.AltJSON) payload qPXExpressService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy QPXExpressTripsSearchResource)
          Core.mempty
