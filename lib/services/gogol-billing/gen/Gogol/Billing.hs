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
-- Module      : Gogol.Billing
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Allows developers to manage billing for their Google Cloud Platform projects programmatically.
--
-- /See:/ <https://cloud.google.com/billing/docs/apis Cloud Billing API Reference>
module Gogol.Billing
  ( -- * Configuration
    billingService,

    -- * OAuth Scopes
    CloudBilling'FullControl,
    CloudBilling'Readonly,
    CloudPlatform'FullControl,

    -- * Resources

    -- ** cloudbilling.billingAccounts.create
    CloudbillingBillingAccountsCreateResource,
    CloudbillingBillingAccountsCreate (..),
    newCloudbillingBillingAccountsCreate,

    -- ** cloudbilling.billingAccounts.get
    CloudbillingBillingAccountsGetResource,
    CloudbillingBillingAccountsGet (..),
    newCloudbillingBillingAccountsGet,

    -- ** cloudbilling.billingAccounts.getIamPolicy
    CloudbillingBillingAccountsGetIamPolicyResource,
    CloudbillingBillingAccountsGetIamPolicy (..),
    newCloudbillingBillingAccountsGetIamPolicy,

    -- ** cloudbilling.billingAccounts.list
    CloudbillingBillingAccountsListResource,
    CloudbillingBillingAccountsList (..),
    newCloudbillingBillingAccountsList,

    -- ** cloudbilling.billingAccounts.move
    CloudbillingBillingAccountsMoveResource,
    CloudbillingBillingAccountsMove (..),
    newCloudbillingBillingAccountsMove,

    -- ** cloudbilling.billingAccounts.patch
    CloudbillingBillingAccountsPatchResource,
    CloudbillingBillingAccountsPatch (..),
    newCloudbillingBillingAccountsPatch,

    -- ** cloudbilling.billingAccounts.projects.list
    CloudbillingBillingAccountsProjectsListResource,
    CloudbillingBillingAccountsProjectsList (..),
    newCloudbillingBillingAccountsProjectsList,

    -- ** cloudbilling.billingAccounts.setIamPolicy
    CloudbillingBillingAccountsSetIamPolicyResource,
    CloudbillingBillingAccountsSetIamPolicy (..),
    newCloudbillingBillingAccountsSetIamPolicy,

    -- ** cloudbilling.billingAccounts.subAccounts.create
    CloudbillingBillingAccountsSubAccountsCreateResource,
    CloudbillingBillingAccountsSubAccountsCreate (..),
    newCloudbillingBillingAccountsSubAccountsCreate,

    -- ** cloudbilling.billingAccounts.subAccounts.list
    CloudbillingBillingAccountsSubAccountsListResource,
    CloudbillingBillingAccountsSubAccountsList (..),
    newCloudbillingBillingAccountsSubAccountsList,

    -- ** cloudbilling.billingAccounts.testIamPermissions
    CloudbillingBillingAccountsTestIamPermissionsResource,
    CloudbillingBillingAccountsTestIamPermissions (..),
    newCloudbillingBillingAccountsTestIamPermissions,

    -- ** cloudbilling.organizations.billingAccounts.create
    CloudbillingOrganizationsBillingAccountsCreateResource,
    CloudbillingOrganizationsBillingAccountsCreate (..),
    newCloudbillingOrganizationsBillingAccountsCreate,

    -- ** cloudbilling.organizations.billingAccounts.list
    CloudbillingOrganizationsBillingAccountsListResource,
    CloudbillingOrganizationsBillingAccountsList (..),
    newCloudbillingOrganizationsBillingAccountsList,

    -- ** cloudbilling.organizations.billingAccounts.move
    CloudbillingOrganizationsBillingAccountsMoveResource,
    CloudbillingOrganizationsBillingAccountsMove (..),
    newCloudbillingOrganizationsBillingAccountsMove,

    -- ** cloudbilling.projects.getBillingInfo
    CloudbillingProjectsGetBillingInfoResource,
    CloudbillingProjectsGetBillingInfo (..),
    newCloudbillingProjectsGetBillingInfo,

    -- ** cloudbilling.projects.updateBillingInfo
    CloudbillingProjectsUpdateBillingInfoResource,
    CloudbillingProjectsUpdateBillingInfo (..),
    newCloudbillingProjectsUpdateBillingInfo,

    -- ** cloudbilling.services.list
    CloudbillingServicesListResource,
    CloudbillingServicesList (..),
    newCloudbillingServicesList,

    -- ** cloudbilling.services.skus.list
    CloudbillingServicesSkusListResource,
    CloudbillingServicesSkusList (..),
    newCloudbillingServicesSkusList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AggregationInfo
    AggregationInfo (..),
    newAggregationInfo,

    -- ** AggregationInfo_AggregationInterval
    AggregationInfo_AggregationInterval (..),

    -- ** AggregationInfo_AggregationLevel
    AggregationInfo_AggregationLevel (..),

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** BillingAccount
    BillingAccount (..),
    newBillingAccount,

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** Category
    Category (..),
    newCategory,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** GeoTaxonomy
    GeoTaxonomy (..),
    newGeoTaxonomy,

    -- ** GeoTaxonomy_Type
    GeoTaxonomy_Type (..),

    -- ** ListBillingAccountsResponse
    ListBillingAccountsResponse (..),
    newListBillingAccountsResponse,

    -- ** ListProjectBillingInfoResponse
    ListProjectBillingInfoResponse (..),
    newListProjectBillingInfoResponse,

    -- ** ListServicesResponse
    ListServicesResponse (..),
    newListServicesResponse,

    -- ** ListSkusResponse
    ListSkusResponse (..),
    newListSkusResponse,

    -- ** Money
    Money (..),
    newMoney,

    -- ** MoveBillingAccountRequest
    MoveBillingAccountRequest (..),
    newMoveBillingAccountRequest,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** PricingExpression
    PricingExpression (..),
    newPricingExpression,

    -- ** PricingInfo
    PricingInfo (..),
    newPricingInfo,

    -- ** ProjectBillingInfo
    ProjectBillingInfo (..),
    newProjectBillingInfo,

    -- ** Service
    Service (..),
    newService,

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Sku
    Sku (..),
    newSku,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,

    -- ** TierRate
    TierRate (..),
    newTierRate,
  )
where

import Gogol.Billing.Cloudbilling.BillingAccounts.Create
import Gogol.Billing.Cloudbilling.BillingAccounts.Get
import Gogol.Billing.Cloudbilling.BillingAccounts.GetIamPolicy
import Gogol.Billing.Cloudbilling.BillingAccounts.List
import Gogol.Billing.Cloudbilling.BillingAccounts.Move
import Gogol.Billing.Cloudbilling.BillingAccounts.Patch
import Gogol.Billing.Cloudbilling.BillingAccounts.Projects.List
import Gogol.Billing.Cloudbilling.BillingAccounts.SetIamPolicy
import Gogol.Billing.Cloudbilling.BillingAccounts.SubAccounts.Create
import Gogol.Billing.Cloudbilling.BillingAccounts.SubAccounts.List
import Gogol.Billing.Cloudbilling.BillingAccounts.TestIamPermissions
import Gogol.Billing.Cloudbilling.Organizations.BillingAccounts.Create
import Gogol.Billing.Cloudbilling.Organizations.BillingAccounts.List
import Gogol.Billing.Cloudbilling.Organizations.BillingAccounts.Move
import Gogol.Billing.Cloudbilling.Projects.GetBillingInfo
import Gogol.Billing.Cloudbilling.Projects.UpdateBillingInfo
import Gogol.Billing.Cloudbilling.Services.List
import Gogol.Billing.Cloudbilling.Services.Skus.List
import Gogol.Billing.Types
