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
-- Module      : Gogol.CivicInfo.Divisions.QueryDivisionByAddress
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lookup OCDIDs and names for divisions related to an address.
--
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference> for @civicinfo.divisions.queryDivisionByAddress@.
module Gogol.CivicInfo.Divisions.QueryDivisionByAddress
  ( -- * Resource
    CivicInfoDivisionsQueryDivisionByAddressResource,

    -- ** Constructing a Request
    CivicInfoDivisionsQueryDivisionByAddress (..),
    newCivicInfoDivisionsQueryDivisionByAddress,
  )
where

import Gogol.CivicInfo.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @civicinfo.divisions.queryDivisionByAddress@ method which the
-- 'CivicInfoDivisionsQueryDivisionByAddress' request conforms to.
type CivicInfoDivisionsQueryDivisionByAddressResource =
  "civicinfo"
    Core.:> "v2"
    Core.:> "divisionsByAddress"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "address" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] DivisionByAddressResponse

-- | Lookup OCDIDs and names for divisions related to an address.
--
-- /See:/ 'newCivicInfoDivisionsQueryDivisionByAddress' smart constructor.
data CivicInfoDivisionsQueryDivisionByAddress = CivicInfoDivisionsQueryDivisionByAddress
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    address :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicInfoDivisionsQueryDivisionByAddress' with the minimum fields required to make a request.
newCivicInfoDivisionsQueryDivisionByAddress ::
  CivicInfoDivisionsQueryDivisionByAddress
newCivicInfoDivisionsQueryDivisionByAddress =
  CivicInfoDivisionsQueryDivisionByAddress
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      address = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CivicInfoDivisionsQueryDivisionByAddress
  where
  type
    Rs CivicInfoDivisionsQueryDivisionByAddress =
      DivisionByAddressResponse
  type Scopes CivicInfoDivisionsQueryDivisionByAddress = '[]
  requestClient CivicInfoDivisionsQueryDivisionByAddress {..} =
    go
      xgafv
      accessToken
      address
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      civicInfoService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CivicInfoDivisionsQueryDivisionByAddressResource
          )
          Core.mempty
