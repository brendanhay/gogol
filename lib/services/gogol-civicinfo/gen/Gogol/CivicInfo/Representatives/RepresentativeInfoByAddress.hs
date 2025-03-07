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
-- Module      : Gogol.CivicInfo.Representatives.RepresentativeInfoByAddress
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up political geography and representative information for a single address.
--
-- /See:/ <https://developers.google.com/civic-information/ Google Civic Information API Reference> for @civicinfo.representatives.representativeInfoByAddress@.
module Gogol.CivicInfo.Representatives.RepresentativeInfoByAddress
  ( -- * Resource
    CivicInfoRepresentativesRepresentativeInfoByAddressResource,

    -- ** Constructing a Request
    CivicInfoRepresentativesRepresentativeInfoByAddress (..),
    newCivicInfoRepresentativesRepresentativeInfoByAddress,
  )
where

import Gogol.CivicInfo.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @civicinfo.representatives.representativeInfoByAddress@ method which the
-- 'CivicInfoRepresentativesRepresentativeInfoByAddress' request conforms to.
type CivicInfoRepresentativesRepresentativeInfoByAddressResource =
  "civicinfo"
    Core.:> "v2"
    Core.:> "representatives"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "address" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeOffices" Core.Bool
    Core.:> Core.QueryParams
              "levels"
              RepresentativesRepresentativeInfoByAddressLevels
    Core.:> Core.QueryParams
              "roles"
              RepresentativesRepresentativeInfoByAddressRoles
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] RepresentativeInfoResponse

-- | Looks up political geography and representative information for a single address.
--
-- /See:/ 'newCivicInfoRepresentativesRepresentativeInfoByAddress' smart constructor.
data CivicInfoRepresentativesRepresentativeInfoByAddress = CivicInfoRepresentativesRepresentativeInfoByAddress
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The address to look up. May only be specified if the field ocdId is not given in the URL
    address :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Whether to return information about offices and officials. If false, only the top-level district information will be returned.
    includeOffices :: Core.Bool,
    -- | A list of office levels to filter by. Only offices that serve at least one of these levels will be returned. Divisions that don\'t contain a matching office will not be returned.
    levels :: (Core.Maybe [RepresentativesRepresentativeInfoByAddressLevels]),
    -- | A list of office roles to filter by. Only offices fulfilling one of these roles will be returned. Divisions that don\'t contain a matching office will not be returned.
    roles :: (Core.Maybe [RepresentativesRepresentativeInfoByAddressRoles]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CivicInfoRepresentativesRepresentativeInfoByAddress' with the minimum fields required to make a request.
newCivicInfoRepresentativesRepresentativeInfoByAddress ::
  CivicInfoRepresentativesRepresentativeInfoByAddress
newCivicInfoRepresentativesRepresentativeInfoByAddress =
  CivicInfoRepresentativesRepresentativeInfoByAddress
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      address = Core.Nothing,
      callback = Core.Nothing,
      includeOffices = Core.True,
      levels = Core.Nothing,
      roles = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    CivicInfoRepresentativesRepresentativeInfoByAddress
  where
  type
    Rs CivicInfoRepresentativesRepresentativeInfoByAddress =
      RepresentativeInfoResponse
  type
    Scopes CivicInfoRepresentativesRepresentativeInfoByAddress =
      '[]
  requestClient
    CivicInfoRepresentativesRepresentativeInfoByAddress {..} =
      go
        xgafv
        accessToken
        address
        callback
        (Core.Just includeOffices)
        (levels Core.^. Core._Default)
        (roles Core.^. Core._Default)
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        civicInfoService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  CivicInfoRepresentativesRepresentativeInfoByAddressResource
            )
            Core.mempty
