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
-- Module      : Gogol.Partners.Users.CreateCompanyRelation
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a user\'s company relation. Affiliates the user to a company.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.users.createCompanyRelation@.
module Gogol.Partners.Users.CreateCompanyRelation
  ( -- * Resource
    PartnersUsersCreateCompanyRelationResource,

    -- ** Constructing a Request
    PartnersUsersCreateCompanyRelation (..),
    newPartnersUsersCreateCompanyRelation,
  )
where

import Gogol.Partners.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @partners.users.createCompanyRelation@ method which the
-- 'PartnersUsersCreateCompanyRelation' request conforms to.
type PartnersUsersCreateCompanyRelationResource =
  "v2"
    Core.:> "users"
    Core.:> Core.Capture "userId" Core.Text
    Core.:> "companyRelation"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParams "requestMetadata.experimentIds" Core.Text
    Core.:> Core.QueryParam "requestMetadata.locale" Core.Text
    Core.:> Core.QueryParam "requestMetadata.partnersSessionId" Core.Text
    Core.:> Core.QueryParam
              "requestMetadata.trafficSource.trafficSourceId"
              Core.Text
    Core.:> Core.QueryParam
              "requestMetadata.trafficSource.trafficSubId"
              Core.Text
    Core.:> Core.QueryParam "requestMetadata.userOverrides.ipAddress" Core.Text
    Core.:> Core.QueryParam "requestMetadata.userOverrides.userId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] CompanyRelation
    Core.:> Core.Put '[Core.JSON] CompanyRelation

-- | Creates a user\'s company relation. Affiliates the user to a company.
--
-- /See:/ 'newPartnersUsersCreateCompanyRelation' smart constructor.
data PartnersUsersCreateCompanyRelation = PartnersUsersCreateCompanyRelation
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: CompanyRelation,
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
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The ID of the user. Can be set to \<code>me\<\/code> to mean the currently authenticated user.
    userId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartnersUsersCreateCompanyRelation' with the minimum fields required to make a request.
newPartnersUsersCreateCompanyRelation ::
  -- |  Multipart request metadata. See 'payload'.
  CompanyRelation ->
  -- |  The ID of the user. Can be set to \<code>me\<\/code> to mean the currently authenticated user. See 'userId'.
  Core.Text ->
  PartnersUsersCreateCompanyRelation
newPartnersUsersCreateCompanyRelation payload userId =
  PartnersUsersCreateCompanyRelation
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      requestMetadataExperimentIds = Core.Nothing,
      requestMetadataLocale = Core.Nothing,
      requestMetadataPartnersSessionId = Core.Nothing,
      requestMetadataTrafficSourceTrafficSourceId = Core.Nothing,
      requestMetadataTrafficSourceTrafficSubId = Core.Nothing,
      requestMetadataUserOverridesIpAddress = Core.Nothing,
      requestMetadataUserOverridesUserId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      userId = userId
    }

instance Core.GoogleRequest PartnersUsersCreateCompanyRelation where
  type Rs PartnersUsersCreateCompanyRelation = CompanyRelation
  type Scopes PartnersUsersCreateCompanyRelation = '[]
  requestClient PartnersUsersCreateCompanyRelation {..} =
    go
      userId
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
      payload
      partnersService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PartnersUsersCreateCompanyRelationResource
          )
          Core.mempty
