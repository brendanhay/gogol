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
-- Module      : Gogol.DFAReporting.FloodlightConfigurations.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of floodlight configurations, possibly filtered.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightConfigurations.list@.
module Gogol.DFAReporting.FloodlightConfigurations.List
  ( -- * Resource
    DFAReportingFloodlightConfigurationsListResource,

    -- ** Constructing a Request
    newDFAReportingFloodlightConfigurationsList,
    DFAReportingFloodlightConfigurationsList,
  )
where

import Gogol.DFAReporting.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dfareporting.floodlightConfigurations.list@ method which the
-- 'DFAReportingFloodlightConfigurationsList' request conforms to.
type DFAReportingFloodlightConfigurationsListResource =
  "dfareporting"
    Core.:> "v3.5"
    Core.:> "userprofiles"
    Core.:> Core.Capture "profileId" Core.Int64
    Core.:> "floodlightConfigurations"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "ids" Core.Int64
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              FloodlightConfigurationsListResponse

-- | Retrieves a list of floodlight configurations, possibly filtered.
--
-- /See:/ 'newDFAReportingFloodlightConfigurationsList' smart constructor.
data DFAReportingFloodlightConfigurationsList = DFAReportingFloodlightConfigurationsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Set of IDs of floodlight configurations to retrieve. Required field; otherwise an empty list will be returned.
    ids :: (Core.Maybe [Core.Int64]),
    -- | User profile ID associated with this request.
    profileId :: Core.Int64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DFAReportingFloodlightConfigurationsList' with the minimum fields required to make a request.
newDFAReportingFloodlightConfigurationsList ::
  -- |  User profile ID associated with this request. See 'profileId'.
  Core.Int64 ->
  DFAReportingFloodlightConfigurationsList
newDFAReportingFloodlightConfigurationsList profileId =
  DFAReportingFloodlightConfigurationsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      ids = Core.Nothing,
      profileId = profileId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DFAReportingFloodlightConfigurationsList
  where
  type
    Rs DFAReportingFloodlightConfigurationsList =
      FloodlightConfigurationsListResponse
  type
    Scopes DFAReportingFloodlightConfigurationsList =
      '["https://www.googleapis.com/auth/dfatrafficking"]
  requestClient
    DFAReportingFloodlightConfigurationsList {..} =
      go
        profileId
        xgafv
        accessToken
        callback
        (ids Core.^. Core._Default)
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dFAReportingService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DFAReportingFloodlightConfigurationsListResource
            )
            Core.mempty
