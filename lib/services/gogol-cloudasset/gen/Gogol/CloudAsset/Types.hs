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
-- Module      : Gogol.CloudAsset.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudAsset.Types
  ( -- * Configuration
    cloudAssetService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AnalyzeIamPolicyLongrunningMetadata
    AnalyzeIamPolicyLongrunningMetadata (..),
    newAnalyzeIamPolicyLongrunningMetadata,

    -- ** AnalyzeIamPolicyLongrunningResponse
    AnalyzeIamPolicyLongrunningResponse (..),
    newAnalyzeIamPolicyLongrunningResponse,

    -- ** AuditConfig
    AuditConfig (..),
    newAuditConfig,

    -- ** AuditLogConfig
    AuditLogConfig (..),
    newAuditLogConfig,

    -- ** AuditLogConfig_LogType
    AuditLogConfig_LogType (..),

    -- ** Binding
    Binding (..),
    newBinding,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** GoogleCloudAssetV1p7beta1Asset
    GoogleCloudAssetV1p7beta1Asset (..),
    newGoogleCloudAssetV1p7beta1Asset,

    -- ** GoogleCloudAssetV1p7beta1BigQueryDestination
    GoogleCloudAssetV1p7beta1BigQueryDestination (..),
    newGoogleCloudAssetV1p7beta1BigQueryDestination,

    -- ** GoogleCloudAssetV1p7beta1ExportAssetsRequest
    GoogleCloudAssetV1p7beta1ExportAssetsRequest (..),
    newGoogleCloudAssetV1p7beta1ExportAssetsRequest,

    -- ** GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType
    GoogleCloudAssetV1p7beta1ExportAssetsRequest_ContentType (..),

    -- ** GoogleCloudAssetV1p7beta1GcsDestination
    GoogleCloudAssetV1p7beta1GcsDestination (..),
    newGoogleCloudAssetV1p7beta1GcsDestination,

    -- ** GoogleCloudAssetV1p7beta1OutputConfig
    GoogleCloudAssetV1p7beta1OutputConfig (..),
    newGoogleCloudAssetV1p7beta1OutputConfig,

    -- ** GoogleCloudAssetV1p7beta1PartitionSpec
    GoogleCloudAssetV1p7beta1PartitionSpec (..),
    newGoogleCloudAssetV1p7beta1PartitionSpec,

    -- ** GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey
    GoogleCloudAssetV1p7beta1PartitionSpec_PartitionKey (..),

    -- ** GoogleCloudAssetV1p7beta1RelatedAsset
    GoogleCloudAssetV1p7beta1RelatedAsset (..),
    newGoogleCloudAssetV1p7beta1RelatedAsset,

    -- ** GoogleCloudAssetV1p7beta1RelatedAssets
    GoogleCloudAssetV1p7beta1RelatedAssets (..),
    newGoogleCloudAssetV1p7beta1RelatedAssets,

    -- ** GoogleCloudAssetV1p7beta1RelationshipAttributes
    GoogleCloudAssetV1p7beta1RelationshipAttributes (..),
    newGoogleCloudAssetV1p7beta1RelationshipAttributes,

    -- ** GoogleCloudAssetV1p7beta1Resource
    GoogleCloudAssetV1p7beta1Resource (..),
    newGoogleCloudAssetV1p7beta1Resource,

    -- ** GoogleCloudAssetV1p7beta1Resource_Data
    GoogleCloudAssetV1p7beta1Resource_Data (..),
    newGoogleCloudAssetV1p7beta1Resource_Data,

    -- ** GoogleCloudOrgpolicyV1BooleanPolicy
    GoogleCloudOrgpolicyV1BooleanPolicy (..),
    newGoogleCloudOrgpolicyV1BooleanPolicy,

    -- ** GoogleCloudOrgpolicyV1ListPolicy
    GoogleCloudOrgpolicyV1ListPolicy (..),
    newGoogleCloudOrgpolicyV1ListPolicy,

    -- ** GoogleCloudOrgpolicyV1ListPolicy_AllValues
    GoogleCloudOrgpolicyV1ListPolicy_AllValues (..),

    -- ** GoogleCloudOrgpolicyV1Policy
    GoogleCloudOrgpolicyV1Policy (..),
    newGoogleCloudOrgpolicyV1Policy,

    -- ** GoogleCloudOrgpolicyV1RestoreDefault
    GoogleCloudOrgpolicyV1RestoreDefault (..),
    newGoogleCloudOrgpolicyV1RestoreDefault,

    -- ** GoogleIdentityAccesscontextmanagerV1AccessLevel
    GoogleIdentityAccesscontextmanagerV1AccessLevel (..),
    newGoogleIdentityAccesscontextmanagerV1AccessLevel,

    -- ** GoogleIdentityAccesscontextmanagerV1AccessPolicy
    GoogleIdentityAccesscontextmanagerV1AccessPolicy (..),
    newGoogleIdentityAccesscontextmanagerV1AccessPolicy,

    -- ** GoogleIdentityAccesscontextmanagerV1ApiOperation
    GoogleIdentityAccesscontextmanagerV1ApiOperation (..),
    newGoogleIdentityAccesscontextmanagerV1ApiOperation,

    -- ** GoogleIdentityAccesscontextmanagerV1BasicLevel
    GoogleIdentityAccesscontextmanagerV1BasicLevel (..),
    newGoogleIdentityAccesscontextmanagerV1BasicLevel,

    -- ** GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction
    GoogleIdentityAccesscontextmanagerV1BasicLevel_CombiningFunction (..),

    -- ** GoogleIdentityAccesscontextmanagerV1Condition
    GoogleIdentityAccesscontextmanagerV1Condition (..),
    newGoogleIdentityAccesscontextmanagerV1Condition,

    -- ** GoogleIdentityAccesscontextmanagerV1CustomLevel
    GoogleIdentityAccesscontextmanagerV1CustomLevel (..),
    newGoogleIdentityAccesscontextmanagerV1CustomLevel,

    -- ** GoogleIdentityAccesscontextmanagerV1DevicePolicy
    GoogleIdentityAccesscontextmanagerV1DevicePolicy (..),
    newGoogleIdentityAccesscontextmanagerV1DevicePolicy,

    -- ** GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem
    GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedDeviceManagementLevelsItem (..),

    -- ** GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem
    GoogleIdentityAccesscontextmanagerV1DevicePolicy_AllowedEncryptionStatusesItem (..),

    -- ** GoogleIdentityAccesscontextmanagerV1EgressFrom
    GoogleIdentityAccesscontextmanagerV1EgressFrom (..),
    newGoogleIdentityAccesscontextmanagerV1EgressFrom,

    -- ** GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType
    GoogleIdentityAccesscontextmanagerV1EgressFrom_IdentityType (..),

    -- ** GoogleIdentityAccesscontextmanagerV1EgressFrom_SourceRestriction
    GoogleIdentityAccesscontextmanagerV1EgressFrom_SourceRestriction (..),

    -- ** GoogleIdentityAccesscontextmanagerV1EgressPolicy
    GoogleIdentityAccesscontextmanagerV1EgressPolicy (..),
    newGoogleIdentityAccesscontextmanagerV1EgressPolicy,

    -- ** GoogleIdentityAccesscontextmanagerV1EgressSource
    GoogleIdentityAccesscontextmanagerV1EgressSource (..),
    newGoogleIdentityAccesscontextmanagerV1EgressSource,

    -- ** GoogleIdentityAccesscontextmanagerV1EgressTo
    GoogleIdentityAccesscontextmanagerV1EgressTo (..),
    newGoogleIdentityAccesscontextmanagerV1EgressTo,

    -- ** GoogleIdentityAccesscontextmanagerV1IngressFrom
    GoogleIdentityAccesscontextmanagerV1IngressFrom (..),
    newGoogleIdentityAccesscontextmanagerV1IngressFrom,

    -- ** GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType
    GoogleIdentityAccesscontextmanagerV1IngressFrom_IdentityType (..),

    -- ** GoogleIdentityAccesscontextmanagerV1IngressPolicy
    GoogleIdentityAccesscontextmanagerV1IngressPolicy (..),
    newGoogleIdentityAccesscontextmanagerV1IngressPolicy,

    -- ** GoogleIdentityAccesscontextmanagerV1IngressSource
    GoogleIdentityAccesscontextmanagerV1IngressSource (..),
    newGoogleIdentityAccesscontextmanagerV1IngressSource,

    -- ** GoogleIdentityAccesscontextmanagerV1IngressTo
    GoogleIdentityAccesscontextmanagerV1IngressTo (..),
    newGoogleIdentityAccesscontextmanagerV1IngressTo,

    -- ** GoogleIdentityAccesscontextmanagerV1MethodSelector
    GoogleIdentityAccesscontextmanagerV1MethodSelector (..),
    newGoogleIdentityAccesscontextmanagerV1MethodSelector,

    -- ** GoogleIdentityAccesscontextmanagerV1OsConstraint
    GoogleIdentityAccesscontextmanagerV1OsConstraint (..),
    newGoogleIdentityAccesscontextmanagerV1OsConstraint,

    -- ** GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType
    GoogleIdentityAccesscontextmanagerV1OsConstraint_OsType (..),

    -- ** GoogleIdentityAccesscontextmanagerV1ServicePerimeter
    GoogleIdentityAccesscontextmanagerV1ServicePerimeter (..),
    newGoogleIdentityAccesscontextmanagerV1ServicePerimeter,

    -- ** GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType
    GoogleIdentityAccesscontextmanagerV1ServicePerimeter_PerimeterType (..),

    -- ** GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig
    GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig (..),
    newGoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig,

    -- ** GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices
    GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices (..),
    newGoogleIdentityAccesscontextmanagerV1VpcAccessibleServices,

    -- ** GoogleIdentityAccesscontextmanagerV1VpcNetworkSource
    GoogleIdentityAccesscontextmanagerV1VpcNetworkSource (..),
    newGoogleIdentityAccesscontextmanagerV1VpcNetworkSource,

    -- ** GoogleIdentityAccesscontextmanagerV1VpcSubNetwork
    GoogleIdentityAccesscontextmanagerV1VpcSubNetwork (..),
    newGoogleIdentityAccesscontextmanagerV1VpcSubNetwork,

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,
  )
where

import Gogol.CloudAsset.Internal.Product
import Gogol.CloudAsset.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1p7beta1@ of the Cloud Asset API. This contains the host and root path used as a starting point for constructing service requests.
cloudAssetService :: Core.ServiceConfig
cloudAssetService =
  Core.defaultService
    (Core.ServiceId "cloudasset:v1p7beta1")
    "cloudasset.googleapis.com"

-- | See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
type CloudPlatform'FullControl =
  "https://www.googleapis.com/auth/cloud-platform"
