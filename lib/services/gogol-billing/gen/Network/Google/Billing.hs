{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Billing
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows developers to manage billing for their Google Cloud Platform
-- projects programmatically.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference>
module Network.Google.Billing
    (
    -- * Service Configuration
      billingService

    -- * OAuth Scopes
    , cloudBillingReadOnlyScope
    , cloudPlatformScope
    , cloudBillingScope

    -- * API Declaration
    , BillingAPI

    -- * Resources

    -- ** cloudbilling.billingAccounts.create
    , module Network.Google.Resource.CloudBilling.BillingAccounts.Create

    -- ** cloudbilling.billingAccounts.get
    , module Network.Google.Resource.CloudBilling.BillingAccounts.Get

    -- ** cloudbilling.billingAccounts.getIamPolicy
    , module Network.Google.Resource.CloudBilling.BillingAccounts.GetIAMPolicy

    -- ** cloudbilling.billingAccounts.list
    , module Network.Google.Resource.CloudBilling.BillingAccounts.List

    -- ** cloudbilling.billingAccounts.patch
    , module Network.Google.Resource.CloudBilling.BillingAccounts.Patch

    -- ** cloudbilling.billingAccounts.projects.list
    , module Network.Google.Resource.CloudBilling.BillingAccounts.Projects.List

    -- ** cloudbilling.billingAccounts.setIamPolicy
    , module Network.Google.Resource.CloudBilling.BillingAccounts.SetIAMPolicy

    -- ** cloudbilling.billingAccounts.testIamPermissions
    , module Network.Google.Resource.CloudBilling.BillingAccounts.TestIAMPermissions

    -- ** cloudbilling.projects.getBillingInfo
    , module Network.Google.Resource.CloudBilling.Projects.GetBillingInfo

    -- ** cloudbilling.projects.updateBillingInfo
    , module Network.Google.Resource.CloudBilling.Projects.UpdateBillingInfo

    -- ** cloudbilling.services.list
    , module Network.Google.Resource.CloudBilling.Services.List

    -- ** cloudbilling.services.skus.list
    , module Network.Google.Resource.CloudBilling.Services.SKUs.List

    -- * Types

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** ListServicesResponse
    , ListServicesResponse
    , listServicesResponse
    , lsrNextPageToken
    , lsrServices

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** GeoTaxonomy
    , GeoTaxonomy
    , geoTaxonomy
    , gtRegions
    , gtType

    -- ** BillingAccount
    , BillingAccount
    , billingAccount
    , baMasterBillingAccount
    , baOpen
    , baName
    , baDisplayName

    -- ** Service
    , Service
    , service
    , sBusinessEntityName
    , sName
    , sDisplayName
    , sServiceId

    -- ** ProjectBillingInfo
    , ProjectBillingInfo
    , projectBillingInfo
    , pbiName
    , pbiBillingAccountName
    , pbiProjectId
    , pbiBillingEnabled

    -- ** TierRate
    , TierRate
    , tierRate
    , trUnitPrice
    , trStartUsageAmount

    -- ** Money
    , Money
    , money
    , mCurrencyCode
    , mNanos
    , mUnits

    -- ** Category
    , Category
    , category
    , cResourceFamily
    , cUsageType
    , cServiceDisplayName
    , cResourceGroup

    -- ** AggregationInfoAggregationLevel
    , AggregationInfoAggregationLevel (..)

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** ListProjectBillingInfoResponse
    , ListProjectBillingInfoResponse
    , listProjectBillingInfoResponse
    , lpbirNextPageToken
    , lpbirProjectBillingInfo

    -- ** ListSKUsResponse
    , ListSKUsResponse
    , listSKUsResponse
    , lskurNextPageToken
    , lskurSKUs

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** GeoTaxonomyType
    , GeoTaxonomyType (..)

    -- ** PricingExpression
    , PricingExpression
    , pricingExpression
    , peUsageUnitDescription
    , peBaseUnit
    , peBaseUnitConversionFactor
    , peDisplayQuantity
    , peTieredRates
    , peBaseUnitDescription
    , peUsageUnit

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** AggregationInfo
    , AggregationInfo
    , aggregationInfo
    , aiAggregationInterval
    , aiAggregationCount
    , aiAggregationLevel

    -- ** SKU
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

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** ListBillingAccountsResponse
    , ListBillingAccountsResponse
    , listBillingAccountsResponse
    , lbarNextPageToken
    , lbarBillingAccounts

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** PricingInfo
    , PricingInfo
    , pricingInfo
    , piSummary
    , piAggregationInfo
    , piPricingExpression
    , piCurrencyConversionRate
    , piEffectiveTime

    -- ** AggregationInfoAggregationInterval
    , AggregationInfoAggregationInterval (..)

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.Prelude
import Network.Google.Billing.Types
import Network.Google.Resource.CloudBilling.BillingAccounts.Create
import Network.Google.Resource.CloudBilling.BillingAccounts.Get
import Network.Google.Resource.CloudBilling.BillingAccounts.GetIAMPolicy
import Network.Google.Resource.CloudBilling.BillingAccounts.List
import Network.Google.Resource.CloudBilling.BillingAccounts.Patch
import Network.Google.Resource.CloudBilling.BillingAccounts.Projects.List
import Network.Google.Resource.CloudBilling.BillingAccounts.SetIAMPolicy
import Network.Google.Resource.CloudBilling.BillingAccounts.TestIAMPermissions
import Network.Google.Resource.CloudBilling.Projects.GetBillingInfo
import Network.Google.Resource.CloudBilling.Projects.UpdateBillingInfo
import Network.Google.Resource.CloudBilling.Services.List
import Network.Google.Resource.CloudBilling.Services.SKUs.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Billing API service.
type BillingAPI =
     ProjectsGetBillingInfoResource :<|>
       ProjectsUpdateBillingInfoResource
       :<|> ServicesSKUsListResource
       :<|> ServicesListResource
       :<|> BillingAccountsProjectsListResource
       :<|> BillingAccountsListResource
       :<|> BillingAccountsGetIAMPolicyResource
       :<|> BillingAccountsPatchResource
       :<|> BillingAccountsGetResource
       :<|> BillingAccountsCreateResource
       :<|> BillingAccountsSetIAMPolicyResource
       :<|> BillingAccountsTestIAMPermissionsResource
