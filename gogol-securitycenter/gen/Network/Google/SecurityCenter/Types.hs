{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.SecurityCenter.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.SecurityCenter.Types
    (
    -- * Service Configuration
      securityCenterService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * ListFindingsResultStateChange
    , ListFindingsResultStateChange (..)

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * GoogleCloudSecuritycenterV1p1beta1TemporalAsset
    , GoogleCloudSecuritycenterV1p1beta1TemporalAsset
    , googleCloudSecuritycenterV1p1beta1TemporalAsset
    , gcsvtaAsset
    , gcsvtaChangeType

    -- * GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
    , GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
    , googleCloudSecuritycenterV1p1beta1SecurityCenterProperties
    , gcsvscpResourceDisplayName
    , gcsvscpResourceType
    , gcsvscpResourceName
    , gcsvscpResourceParentDisplayName
    , gcsvscpResourceParent
    , gcsvscpResourceProject
    , gcsvscpResourceProjectDisplayName
    , gcsvscpResourceOwners

    -- * ListFindingsResponse
    , ListFindingsResponse
    , listFindingsResponse
    , lfrReadTime
    , lfrNextPageToken
    , lfrTotalSize
    , lfrListFindingsResults

    -- * AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- * NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncServiceAccount
    , ncEventType
    , ncName
    , ncPubsubTopic
    , ncStreamingConfig
    , ncDescription

    -- * Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- * ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- * GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- * GroupFindingsResponse
    , GroupFindingsResponse
    , groupFindingsResponse
    , gfrReadTime
    , gfrNextPageToken
    , gfrTotalSize
    , gfrGroupByResults

    -- * RunAssetDiscoveryRequest
    , RunAssetDiscoveryRequest
    , runAssetDiscoveryRequest

    -- * GoogleCloudSecuritycenterV1p1beta1Resource
    , GoogleCloudSecuritycenterV1p1beta1Resource
    , googleCloudSecuritycenterV1p1beta1Resource
    , gcsvrParent
    , gcsvrProject
    , gcsvrProjectDisplayName
    , gcsvrName
    , gcsvrParentDisplayName

    -- * GoogleCloudSecuritycenterV1p1beta1FindingState
    , GoogleCloudSecuritycenterV1p1beta1FindingState (..)

    -- * GoogleCloudSecuritycenterV1p1beta1TemporalAssetChangeType
    , GoogleCloudSecuritycenterV1p1beta1TemporalAssetChangeType (..)

    -- * AssetDiscoveryConfigInclusionMode
    , AssetDiscoveryConfigInclusionMode (..)

    -- * GoogleCloudSecuritycenterV1p1beta1IAMPolicy
    , GoogleCloudSecuritycenterV1p1beta1IAMPolicy
    , googleCloudSecuritycenterV1p1beta1IAMPolicy
    , gcsvipPolicyBlob

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Finding
    , Finding
    , finding
    , fParent
    , fSourceProperties
    , fState
    , fResourceName
    , fSecurityMarks
    , fCategory
    , fExternalURI
    , fEventTime
    , fName
    , fCreateTime

    -- * Empty
    , Empty
    , empty

    -- * ListFindingsResult
    , ListFindingsResult
    , listFindingsResult
    , lfrFinding
    , lfrResource
    , lfrStateChange

    -- * ListNotificationConfigsResponse
    , ListNotificationConfigsResponse
    , listNotificationConfigsResponse
    , lncrNotificationConfigs
    , lncrNextPageToken

    -- * GroupAssetsRequest
    , GroupAssetsRequest
    , groupAssetsRequest
    , garGroupBy
    , garReadTime
    , garFilter
    , garPageToken
    , garPageSize
    , garCompareDuration

    -- * GroupFindingsRequest
    , GroupFindingsRequest
    , groupFindingsRequest
    , gGroupBy
    , gReadTime
    , gFilter
    , gPageToken
    , gPageSize
    , gCompareDuration

    -- * GoogleCloudSecuritycenterV1Resource
    , GoogleCloudSecuritycenterV1Resource
    , googleCloudSecuritycenterV1Resource
    , gParent
    , gProject
    , gProjectDisplayName
    , gName
    , gParentDisplayName

    -- * AssetDiscoveryConfig
    , AssetDiscoveryConfig
    , assetDiscoveryConfig
    , adcInclusionMode
    , adcProjectIds

    -- * SecurityMarks
    , SecurityMarks
    , securityMarks
    , smName
    , smMarks

    -- * NotificationConfigEventType
    , NotificationConfigEventType (..)

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * GoogleCloudSecuritycenterV1p1beta1NotificationMessage
    , GoogleCloudSecuritycenterV1p1beta1NotificationMessage
    , googleCloudSecuritycenterV1p1beta1NotificationMessage
    , gcsvnmFinding
    , gcsvnmTemporalAsset
    , gcsvnmResource
    , gcsvnmNotificationConfigName

    -- * GoogleCloudSecuritycenterV1p1beta1FindingSeverity
    , GoogleCloudSecuritycenterV1p1beta1FindingSeverity (..)

    -- * OrganizationSettings
    , OrganizationSettings
    , organizationSettings
    , osAssetDiscoveryConfig
    , osEnableAssetDiscovery
    , osName

    -- * GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- * GoogleCloudSecuritycenterV1p1beta1SecurityMarksMarks
    , GoogleCloudSecuritycenterV1p1beta1SecurityMarksMarks
    , googleCloudSecuritycenterV1p1beta1SecurityMarksMarks
    , gcsvsmmAddtional

    -- * SetFindingStateRequestState
    , SetFindingStateRequestState (..)

    -- * SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- * FindingSourceProperties
    , FindingSourceProperties
    , findingSourceProperties
    , fspAddtional

    -- * ListAssetsResultStateChange
    , ListAssetsResultStateChange (..)

    -- * SetFindingStateRequest
    , SetFindingStateRequest
    , setFindingStateRequest
    , sfsrState
    , sfsrStartTime

    -- * GoogleCloudSecuritycenterV1NotificationMessage
    , GoogleCloudSecuritycenterV1NotificationMessage
    , googleCloudSecuritycenterV1NotificationMessage
    , gFinding
    , gResource
    , gNotificationConfigName

    -- * GroupAssetsResponse
    , GroupAssetsResponse
    , groupAssetsResponse
    , groReadTime
    , groNextPageToken
    , groTotalSize
    , groGroupByResults

    -- * ListSourcesResponse
    , ListSourcesResponse
    , listSourcesResponse
    , lsrNextPageToken
    , lsrSources

    -- * GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponseState
    , GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponseState (..)

    -- * GroupResultProperties
    , GroupResultProperties
    , groupResultProperties
    , grpAddtional

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Resource
    , Resource
    , resource
    , rProjectDisplayName
    , rName
    , rProjectName
    , rParentName
    , rParentDisplayName

    -- * GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
    , GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
    , googleCloudSecuritycenterV1RunAssetDiscoveryResponse
    , gcsvradrState
    , gcsvradrDuration

    -- * ListAssetsResponse
    , ListAssetsResponse
    , listAssetsResponse
    , larReadTime
    , larNextPageToken
    , larListAssetsResults
    , larTotalSize

    -- * FindingState
    , FindingState (..)

    -- * Xgafv
    , Xgafv (..)

    -- * TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- * GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState
    , GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState (..)

    -- * Source
    , Source
    , source
    , sName
    , sDisplayName
    , sDescription

    -- * GoogleCloudSecuritycenterV1p1beta1Finding
    , GoogleCloudSecuritycenterV1p1beta1Finding
    , googleCloudSecuritycenterV1p1beta1Finding
    , gcsvfParent
    , gcsvfSourceProperties
    , gcsvfState
    , gcsvfResourceName
    , gcsvfSecurityMarks
    , gcsvfCategory
    , gcsvfSeverity
    , gcsvfExternalURI
    , gcsvfEventTime
    , gcsvfName
    , gcsvfCreateTime

    -- * GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
    , GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
    , googleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
    , gState
    , gDuration

    -- * GoogleCloudSecuritycenterV1p1beta1SecurityMarks
    , GoogleCloudSecuritycenterV1p1beta1SecurityMarks
    , googleCloudSecuritycenterV1p1beta1SecurityMarks
    , gcsvsmName
    , gcsvsmMarks

    -- * TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- * ListAssetsResult
    , ListAssetsResult
    , listAssetsResult
    , larAsset
    , larStateChange

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * GoogleCloudSecuritycenterV1p1beta1Asset
    , GoogleCloudSecuritycenterV1p1beta1Asset
    , googleCloudSecuritycenterV1p1beta1Asset
    , gcsvaSecurityMarks
    , gcsvaResourceProperties
    , gcsvaUpdateTime
    , gcsvaSecurityCenterProperties
    , gcsvaName
    , gcsvaIAMPolicy
    , gcsvaCreateTime

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * GoogleCloudSecuritycenterV1p1beta1AssetResourceProperties
    , GoogleCloudSecuritycenterV1p1beta1AssetResourceProperties
    , googleCloudSecuritycenterV1p1beta1AssetResourceProperties
    , gcsvarpAddtional

    -- * GroupResult
    , GroupResult
    , groupResult
    , grCount
    , grProperties

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * StreamingConfig
    , StreamingConfig
    , streamingConfig
    , scFilter

    -- * SecurityMarksMarks
    , SecurityMarksMarks
    , securityMarksMarks
    , smmAddtional

    -- * GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState
    , GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState (..)

    -- * GoogleCloudSecuritycenterV1p1beta1FindingSourceProperties
    , GoogleCloudSecuritycenterV1p1beta1FindingSourceProperties
    , googleCloudSecuritycenterV1p1beta1FindingSourceProperties
    , gcsvfspAddtional

    -- * GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    , GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    , googleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    , gooState
    , gooDuration

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types.Product
import Network.Google.SecurityCenter.Types.Sum

-- | Default request referring to version 'v1p1beta1' of the Security Command Center API. This contains the host and root path used as a starting point for constructing service requests.
securityCenterService :: ServiceConfig
securityCenterService
  = defaultService
      (ServiceId "securitycenter:v1p1beta1")
      "securitycenter.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
