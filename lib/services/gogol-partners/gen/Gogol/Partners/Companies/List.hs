{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Partners.Companies.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists companies.
--
-- /See:/ <https://developers.google.com/partners/ Google Partners API Reference> for @partners.companies.list@.
module Gogol.Partners.Companies.List
    (
    -- * Resource
      PartnersCompaniesListResource

    -- ** Constructing a Request
    , newPartnersCompaniesList
    , PartnersCompaniesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Partners.Types

-- | A resource alias for @partners.companies.list@ method which the
-- 'PartnersCompaniesList' request conforms to.
type PartnersCompaniesListResource =
     "v2" Core.:>
       "companies" Core.:>
         Core.QueryParam "$.xgafv" Xgafv Core.:>
           Core.QueryParam "access_token" Core.Text Core.:>
             Core.QueryParam "address" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "companyName" Core.Text Core.:>
                   Core.QueryParams "gpsMotivations" Core.Text Core.:>
                     Core.QueryParams "industries" Core.Text Core.:>
                       Core.QueryParams "languageCodes" Core.Text Core.:>
                         Core.QueryParam "maxMonthlyBudget.currencyCode"
                           Core.Text
                           Core.:>
                           Core.QueryParam "maxMonthlyBudget.nanos" Core.Int32
                             Core.:>
                             Core.QueryParam "maxMonthlyBudget.units" Core.Int64
                               Core.:>
                               Core.QueryParam "minMonthlyBudget.currencyCode"
                                 Core.Text
                                 Core.:>
                                 Core.QueryParam "minMonthlyBudget.nanos"
                                   Core.Int32
                                   Core.:>
                                   Core.QueryParam "minMonthlyBudget.units"
                                     Core.Int64
                                     Core.:>
                                     Core.QueryParam "orderBy" Core.Text Core.:>
                                       Core.QueryParam "pageSize" Core.Int32
                                         Core.:>
                                         Core.QueryParam "pageToken" Core.Text
                                           Core.:>
                                           Core.QueryParams
                                             "requestMetadata.experimentIds"
                                             Core.Text
                                             Core.:>
                                             Core.QueryParam
                                               "requestMetadata.locale"
                                               Core.Text
                                               Core.:>
                                               Core.QueryParam
                                                 "requestMetadata.partnersSessionId"
                                                 Core.Text
                                                 Core.:>
                                                 Core.QueryParam
                                                   "requestMetadata.trafficSource.trafficSourceId"
                                                   Core.Text
                                                   Core.:>
                                                   Core.QueryParam
                                                     "requestMetadata.trafficSource.trafficSubId"
                                                     Core.Text
                                                     Core.:>
                                                     Core.QueryParam
                                                       "requestMetadata.userOverrides.ipAddress"
                                                       Core.Text
                                                       Core.:>
                                                       Core.QueryParam
                                                         "requestMetadata.userOverrides.userId"
                                                         Core.Text
                                                         Core.:>
                                                         Core.QueryParams
                                                           "services"
                                                           Core.Text
                                                           Core.:>
                                                           Core.QueryParams
                                                             "specializations"
                                                             Core.Text
                                                             Core.:>
                                                             Core.QueryParam
                                                               "uploadType"
                                                               Core.Text
                                                               Core.:>
                                                               Core.QueryParam
                                                                 "upload_protocol"
                                                                 Core.Text
                                                                 Core.:>
                                                                 Core.QueryParam
                                                                   "view"
                                                                   Core.Text
                                                                   Core.:>
                                                                   Core.QueryParam
                                                                     "websiteUrl"
                                                                     Core.Text
                                                                     Core.:>
                                                                     Core.QueryParam
                                                                       "alt"
                                                                       Core.AltJSON
                                                                       Core.:>
                                                                       Core.Get
                                                                         '[Core.JSON]
                                                                         ListCompaniesResponse

-- | Lists companies.
--
-- /See:/ 'newPartnersCompaniesList' smart constructor.
data PartnersCompaniesList = PartnersCompaniesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | The address to use when searching for companies. If not given, the geo-located address of the request is used.
    , address :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Company name to search for.
    , companyName :: (Core.Maybe Core.Text)
      -- | List of reasons for using Google Partner Search to get companies.
    , gpsMotivations :: (Core.Maybe [Core.Text])
      -- | List of industries the company can help with.
    , industries :: (Core.Maybe [Core.Text])
      -- | List of language codes that company can support. Only primary language subtags are accepted as defined by \<a href=\"https:\/\/tools.ietf.org\/html\/bcp47\">BCP 47\<\/a> (IETF BCP 47, \"Tags for Identifying Languages\").
    , languageCodes :: (Core.Maybe [Core.Text])
      -- | The 3-letter currency code defined in ISO 4217.
    , maxMonthlyBudgetCurrencyCode :: (Core.Maybe Core.Text)
      -- | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If @units@ is positive, @nanos@ must be positive or zero. If @units@ is zero, @nanos@ can be positive, zero, or negative. If @units@ is negative, @nanos@ must be negative or zero. For example $-1.75 is represented as @units@=-1 and @nanos@=-750,000,000.
    , maxMonthlyBudgetNanos :: (Core.Maybe Core.Int32)
      -- | The whole units of the amount. For example if @currencyCode@ is @\"USD\"@, then 1 unit is one US dollar.
    , maxMonthlyBudgetUnits :: (Core.Maybe Core.Int64)
      -- | The 3-letter currency code defined in ISO 4217.
    , minMonthlyBudgetCurrencyCode :: (Core.Maybe Core.Text)
      -- | Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If @units@ is positive, @nanos@ must be positive or zero. If @units@ is zero, @nanos@ can be positive, zero, or negative. If @units@ is negative, @nanos@ must be negative or zero. For example $-1.75 is represented as @units@=-1 and @nanos@=-750,000,000.
    , minMonthlyBudgetNanos :: (Core.Maybe Core.Int32)
      -- | The whole units of the amount. For example if @currencyCode@ is @\"USD\"@, then 1 unit is one US dollar.
    , minMonthlyBudgetUnits :: (Core.Maybe Core.Int64)
      -- | How to order addresses within the returned companies. Currently, only @address@ and @address desc@ is supported which will sorted by closest to farthest in distance from given address and farthest to closest distance from given address respectively.
    , orderBy :: (Core.Maybe Core.Text)
      -- | Requested page size. Server may return fewer companies than requested. If unspecified, server picks an appropriate default.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | A token identifying a page of results that the server returns. Typically, this is the value of @ListCompaniesResponse.next_page_token@ returned from the previous call to ListCompanies.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Experiment IDs the current request belongs to.
    , requestMetadataExperimentIds :: (Core.Maybe [Core.Text])
      -- | Locale to use for the current request.
    , requestMetadataLocale :: (Core.Maybe Core.Text)
      -- | Google Partners session ID.
    , requestMetadataPartnersSessionId :: (Core.Maybe Core.Text)
      -- | Identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    , requestMetadataTrafficSourceTrafficSourceId :: (Core.Maybe Core.Text)
      -- | Second level identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    , requestMetadataTrafficSourceTrafficSubId :: (Core.Maybe Core.Text)
      -- | IP address to use instead of the user\'s geo-located IP address.
    , requestMetadataUserOverridesIpAddress :: (Core.Maybe Core.Text)
      -- | Logged-in user ID to impersonate instead of the user\'s ID.
    , requestMetadataUserOverridesUserId :: (Core.Maybe Core.Text)
      -- | List of services that the returned agencies should provide. If this is not empty, any returned agency must have at least one of these services, or one of the specializations in the \"specializations\" field.
    , services :: (Core.Maybe [Core.Text])
      -- | List of specializations that the returned agencies should provide. If this is not empty, any returned agency must have at least one of these specializations, or one of the services in the \"services\" field.
    , specializations :: (Core.Maybe [Core.Text])
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | The view of the @Company@ resource to be returned. This must not be @COMPANY_VIEW_UNSPECIFIED@.
    , view :: (Core.Maybe Core.Text)
      -- | Website URL that will help to find a better matched company. .
    , websiteUrl :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PartnersCompaniesList' with the minimum fields required to make a request.
newPartnersCompaniesList 
    ::  PartnersCompaniesList
newPartnersCompaniesList =
  PartnersCompaniesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , address = Core.Nothing
    , callback = Core.Nothing
    , companyName = Core.Nothing
    , gpsMotivations = Core.Nothing
    , industries = Core.Nothing
    , languageCodes = Core.Nothing
    , maxMonthlyBudgetCurrencyCode = Core.Nothing
    , maxMonthlyBudgetNanos = Core.Nothing
    , maxMonthlyBudgetUnits = Core.Nothing
    , minMonthlyBudgetCurrencyCode = Core.Nothing
    , minMonthlyBudgetNanos = Core.Nothing
    , minMonthlyBudgetUnits = Core.Nothing
    , orderBy = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , requestMetadataExperimentIds = Core.Nothing
    , requestMetadataLocale = Core.Nothing
    , requestMetadataPartnersSessionId = Core.Nothing
    , requestMetadataTrafficSourceTrafficSourceId = Core.Nothing
    , requestMetadataTrafficSourceTrafficSubId = Core.Nothing
    , requestMetadataUserOverridesIpAddress = Core.Nothing
    , requestMetadataUserOverridesUserId = Core.Nothing
    , services = Core.Nothing
    , specializations = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , view = Core.Nothing
    , websiteUrl = Core.Nothing
    }

instance Core.GoogleRequest PartnersCompaniesList
         where
        type Rs PartnersCompaniesList = ListCompaniesResponse
        type Scopes PartnersCompaniesList = '[]
        requestClient PartnersCompaniesList{..}
          = go xgafv accessToken address callback companyName
              (gpsMotivations Core.^. Core._Default)
              (industries Core.^. Core._Default)
              (languageCodes Core.^. Core._Default)
              maxMonthlyBudgetCurrencyCode
              maxMonthlyBudgetNanos
              maxMonthlyBudgetUnits
              minMonthlyBudgetCurrencyCode
              minMonthlyBudgetNanos
              minMonthlyBudgetUnits
              orderBy
              pageSize
              pageToken
              (requestMetadataExperimentIds Core.^. Core._Default)
              requestMetadataLocale
              requestMetadataPartnersSessionId
              requestMetadataTrafficSourceTrafficSourceId
              requestMetadataTrafficSourceTrafficSubId
              requestMetadataUserOverridesIpAddress
              requestMetadataUserOverridesUserId
              (services Core.^. Core._Default)
              (specializations Core.^. Core._Default)
              uploadType
              uploadProtocol
              view
              websiteUrl
              (Core.Just Core.AltJSON)
              partnersService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy PartnersCompaniesListResource)
                      Core.mempty

