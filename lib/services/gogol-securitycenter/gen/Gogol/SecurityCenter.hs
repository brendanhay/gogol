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
-- Module      : Gogol.SecurityCenter
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Security Command Center API provides access to temporal views of assets and findings within an organization.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference>
module Gogol.SecurityCenter
  ( -- * Configuration
    securityCenterService,

    -- * OAuth Scopes
    cloudPlatformScope,

    -- * Resources

    -- ** securitycenter.organizations.assets.group
    SecurityCenterOrganizationsAssetsGroupResource,
    newSecurityCenterOrganizationsAssetsGroup,
    SecurityCenterOrganizationsAssetsGroup,

    -- ** securitycenter.organizations.assets.list
    SecurityCenterOrganizationsAssetsListResource,
    newSecurityCenterOrganizationsAssetsList,
    SecurityCenterOrganizationsAssetsList,

    -- ** securitycenter.organizations.assets.runDiscovery
    SecurityCenterOrganizationsAssetsRunDiscoveryResource,
    newSecurityCenterOrganizationsAssetsRunDiscovery,
    SecurityCenterOrganizationsAssetsRunDiscovery,

    -- ** securitycenter.organizations.assets.updateSecurityMarks
    SecurityCenterOrganizationsAssetsUpdateSecurityMarksResource,
    newSecurityCenterOrganizationsAssetsUpdateSecurityMarks,
    SecurityCenterOrganizationsAssetsUpdateSecurityMarks,

    -- ** securitycenter.organizations.getOrganizationSettings
    SecurityCenterOrganizationsGetOrganizationSettingsResource,
    newSecurityCenterOrganizationsGetOrganizationSettings,
    SecurityCenterOrganizationsGetOrganizationSettings,

    -- ** securitycenter.organizations.notificationConfigs.create
    SecurityCenterOrganizationsNotificationConfigsCreateResource,
    newSecurityCenterOrganizationsNotificationConfigsCreate,
    SecurityCenterOrganizationsNotificationConfigsCreate,

    -- ** securitycenter.organizations.notificationConfigs.delete
    SecurityCenterOrganizationsNotificationConfigsDeleteResource,
    newSecurityCenterOrganizationsNotificationConfigsDelete,
    SecurityCenterOrganizationsNotificationConfigsDelete,

    -- ** securitycenter.organizations.notificationConfigs.get
    SecurityCenterOrganizationsNotificationConfigsGetResource,
    newSecurityCenterOrganizationsNotificationConfigsGet,
    SecurityCenterOrganizationsNotificationConfigsGet,

    -- ** securitycenter.organizations.notificationConfigs.list
    SecurityCenterOrganizationsNotificationConfigsListResource,
    newSecurityCenterOrganizationsNotificationConfigsList,
    SecurityCenterOrganizationsNotificationConfigsList,

    -- ** securitycenter.organizations.notificationConfigs.patch
    SecurityCenterOrganizationsNotificationConfigsPatchResource,
    newSecurityCenterOrganizationsNotificationConfigsPatch,
    SecurityCenterOrganizationsNotificationConfigsPatch,

    -- ** securitycenter.organizations.operations.cancel
    SecurityCenterOrganizationsOperationsCancelResource,
    newSecurityCenterOrganizationsOperationsCancel,
    SecurityCenterOrganizationsOperationsCancel,

    -- ** securitycenter.organizations.operations.delete
    SecurityCenterOrganizationsOperationsDeleteResource,
    newSecurityCenterOrganizationsOperationsDelete,
    SecurityCenterOrganizationsOperationsDelete,

    -- ** securitycenter.organizations.operations.get
    SecurityCenterOrganizationsOperationsGetResource,
    newSecurityCenterOrganizationsOperationsGet,
    SecurityCenterOrganizationsOperationsGet,

    -- ** securitycenter.organizations.operations.list
    SecurityCenterOrganizationsOperationsListResource,
    newSecurityCenterOrganizationsOperationsList,
    SecurityCenterOrganizationsOperationsList,

    -- ** securitycenter.organizations.sources.create
    SecurityCenterOrganizationsSourcesCreateResource,
    newSecurityCenterOrganizationsSourcesCreate,
    SecurityCenterOrganizationsSourcesCreate,

    -- ** securitycenter.organizations.sources.findings.create
    SecurityCenterOrganizationsSourcesFindingsCreateResource,
    newSecurityCenterOrganizationsSourcesFindingsCreate,
    SecurityCenterOrganizationsSourcesFindingsCreate,

    -- ** securitycenter.organizations.sources.findings.group
    SecurityCenterOrganizationsSourcesFindingsGroupResource,
    newSecurityCenterOrganizationsSourcesFindingsGroup,
    SecurityCenterOrganizationsSourcesFindingsGroup,

    -- ** securitycenter.organizations.sources.findings.list
    SecurityCenterOrganizationsSourcesFindingsListResource,
    newSecurityCenterOrganizationsSourcesFindingsList,
    SecurityCenterOrganizationsSourcesFindingsList,

    -- ** securitycenter.organizations.sources.findings.patch
    SecurityCenterOrganizationsSourcesFindingsPatchResource,
    newSecurityCenterOrganizationsSourcesFindingsPatch,
    SecurityCenterOrganizationsSourcesFindingsPatch,

    -- ** securitycenter.organizations.sources.findings.setState
    SecurityCenterOrganizationsSourcesFindingsSetStateResource,
    newSecurityCenterOrganizationsSourcesFindingsSetState,
    SecurityCenterOrganizationsSourcesFindingsSetState,

    -- ** securitycenter.organizations.sources.findings.updateSecurityMarks
    SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarksResource,
    newSecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks,
    SecurityCenterOrganizationsSourcesFindingsUpdateSecurityMarks,

    -- ** securitycenter.organizations.sources.get
    SecurityCenterOrganizationsSourcesGetResource,
    newSecurityCenterOrganizationsSourcesGet,
    SecurityCenterOrganizationsSourcesGet,

    -- ** securitycenter.organizations.sources.getIamPolicy
    SecurityCenterOrganizationsSourcesGetIamPolicyResource,
    newSecurityCenterOrganizationsSourcesGetIamPolicy,
    SecurityCenterOrganizationsSourcesGetIamPolicy,

    -- ** securitycenter.organizations.sources.list
    SecurityCenterOrganizationsSourcesListResource,
    newSecurityCenterOrganizationsSourcesList,
    SecurityCenterOrganizationsSourcesList,

    -- ** securitycenter.organizations.sources.patch
    SecurityCenterOrganizationsSourcesPatchResource,
    newSecurityCenterOrganizationsSourcesPatch,
    SecurityCenterOrganizationsSourcesPatch,

    -- ** securitycenter.organizations.sources.setIamPolicy
    SecurityCenterOrganizationsSourcesSetIamPolicyResource,
    newSecurityCenterOrganizationsSourcesSetIamPolicy,
    SecurityCenterOrganizationsSourcesSetIamPolicy,

    -- ** securitycenter.organizations.sources.testIamPermissions
    SecurityCenterOrganizationsSourcesTestIamPermissionsResource,
    newSecurityCenterOrganizationsSourcesTestIamPermissions,
    SecurityCenterOrganizationsSourcesTestIamPermissions,

    -- ** securitycenter.organizations.updateOrganizationSettings
    SecurityCenterOrganizationsUpdateOrganizationSettingsResource,
    newSecurityCenterOrganizationsUpdateOrganizationSettings,
    SecurityCenterOrganizationsUpdateOrganizationSettings,

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

import Gogol.SecurityCenter.Organizations.Assets.Group
import Gogol.SecurityCenter.Organizations.Assets.List
import Gogol.SecurityCenter.Organizations.Assets.RunDiscovery
import Gogol.SecurityCenter.Organizations.Assets.UpdateSecurityMarks
import Gogol.SecurityCenter.Organizations.GetOrganizationSettings
import Gogol.SecurityCenter.Organizations.NotificationConfigs.Create
import Gogol.SecurityCenter.Organizations.NotificationConfigs.Delete
import Gogol.SecurityCenter.Organizations.NotificationConfigs.Get
import Gogol.SecurityCenter.Organizations.NotificationConfigs.List
import Gogol.SecurityCenter.Organizations.NotificationConfigs.Patch
import Gogol.SecurityCenter.Organizations.Operations.Cancel
import Gogol.SecurityCenter.Organizations.Operations.Delete
import Gogol.SecurityCenter.Organizations.Operations.Get
import Gogol.SecurityCenter.Organizations.Operations.List
import Gogol.SecurityCenter.Organizations.Sources.Create
import Gogol.SecurityCenter.Organizations.Sources.Findings.Create
import Gogol.SecurityCenter.Organizations.Sources.Findings.Group
import Gogol.SecurityCenter.Organizations.Sources.Findings.List
import Gogol.SecurityCenter.Organizations.Sources.Findings.Patch
import Gogol.SecurityCenter.Organizations.Sources.Findings.SetState
import Gogol.SecurityCenter.Organizations.Sources.Findings.UpdateSecurityMarks
import Gogol.SecurityCenter.Organizations.Sources.Get
import Gogol.SecurityCenter.Organizations.Sources.GetIamPolicy
import Gogol.SecurityCenter.Organizations.Sources.List
import Gogol.SecurityCenter.Organizations.Sources.Patch
import Gogol.SecurityCenter.Organizations.Sources.SetIamPolicy
import Gogol.SecurityCenter.Organizations.Sources.TestIamPermissions
import Gogol.SecurityCenter.Organizations.UpdateOrganizationSettings
import Gogol.SecurityCenter.Types
