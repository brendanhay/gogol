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
-- Module      : Gogol.SecurityCenter.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.SecurityCenter.Types
  ( -- * Configuration
    securityCenterService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** AssetDiscoveryConfig
    AssetDiscoveryConfig (..),
    newAssetDiscoveryConfig,

    -- ** AssetDiscoveryConfig_InclusionMode
    AssetDiscoveryConfig_InclusionMode (..),

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

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** Expr
    Expr (..),
    newExpr,

    -- ** Finding
    Finding (..),
    newFinding,

    -- ** Finding_SourceProperties
    Finding_SourceProperties (..),
    newFinding_SourceProperties,

    -- ** Finding_State
    Finding_State (..),

    -- ** GetIamPolicyRequest
    GetIamPolicyRequest (..),
    newGetIamPolicyRequest,

    -- ** GetPolicyOptions
    GetPolicyOptions (..),
    newGetPolicyOptions,

    -- ** GoogleCloudSecuritycenterV1NotificationMessage
    GoogleCloudSecuritycenterV1NotificationMessage (..),
    newGoogleCloudSecuritycenterV1NotificationMessage,

    -- ** GoogleCloudSecuritycenterV1Resource
    GoogleCloudSecuritycenterV1Resource (..),
    newGoogleCloudSecuritycenterV1Resource,

    -- ** GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
    GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse (..),
    newGoogleCloudSecuritycenterV1RunAssetDiscoveryResponse,

    -- ** GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State
    GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse_State (..),

    -- ** GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse (..),
    newGoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse,

    -- ** GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State
    GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse_State (..),

    -- ** GoogleCloudSecuritycenterV1p1beta1Asset
    GoogleCloudSecuritycenterV1p1beta1Asset (..),
    newGoogleCloudSecuritycenterV1p1beta1Asset,

    -- ** GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties
    GoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties (..),
    newGoogleCloudSecuritycenterV1p1beta1Asset_ResourceProperties,

    -- ** GoogleCloudSecuritycenterV1p1beta1Finding
    GoogleCloudSecuritycenterV1p1beta1Finding (..),
    newGoogleCloudSecuritycenterV1p1beta1Finding,

    -- ** GoogleCloudSecuritycenterV1p1beta1Finding_Severity
    GoogleCloudSecuritycenterV1p1beta1Finding_Severity (..),

    -- ** GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties
    GoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties (..),
    newGoogleCloudSecuritycenterV1p1beta1Finding_SourceProperties,

    -- ** GoogleCloudSecuritycenterV1p1beta1Finding_State
    GoogleCloudSecuritycenterV1p1beta1Finding_State (..),

    -- ** GoogleCloudSecuritycenterV1p1beta1IamPolicy
    GoogleCloudSecuritycenterV1p1beta1IamPolicy (..),
    newGoogleCloudSecuritycenterV1p1beta1IamPolicy,

    -- ** GoogleCloudSecuritycenterV1p1beta1NotificationMessage
    GoogleCloudSecuritycenterV1p1beta1NotificationMessage (..),
    newGoogleCloudSecuritycenterV1p1beta1NotificationMessage,

    -- ** GoogleCloudSecuritycenterV1p1beta1Resource
    GoogleCloudSecuritycenterV1p1beta1Resource (..),
    newGoogleCloudSecuritycenterV1p1beta1Resource,

    -- ** GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
    GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse (..),
    newGoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse,

    -- ** GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State
    GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse_State (..),

    -- ** GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
    GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties (..),
    newGoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties,

    -- ** GoogleCloudSecuritycenterV1p1beta1SecurityMarks
    GoogleCloudSecuritycenterV1p1beta1SecurityMarks (..),
    newGoogleCloudSecuritycenterV1p1beta1SecurityMarks,

    -- ** GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks
    GoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks (..),
    newGoogleCloudSecuritycenterV1p1beta1SecurityMarks_Marks,

    -- ** GoogleCloudSecuritycenterV1p1beta1TemporalAsset
    GoogleCloudSecuritycenterV1p1beta1TemporalAsset (..),
    newGoogleCloudSecuritycenterV1p1beta1TemporalAsset,

    -- ** GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType
    GoogleCloudSecuritycenterV1p1beta1TemporalAsset_ChangeType (..),

    -- ** GroupAssetsRequest
    GroupAssetsRequest (..),
    newGroupAssetsRequest,

    -- ** GroupAssetsResponse
    GroupAssetsResponse (..),
    newGroupAssetsResponse,

    -- ** GroupFindingsRequest
    GroupFindingsRequest (..),
    newGroupFindingsRequest,

    -- ** GroupFindingsResponse
    GroupFindingsResponse (..),
    newGroupFindingsResponse,

    -- ** GroupResult
    GroupResult (..),
    newGroupResult,

    -- ** GroupResult_Properties
    GroupResult_Properties (..),
    newGroupResult_Properties,

    -- ** ListAssetsResponse
    ListAssetsResponse (..),
    newListAssetsResponse,

    -- ** ListAssetsResult
    ListAssetsResult (..),
    newListAssetsResult,

    -- ** ListAssetsResult_StateChange
    ListAssetsResult_StateChange (..),

    -- ** ListFindingsResponse
    ListFindingsResponse (..),
    newListFindingsResponse,

    -- ** ListFindingsResult
    ListFindingsResult (..),
    newListFindingsResult,

    -- ** ListFindingsResult_StateChange
    ListFindingsResult_StateChange (..),

    -- ** ListNotificationConfigsResponse
    ListNotificationConfigsResponse (..),
    newListNotificationConfigsResponse,

    -- ** ListOperationsResponse
    ListOperationsResponse (..),
    newListOperationsResponse,

    -- ** ListSourcesResponse
    ListSourcesResponse (..),
    newListSourcesResponse,

    -- ** NotificationConfig
    NotificationConfig (..),
    newNotificationConfig,

    -- ** NotificationConfig_EventType
    NotificationConfig_EventType (..),

    -- ** Operation
    Operation (..),
    newOperation,

    -- ** Operation_Metadata
    Operation_Metadata (..),
    newOperation_Metadata,

    -- ** Operation_Response
    Operation_Response (..),
    newOperation_Response,

    -- ** OrganizationSettings
    OrganizationSettings (..),
    newOrganizationSettings,

    -- ** Policy
    Policy (..),
    newPolicy,

    -- ** Resource
    Resource (..),
    newResource,

    -- ** RunAssetDiscoveryRequest
    RunAssetDiscoveryRequest (..),
    newRunAssetDiscoveryRequest,

    -- ** SecurityMarks
    SecurityMarks (..),
    newSecurityMarks,

    -- ** SecurityMarks_Marks
    SecurityMarks_Marks (..),
    newSecurityMarks_Marks,

    -- ** SetFindingStateRequest
    SetFindingStateRequest (..),
    newSetFindingStateRequest,

    -- ** SetFindingStateRequest_State
    SetFindingStateRequest_State (..),

    -- ** SetIamPolicyRequest
    SetIamPolicyRequest (..),
    newSetIamPolicyRequest,

    -- ** Source
    Source (..),
    newSource,

    -- ** Status
    Status (..),
    newStatus,

    -- ** Status_DetailsItem
    Status_DetailsItem (..),
    newStatus_DetailsItem,

    -- ** StreamingConfig
    StreamingConfig (..),
    newStreamingConfig,

    -- ** TestIamPermissionsRequest
    TestIamPermissionsRequest (..),
    newTestIamPermissionsRequest,

    -- ** TestIamPermissionsResponse
    TestIamPermissionsResponse (..),
    newTestIamPermissionsResponse,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SecurityCenter.Internal.Product
import Gogol.SecurityCenter.Internal.Sum

-- | Default request referring to version @v1p1beta1@ of the Security Command Center API. This contains the host and root path used as a starting point for constructing service requests.
securityCenterService :: Core.ServiceConfig
securityCenterService =
  Core.defaultService
    (Core.ServiceId "securitycenter:v1p1beta1")
    "securitycenter.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
