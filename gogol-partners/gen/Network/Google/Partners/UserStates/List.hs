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
-- Module      : Network.Google.Partners.UserStates.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists states for current user.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.userStates.list@.
module Network.Google.Partners.UserStates.List
  ( -- * Resource
    PartnersUserStatesListResource,

    -- ** Constructing a Request
    newPartnersUserStatesList,
    PartnersUserStatesList,
  )
where

import Network.Google.Partners.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @partners.userStates.list@ method which the
-- 'PartnersUserStatesList' request conforms to.
type PartnersUserStatesListResource =
  "v2"
    Core.:> "userStates"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams
              "requestMetadata.experimentIds"
              Core.Text
    Core.:> Core.QueryParam "requestMetadata.locale" Core.Text
    Core.:> Core.QueryParam
              "requestMetadata.partnersSessionId"
              Core.Text
    Core.:> Core.QueryParam
              "requestMetadata.trafficSource.trafficSourceId"
              Core.Text
    Core.:> Core.QueryParam
              "requestMetadata.trafficSource.trafficSubId"
              Core.Text
    Core.:> Core.QueryParam
              "requestMetadata.userOverrides.ipAddress"
              Core.Text
    Core.:> Core.QueryParam
              "requestMetadata.userOverrides.userId"
              Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListUserStatesResponse

-- | Lists states for current user.
--
-- /See:/ 'newPartnersUserStatesList' smart constructor.
data PartnersUserStatesList = PartnersUserStatesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Experiment IDs the current request belongs to.
    requestMetadataExperimentIds :: (Core.Maybe [Core.Text]),
    -- | Locale to use for the current request.
    requestMetadataLocale :: (Core.Maybe Core.Text),
    -- | Google Partners session ID.
    requestMetadataPartnersSessionId :: (Core.Maybe Core.Text),
    -- | Identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    requestMetadataTrafficSourceTrafficSourceId :: (Core.Maybe Core.Text),
    -- | Second level identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    requestMetadataTrafficSourceTrafficSubId :: (Core.Maybe Core.Text),
    -- | IP address to use instead of the user\'s geo-located IP address.
    requestMetadataUserOverridesIpAddress :: (Core.Maybe Core.Text),
    -- | Logged-in user ID to impersonate instead of the user\'s ID.
    requestMetadataUserOverridesUserId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartnersUserStatesList' with the minimum fields required to make a request.
newPartnersUserStatesList ::
  PartnersUserStatesList
newPartnersUserStatesList =
  PartnersUserStatesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      requestMetadataExperimentIds = Core.Nothing,
      requestMetadataLocale = Core.Nothing,
      requestMetadataPartnersSessionId = Core.Nothing,
      requestMetadataTrafficSourceTrafficSourceId = Core.Nothing,
      requestMetadataTrafficSourceTrafficSubId = Core.Nothing,
      requestMetadataUserOverridesIpAddress = Core.Nothing,
      requestMetadataUserOverridesUserId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest PartnersUserStatesList where
  type
    Rs PartnersUserStatesList =
      ListUserStatesResponse
  type Scopes PartnersUserStatesList = '[]
  requestClient PartnersUserStatesList {..} =
    go
      xgafv
      accessToken
      callback
      (requestMetadataExperimentIds Core.^. Core._Default)
      requestMetadataLocale
      requestMetadataPartnersSessionId
      requestMetadataTrafficSourceTrafficSourceId
      requestMetadataTrafficSourceTrafficSubId
      requestMetadataUserOverridesIpAddress
      requestMetadataUserOverridesUserId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      partnersService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PartnersUserStatesListResource
          )
          Core.mempty
