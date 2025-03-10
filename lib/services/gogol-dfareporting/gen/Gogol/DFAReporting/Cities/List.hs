{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.DFAReporting.Cities.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of cities, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.cities.list@.
module Gogol.DFAReporting.Cities.List
  ( -- * Resource
    DFAReportingCitiesListResource,

    -- ** Constructing a Request
    DFAReportingCitiesList (..),
    newDFAReportingCitiesList,
  )
where

import Gogol.DFAReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dfareporting.cities.list@ method which the
-- 'DFAReportingCitiesList' request conforms to.
type DFAReportingCitiesListResource =
  "dfareporting"
    Core.:> "v4"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "cities"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "countryDartIds" Core.Int64
    Core.:> Core.QueryParams "dartIds" Core.Int64
    Core.:> Core.QueryParam "namePrefix" Core.Text
    Core.:> Core.QueryParams "regionDartIds" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] CitiesListResponse

-- | Retrieves a list of cities, possibly filtered.
--
-- /See:/ 'newDFAReportingCitiesList' smart constructor.
data DFAReportingCitiesList = DFAReportingCitiesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Select only cities from these countries.
    countryDartIds :: (Core.Maybe [Core.Int64]),
    -- | Select only cities with these DART IDs.
    dartIds :: (Core.Maybe [Core.Int64]),
    -- | Select only cities with names starting with this prefix.
    namePrefix :: (Core.Maybe Core.Text),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Select only cities from these regions.
    regionDartIds :: (Core.Maybe [Core.Int64]),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingCitiesList' with the minimum fields required to make a request.
newDFAReportingCitiesList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingCitiesList
newDFAReportingCitiesList profileId =
  DFAReportingCitiesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      countryDartIds = Core.Nothing,
      dartIds = Core.Nothing,
      namePrefix = Core.Nothing,
      profileId = profileId,
      regionDartIds = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DFAReportingCitiesList where
  type Rs DFAReportingCitiesList = CitiesListResponse
  type Scopes DFAReportingCitiesList = '[Dfatrafficking'FullControl]
  requestClient DFAReportingCitiesList {..} =
    go
      profileId
      xgafv
      accessToken
      callback
      (countryDartIds Core.^. Core._Default)
      (dartIds Core.^. Core._Default)
      namePrefix
      (regionDartIds Core.^. Core._Default)
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dFAReportingService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy DFAReportingCitiesListResource)
          Core.mempty
