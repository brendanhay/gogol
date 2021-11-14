{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Billing.Types
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Billing.Types
    (
    -- * Service Configuration
      billingService

    -- * OAuth Scopes
    , cloudBillingReadOnlyScope
    , cloudPlatformScope
    , cloudBillingScope

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrNextPageToken
    , lsrServices

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * GeoTaxonomy
    , GeoTaxonomy
    , geoTaxonomy
    , gtRegions
    , gtType

    -- * BillingAccount
    , BillingAccount
    , billingAccount
    , baMasterBillingAccount
    , baOpen
    , baName
    , baDisplayName

    -- * Service
    , Service
    , service
    , sBusinessEntityName
    , sName
    , sDisplayName
    , sServiceId

    -- * ProjectBillingInfo
    , ProjectBillingInfo
    , projectBillingInfo
    , pbiName
    , pbiBillingAccountName
    , pbiProjectId
    , pbiBillingEnabled

    -- * TierRate
    , TierRate
    , tierRate
    , trUnitPrice
    , trStartUsageAmount

    -- * Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- * Category
    , Category
    , category
    , cResourceFamily
    , cUsageType
    , cServiceDisplayName
    , cResourceGroup

    -- * AggregationInfoAggregationLevel
    , AggregationInfoAggregationLevel (..)

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * ListProjectBillingInfoResponse
    , ListProjectBillingInfoResponse
    , listProjectBillingInfoResponse
    , lpbirNextPageToken
    , lpbirProjectBillingInfo

    -- * ListSKUsResponse
    , ListSKUsResponse
    , listSKUsResponse
    , lskurNextPageToken
    , lskurSKUs

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * GeoTaxonomyType
    , GeoTaxonomyType (..)

    -- * PricingExpression
    , PricingExpression
    , pricingExpression
    , peUsageUnitDescription
    , peBaseUnit
    , peBaseUnitConversionFactor
    , peDisplayQuantity
    , peTieredRates
    , peBaseUnitDescription
    , peUsageUnit

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * AggregationInfo
    , AggregationInfo
    , aggregationInfo
    , aiAggregationInterval
    , aiAggregationCount
    , aiAggregationLevel

    -- * SKU
    , SKU
    , sKU
    , skukGeoTaxonomy
    , skukCategory
    , skukSKUId
    , skukServiceProviderName
    , skukServiceRegions
    , skukName
    , skukPricingInfo
    , skukDescription

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * ListBillingAccountsResponse
    , ListBillingAccountsResponse
    , listBillingAccountsResponse
    , lbarNextPageToken
    , lbarBillingAccounts

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * PricingInfo
    , PricingInfo
    , pricingInfo
    , piSummary
    , piAggregationInfo
    , piPricingExpression
    , piCurrencyConversionRate
    , piEffectiveTime

    -- * AggregationInfoAggregationInterval
    , AggregationInfoAggregationInterval (..)

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.Billing.Types.Product
import Network.Google.Billing.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1' of the Cloud Billing API. This contains the host and root path used as a starting point for constructing service requests.
billingService :: ServiceConfig
billingService
  = defaultService (ServiceId "cloudbilling:v1")
      "cloudbilling.googleapis.com"

-- | View your Google Cloud Platform billing accounts
cloudBillingReadOnlyScope :: Proxy '["https://www.googleapis.com/auth/cloud-billing.readonly"]
cloudBillingReadOnlyScope = Proxy

-- | See, edit, configure, and delete your Google Cloud Platform data
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy

-- | View and manage your Google Cloud Platform billing accounts
cloudBillingScope :: Proxy '["https://www.googleapis.com/auth/cloud-billing"]
cloudBillingScope = Proxy
