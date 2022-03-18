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
-- Module      : Network.Google.Billing.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Billing.Types
  ( -- * Configuration
    billingService,

    -- * OAuth Scopes
    cloudBillingScope,
    cloudBillingReadOnlyScope,
    cloudPlatformScope,

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

import Network.Google.Billing.Internal.Product
import Network.Google.Billing.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Cloud Billing API. This contains the host and root path used as a starting point for constructing service requests.
billingService :: Core.ServiceConfig
billingService =
  Core.defaultService
    (Core.ServiceId "cloudbilling:v1")
    "cloudbilling.googleapis.com"

-- | View and manage your Google Cloud Platform billing accounts
cloudBillingScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-billing"]
cloudBillingScope = Core.Proxy

-- | View your Google Cloud Platform billing accounts
cloudBillingReadOnlyScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-billing.readonly"]
cloudBillingReadOnlyScope = Core.Proxy

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
cloudPlatformScope :: Core.Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Core.Proxy
