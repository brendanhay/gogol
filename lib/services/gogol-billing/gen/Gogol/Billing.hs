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
-- Module      : Gogol.Billing
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows developers to manage billing for their Google Cloud Platform projects programmatically.
--
-- /See:/ <https://cloud.google.com/billing/ Cloud Billing API Reference>
module Gogol.Billing
    (
    -- * Configuration
      billingService

    -- * OAuth Scopes
    , cloudBillingScope
    , cloudBillingReadOnlyScope
    , cloudPlatformScope

    -- * Resources

    -- ** cloudbilling.billingAccounts.create
    , CloudbillingBillingAccountsCreateResource
    , newCloudbillingBillingAccountsCreate
    , CloudbillingBillingAccountsCreate

    -- ** cloudbilling.billingAccounts.get
    , CloudbillingBillingAccountsGetResource
    , newCloudbillingBillingAccountsGet
    , CloudbillingBillingAccountsGet

    -- ** cloudbilling.billingAccounts.getIamPolicy
    , CloudbillingBillingAccountsGetIamPolicyResource
    , newCloudbillingBillingAccountsGetIamPolicy
    , CloudbillingBillingAccountsGetIamPolicy

    -- ** cloudbilling.billingAccounts.list
    , CloudbillingBillingAccountsListResource
    , newCloudbillingBillingAccountsList
    , CloudbillingBillingAccountsList

    -- ** cloudbilling.billingAccounts.patch
    , CloudbillingBillingAccountsPatchResource
    , newCloudbillingBillingAccountsPatch
    , CloudbillingBillingAccountsPatch

    -- ** cloudbilling.billingAccounts.projects.list
    , CloudbillingBillingAccountsProjectsListResource
    , newCloudbillingBillingAccountsProjectsList
    , CloudbillingBillingAccountsProjectsList

    -- ** cloudbilling.billingAccounts.setIamPolicy
    , CloudbillingBillingAccountsSetIamPolicyResource
    , newCloudbillingBillingAccountsSetIamPolicy
    , CloudbillingBillingAccountsSetIamPolicy

    -- ** cloudbilling.billingAccounts.testIamPermissions
    , CloudbillingBillingAccountsTestIamPermissionsResource
    , newCloudbillingBillingAccountsTestIamPermissions
    , CloudbillingBillingAccountsTestIamPermissions

    -- ** cloudbilling.projects.getBillingInfo
    , CloudbillingProjectsGetBillingInfoResource
    , newCloudbillingProjectsGetBillingInfo
    , CloudbillingProjectsGetBillingInfo

    -- ** cloudbilling.projects.updateBillingInfo
    , CloudbillingProjectsUpdateBillingInfoResource
    , newCloudbillingProjectsUpdateBillingInfo
    , CloudbillingProjectsUpdateBillingInfo

    -- ** cloudbilling.services.list
    , CloudbillingServicesListResource
    , newCloudbillingServicesList
    , CloudbillingServicesList

    -- ** cloudbilling.services.skus.list
    , CloudbillingServicesSkusListResource
    , newCloudbillingServicesSkusList
    , CloudbillingServicesSkusList

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** AggregationInfo
    , AggregationInfo (..)
    , newAggregationInfo

    -- ** AggregationInfo_AggregationInterval
    , AggregationInfo_AggregationInterval (..)

    -- ** AggregationInfo_AggregationLevel
    , AggregationInfo_AggregationLevel (..)

    -- ** AuditConfig
    , AuditConfig (..)
    , newAuditConfig

    -- ** AuditLogConfig
    , AuditLogConfig (..)
    , newAuditLogConfig

    -- ** AuditLogConfig_LogType
    , AuditLogConfig_LogType (..)

    -- ** BillingAccount
    , BillingAccount (..)
    , newBillingAccount

    -- ** Binding
    , Binding (..)
    , newBinding

    -- ** Category
    , Category (..)
    , newCategory

    -- ** Expr
    , Expr (..)
    , newExpr

    -- ** GeoTaxonomy
    , GeoTaxonomy (..)
    , newGeoTaxonomy

    -- ** GeoTaxonomy_Type
    , GeoTaxonomy_Type (..)

    -- ** ListBillingAccountsResponse
    , ListBillingAccountsResponse (..)
    , newListBillingAccountsResponse

    -- ** ListProjectBillingInfoResponse
    , ListProjectBillingInfoResponse (..)
    , newListProjectBillingInfoResponse

    -- ** ListServicesResponse
    , ListServicesResponse (..)
    , newListServicesResponse

    -- ** ListSkusResponse
    , ListSkusResponse (..)
    , newListSkusResponse

    -- ** Money
    , Money (..)
    , newMoney

    -- ** Policy
    , Policy (..)
    , newPolicy

    -- ** PricingExpression
    , PricingExpression (..)
    , newPricingExpression

    -- ** PricingInfo
    , PricingInfo (..)
    , newPricingInfo

    -- ** ProjectBillingInfo
    , ProjectBillingInfo (..)
    , newProjectBillingInfo

    -- ** Service
    , Service (..)
    , newService

    -- ** SetIamPolicyRequest
    , SetIamPolicyRequest (..)
    , newSetIamPolicyRequest

    -- ** Sku
    , Sku (..)
    , newSku

    -- ** TestIamPermissionsRequest
    , TestIamPermissionsRequest (..)
    , newTestIamPermissionsRequest

    -- ** TestIamPermissionsResponse
    , TestIamPermissionsResponse (..)
    , newTestIamPermissionsResponse

    -- ** TierRate
    , TierRate (..)
    , newTierRate
    ) where

import Gogol.Billing.Cloudbilling.BillingAccounts.Create
import Gogol.Billing.Cloudbilling.BillingAccounts.Get
import Gogol.Billing.Cloudbilling.BillingAccounts.GetIamPolicy
import Gogol.Billing.Cloudbilling.BillingAccounts.List
import Gogol.Billing.Cloudbilling.BillingAccounts.Patch
import Gogol.Billing.Cloudbilling.BillingAccounts.Projects.List
import Gogol.Billing.Cloudbilling.BillingAccounts.SetIamPolicy
import Gogol.Billing.Cloudbilling.BillingAccounts.TestIamPermissions
import Gogol.Billing.Cloudbilling.Projects.GetBillingInfo
import Gogol.Billing.Cloudbilling.Projects.UpdateBillingInfo
import Gogol.Billing.Cloudbilling.Services.List
import Gogol.Billing.Cloudbilling.Services.Skus.List
import Gogol.Billing.Types
