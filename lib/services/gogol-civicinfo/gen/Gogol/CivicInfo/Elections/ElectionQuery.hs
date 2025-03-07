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
-- Module      : Gogol.CivicInfo.Elections.ElectionQuery
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List of available elections to query.
--
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference> for @civicinfo.elections.electionQuery@.
module Gogol.CivicInfo.Elections.ElectionQuery
  ( -- * Resource
    CivicInfoElectionsElectionQueryResource,

    -- ** Constructing a Request
    CivicInfoElectionsElectionQuery (..),
    newCivicInfoElectionsElectionQuery,
  )
where

import Gogol.CivicInfo.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @civicinfo.elections.electionQuery@ method which the
-- 'CivicInfoElectionsElectionQuery' request conforms to.
type CivicInfoElectionsElectionQueryResource =
  "civicinfo"
    Core.:> "v2"
    Core.:> "elections"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "productionDataOnly" Core.Bool
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ElectionsQueryResponse

-- | List of available elections to query.
--
-- /See:/ 'newCivicInfoElectionsElectionQuery' smart constructor.
data CivicInfoElectionsElectionQuery = CivicInfoElectionsElectionQuery
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Whether to include data that has not been allowlisted yet
    productionDataOnly :: Core.Bool,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicInfoElectionsElectionQuery' with the minimum fields required to make a request.
newCivicInfoElectionsElectionQuery ::
  CivicInfoElectionsElectionQuery
newCivicInfoElectionsElectionQuery =
  CivicInfoElectionsElectionQuery
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      productionDataOnly = Core.True,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CivicInfoElectionsElectionQuery where
  type Rs CivicInfoElectionsElectionQuery = ElectionsQueryResponse
  type Scopes CivicInfoElectionsElectionQuery = '[]
  requestClient CivicInfoElectionsElectionQuery {..} =
    go
      xgafv
      accessToken
      callback
      (Core.Just productionDataOnly)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      civicInfoService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy CivicInfoElectionsElectionQueryResource)
          Core.mempty
