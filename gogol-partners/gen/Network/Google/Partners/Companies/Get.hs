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
-- Module      : Network.Google.Partners.Companies.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a company.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.companies.get@.
module Network.Google.Partners.Companies.Get
  ( -- * Resource
    PartnersCompaniesGetResource,

    -- ** Constructing a Request
    newPartnersCompaniesGet,
    PartnersCompaniesGet,
  )
where

import Network.Google.Partners.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @partners.companies.get@ method which the
-- 'PartnersCompaniesGet' request conforms to.
type PartnersCompaniesGetResource =
  "v2"
    Core.:> "companies"
    Core.:> Core.Capture "companyId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "address" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "currencyCode" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
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
    Core.:> Core.QueryParam
              "upload_protocol"
              Core.Text
    Core.:> Core.QueryParam "view" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GetCompanyResponse

-- | Gets a company.
--
-- /See:/ 'newPartnersCompaniesGet' smart constructor.
data PartnersCompaniesGet = PartnersCompaniesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | The address to use for sorting the company\'s addresses by proximity. If not given, the geo-located address of the request is used. Used when order_by is set.
    address :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the company to retrieve.
    companyId :: Core.Text,
    -- | If the company\'s budget is in a different currency code than this one, then the converted budget is converted to this currency code.
    currencyCode :: (Core.Maybe Core.Text),
    -- | How to order addresses within the returned company. Currently, only @address@ and @address desc@ is supported which will sorted by closest to farthest in distance from given address and farthest to closest distance from given address respectively.
    orderBy :: (Core.Maybe Core.Text),
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
    -- | The view of @Company@ resource to be returned. This must not be @COMPANY_VIEW_UNSPECIFIED@.
    view :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartnersCompaniesGet' with the minimum fields required to make a request.
newPartnersCompaniesGet ::
  -- |  The ID of the company to retrieve. See 'companyId'.
  Core.Text ->
  PartnersCompaniesGet
newPartnersCompaniesGet companyId =
  PartnersCompaniesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      address = Core.Nothing,
      callback = Core.Nothing,
      companyId = companyId,
      currencyCode = Core.Nothing,
      orderBy = Core.Nothing,
      requestMetadataExperimentIds = Core.Nothing,
      requestMetadataLocale = Core.Nothing,
      requestMetadataPartnersSessionId = Core.Nothing,
      requestMetadataTrafficSourceTrafficSourceId = Core.Nothing,
      requestMetadataTrafficSourceTrafficSubId = Core.Nothing,
      requestMetadataUserOverridesIpAddress = Core.Nothing,
      requestMetadataUserOverridesUserId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      view = Core.Nothing
    }

instance Core.GoogleRequest PartnersCompaniesGet where
  type Rs PartnersCompaniesGet = GetCompanyResponse
  type Scopes PartnersCompaniesGet = '[]
  requestClient PartnersCompaniesGet {..} =
    go
      companyId
      xgafv
      accessToken
      address
      callback
      currencyCode
      orderBy
      (requestMetadataExperimentIds Core.^. Core._Default)
      requestMetadataLocale
      requestMetadataPartnersSessionId
      requestMetadataTrafficSourceTrafficSourceId
      requestMetadataTrafficSourceTrafficSubId
      requestMetadataUserOverridesIpAddress
      requestMetadataUserOverridesUserId
      uploadType
      uploadProtocol
      view
      (Core.Just Core.AltJSON)
      partnersService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy PartnersCompaniesGetResource
          )
          Core.mempty
