{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SecurityCenter
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Security Command Center API provides access to temporal views of assets
-- and findings within an organization.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference>
module Network.Google.SecurityCenter
    (
    -- * Service Configuration
      securityCenterService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , SecurityCenterAPI

    -- * Resources

    -- ** securitycenter.organizations.assets.group
    , module Network.Google.Resource.SecurityCenter.Organizations.Assets.Group

    -- ** securitycenter.organizations.assets.list
    , module Network.Google.Resource.SecurityCenter.Organizations.Assets.List

    -- ** securitycenter.organizations.assets.runDiscovery
    , module Network.Google.Resource.SecurityCenter.Organizations.Assets.RunDiscovery

    -- ** securitycenter.organizations.assets.updateSecurityMarks
    , module Network.Google.Resource.SecurityCenter.Organizations.Assets.UpdateSecurityMarks

    -- ** securitycenter.organizations.getOrganizationSettings
    , module Network.Google.Resource.SecurityCenter.Organizations.GetOrganizationSettings

    -- ** securitycenter.organizations.notificationConfigs.create
    , module Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Create

    -- ** securitycenter.organizations.notificationConfigs.delete
    , module Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Delete

    -- ** securitycenter.organizations.notificationConfigs.get
    , module Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Get

    -- ** securitycenter.organizations.notificationConfigs.list
    , module Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.List

    -- ** securitycenter.organizations.notificationConfigs.patch
    , module Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Patch

    -- ** securitycenter.organizations.operations.cancel
    , module Network.Google.Resource.SecurityCenter.Organizations.Operations.Cancel

    -- ** securitycenter.organizations.operations.delete
    , module Network.Google.Resource.SecurityCenter.Organizations.Operations.Delete

    -- ** securitycenter.organizations.operations.get
    , module Network.Google.Resource.SecurityCenter.Organizations.Operations.Get

    -- ** securitycenter.organizations.operations.list
    , module Network.Google.Resource.SecurityCenter.Organizations.Operations.List

    -- ** securitycenter.organizations.sources.create
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.Create

    -- ** securitycenter.organizations.sources.findings.create
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Create

    -- ** securitycenter.organizations.sources.findings.group
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Group

    -- ** securitycenter.organizations.sources.findings.list
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.List

    -- ** securitycenter.organizations.sources.findings.patch
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Patch

    -- ** securitycenter.organizations.sources.findings.setState
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.SetState

    -- ** securitycenter.organizations.sources.findings.updateSecurityMarks
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.UpdateSecurityMarks

    -- ** securitycenter.organizations.sources.get
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.Get

    -- ** securitycenter.organizations.sources.getIamPolicy
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.GetIAMPolicy

    -- ** securitycenter.organizations.sources.list
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.List

    -- ** securitycenter.organizations.sources.patch
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.Patch

    -- ** securitycenter.organizations.sources.setIamPolicy
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.SetIAMPolicy

    -- ** securitycenter.organizations.sources.testIamPermissions
    , module Network.Google.Resource.SecurityCenter.Organizations.Sources.TestIAMPermissions

    -- ** securitycenter.organizations.updateOrganizationSettings
    , module Network.Google.Resource.SecurityCenter.Organizations.UpdateOrganizationSettings

    -- * Types

    -- ** ListFindingsResultStateChange
    , ListFindingsResultStateChange (..)

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** GoogleCloudSecuritycenterV1p1beta1TemporalAsset
    , GoogleCloudSecuritycenterV1p1beta1TemporalAsset
    , googleCloudSecuritycenterV1p1beta1TemporalAsset
    , gcsvtaAsset
    , gcsvtaChangeType

    -- ** GoogleCloudSecuritycenterV1p1beta1SecurityCenterProperties
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

    -- ** ListFindingsResponse
    , ListFindingsResponse
    , listFindingsResponse
    , lfrReadTime
    , lfrNextPageToken
    , lfrTotalSize
    , lfrListFindingsResults

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncServiceAccount
    , ncEventType
    , ncName
    , ncPubsubTopic
    , ncStreamingConfig
    , ncDescription

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorNextPageToken
    , lorOperations

    -- ** GetIAMPolicyRequest
    , GetIAMPolicyRequest
    , getIAMPolicyRequest
    , giprOptions

    -- ** GroupFindingsResponse
    , GroupFindingsResponse
    , groupFindingsResponse
    , gfrReadTime
    , gfrNextPageToken
    , gfrTotalSize
    , gfrGroupByResults

    -- ** RunAssetDiscoveryRequest
    , RunAssetDiscoveryRequest
    , runAssetDiscoveryRequest

    -- ** GoogleCloudSecuritycenterV1p1beta1Resource
    , GoogleCloudSecuritycenterV1p1beta1Resource
    , googleCloudSecuritycenterV1p1beta1Resource
    , gcsvrParent
    , gcsvrProject
    , gcsvrProjectDisplayName
    , gcsvrName
    , gcsvrParentDisplayName

    -- ** GoogleCloudSecuritycenterV1p1beta1FindingState
    , GoogleCloudSecuritycenterV1p1beta1FindingState (..)

    -- ** GoogleCloudSecuritycenterV1p1beta1TemporalAssetChangeType
    , GoogleCloudSecuritycenterV1p1beta1TemporalAssetChangeType (..)

    -- ** AssetDiscoveryConfigInclusionMode
    , AssetDiscoveryConfigInclusionMode (..)

    -- ** GoogleCloudSecuritycenterV1p1beta1IAMPolicy
    , GoogleCloudSecuritycenterV1p1beta1IAMPolicy
    , googleCloudSecuritycenterV1p1beta1IAMPolicy
    , gcsvipPolicyBlob

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Finding
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

    -- ** Empty
    , Empty
    , empty

    -- ** ListFindingsResult
    , ListFindingsResult
    , listFindingsResult
    , lfrFinding
    , lfrResource
    , lfrStateChange

    -- ** ListNotificationConfigsResponse
    , ListNotificationConfigsResponse
    , listNotificationConfigsResponse
    , lncrNotificationConfigs
    , lncrNextPageToken

    -- ** GroupAssetsRequest
    , GroupAssetsRequest
    , groupAssetsRequest
    , garGroupBy
    , garReadTime
    , garFilter
    , garPageToken
    , garPageSize
    , garCompareDuration

    -- ** GroupFindingsRequest
    , GroupFindingsRequest
    , groupFindingsRequest
    , gGroupBy
    , gReadTime
    , gFilter
    , gPageToken
    , gPageSize
    , gCompareDuration

    -- ** GoogleCloudSecuritycenterV1Resource
    , GoogleCloudSecuritycenterV1Resource
    , googleCloudSecuritycenterV1Resource
    , gParent
    , gProject
    , gProjectDisplayName
    , gName
    , gParentDisplayName

    -- ** AssetDiscoveryConfig
    , AssetDiscoveryConfig
    , assetDiscoveryConfig
    , adcInclusionMode
    , adcProjectIds

    -- ** SecurityMarks
    , SecurityMarks
    , securityMarks
    , smName
    , smMarks

    -- ** NotificationConfigEventType
    , NotificationConfigEventType (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** GoogleCloudSecuritycenterV1p1beta1NotificationMessage
    , GoogleCloudSecuritycenterV1p1beta1NotificationMessage
    , googleCloudSecuritycenterV1p1beta1NotificationMessage
    , gcsvnmFinding
    , gcsvnmTemporalAsset
    , gcsvnmResource
    , gcsvnmNotificationConfigName

    -- ** GoogleCloudSecuritycenterV1p1beta1FindingSeverity
    , GoogleCloudSecuritycenterV1p1beta1FindingSeverity (..)

    -- ** OrganizationSettings
    , OrganizationSettings
    , organizationSettings
    , osAssetDiscoveryConfig
    , osEnableAssetDiscovery
    , osName

    -- ** GetPolicyOptions
    , GetPolicyOptions
    , getPolicyOptions
    , gpoRequestedPolicyVersion

    -- ** GoogleCloudSecuritycenterV1p1beta1SecurityMarksMarks
    , GoogleCloudSecuritycenterV1p1beta1SecurityMarksMarks
    , googleCloudSecuritycenterV1p1beta1SecurityMarksMarks
    , gcsvsmmAddtional

    -- ** SetFindingStateRequestState
    , SetFindingStateRequestState (..)

    -- ** SetIAMPolicyRequest
    , SetIAMPolicyRequest
    , setIAMPolicyRequest
    , siprUpdateMask
    , siprPolicy

    -- ** FindingSourceProperties
    , FindingSourceProperties
    , findingSourceProperties
    , fspAddtional

    -- ** ListAssetsResultStateChange
    , ListAssetsResultStateChange (..)

    -- ** SetFindingStateRequest
    , SetFindingStateRequest
    , setFindingStateRequest
    , sfsrState
    , sfsrStartTime

    -- ** GoogleCloudSecuritycenterV1NotificationMessage
    , GoogleCloudSecuritycenterV1NotificationMessage
    , googleCloudSecuritycenterV1NotificationMessage
    , gFinding
    , gResource
    , gNotificationConfigName

    -- ** GroupAssetsResponse
    , GroupAssetsResponse
    , groupAssetsResponse
    , groReadTime
    , groNextPageToken
    , groTotalSize
    , groGroupByResults

    -- ** ListSourcesResponse
    , ListSourcesResponse
    , listSourcesResponse
    , lsrNextPageToken
    , lsrSources

    -- ** GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponseState
    , GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponseState (..)

    -- ** GroupResultProperties
    , GroupResultProperties
    , groupResultProperties
    , grpAddtional

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** Resource
    , Resource
    , resource
    , rProjectDisplayName
    , rName
    , rProjectName
    , rParentName
    , rParentDisplayName

    -- ** GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
    , GoogleCloudSecuritycenterV1RunAssetDiscoveryResponse
    , googleCloudSecuritycenterV1RunAssetDiscoveryResponse
    , gcsvradrState
    , gcsvradrDuration

    -- ** ListAssetsResponse
    , ListAssetsResponse
    , listAssetsResponse
    , larReadTime
    , larNextPageToken
    , larListAssetsResults
    , larTotalSize

    -- ** FindingState
    , FindingState (..)

    -- ** Xgafv
    , Xgafv (..)

    -- ** TestIAMPermissionsRequest
    , TestIAMPermissionsRequest
    , testIAMPermissionsRequest
    , tiprPermissions

    -- ** GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState
    , GoogleCloudSecuritycenterV1RunAssetDiscoveryResponseState (..)

    -- ** Source
    , Source
    , source
    , sName
    , sDisplayName
    , sDescription

    -- ** GoogleCloudSecuritycenterV1p1beta1Finding
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

    -- ** GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
    , GoogleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
    , googleCloudSecuritycenterV1p1beta1RunAssetDiscoveryResponse
    , gState
    , gDuration

    -- ** GoogleCloudSecuritycenterV1p1beta1SecurityMarks
    , GoogleCloudSecuritycenterV1p1beta1SecurityMarks
    , googleCloudSecuritycenterV1p1beta1SecurityMarks
    , gcsvsmName
    , gcsvsmMarks

    -- ** TestIAMPermissionsResponse
    , TestIAMPermissionsResponse
    , testIAMPermissionsResponse
    , tiamprPermissions

    -- ** ListAssetsResult
    , ListAssetsResult
    , listAssetsResult
    , larAsset
    , larStateChange

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** GoogleCloudSecuritycenterV1p1beta1Asset
    , GoogleCloudSecuritycenterV1p1beta1Asset
    , googleCloudSecuritycenterV1p1beta1Asset
    , gcsvaSecurityMarks
    , gcsvaResourceProperties
    , gcsvaUpdateTime
    , gcsvaSecurityCenterProperties
    , gcsvaName
    , gcsvaIAMPolicy
    , gcsvaCreateTime

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** GoogleCloudSecuritycenterV1p1beta1AssetResourceProperties
    , GoogleCloudSecuritycenterV1p1beta1AssetResourceProperties
    , googleCloudSecuritycenterV1p1beta1AssetResourceProperties
    , gcsvarpAddtional

    -- ** GroupResult
    , GroupResult
    , groupResult
    , grCount
    , grProperties

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** StreamingConfig
    , StreamingConfig
    , streamingConfig
    , scFilter

    -- ** SecurityMarksMarks
    , SecurityMarksMarks
    , securityMarksMarks
    , smmAddtional

    -- ** GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState
    , GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState (..)

    -- ** GoogleCloudSecuritycenterV1p1beta1FindingSourceProperties
    , GoogleCloudSecuritycenterV1p1beta1FindingSourceProperties
    , googleCloudSecuritycenterV1p1beta1FindingSourceProperties
    , gcsvfspAddtional

    -- ** GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    , GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    , googleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    , gooState
    , gooDuration

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import Network.Google.Prelude
import Network.Google.Resource.SecurityCenter.Organizations.Assets.Group
import Network.Google.Resource.SecurityCenter.Organizations.Assets.List
import Network.Google.Resource.SecurityCenter.Organizations.Assets.RunDiscovery
import Network.Google.Resource.SecurityCenter.Organizations.Assets.UpdateSecurityMarks
import Network.Google.Resource.SecurityCenter.Organizations.GetOrganizationSettings
import Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Create
import Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Delete
import Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Get
import Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.List
import Network.Google.Resource.SecurityCenter.Organizations.NotificationConfigs.Patch
import Network.Google.Resource.SecurityCenter.Organizations.Operations.Cancel
import Network.Google.Resource.SecurityCenter.Organizations.Operations.Delete
import Network.Google.Resource.SecurityCenter.Organizations.Operations.Get
import Network.Google.Resource.SecurityCenter.Organizations.Operations.List
import Network.Google.Resource.SecurityCenter.Organizations.Sources.Create
import Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Create
import Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Group
import Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.List
import Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Patch
import Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.SetState
import Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.UpdateSecurityMarks
import Network.Google.Resource.SecurityCenter.Organizations.Sources.Get
import Network.Google.Resource.SecurityCenter.Organizations.Sources.GetIAMPolicy
import Network.Google.Resource.SecurityCenter.Organizations.Sources.List
import Network.Google.Resource.SecurityCenter.Organizations.Sources.Patch
import Network.Google.Resource.SecurityCenter.Organizations.Sources.SetIAMPolicy
import Network.Google.Resource.SecurityCenter.Organizations.Sources.TestIAMPermissions
import Network.Google.Resource.SecurityCenter.Organizations.UpdateOrganizationSettings
import Network.Google.SecurityCenter.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Security Command Center API service.
type SecurityCenterAPI =
     OrganizationsNotificationConfigsListResource :<|>
       OrganizationsNotificationConfigsPatchResource
       :<|> OrganizationsNotificationConfigsGetResource
       :<|> OrganizationsNotificationConfigsCreateResource
       :<|> OrganizationsNotificationConfigsDeleteResource
       :<|> OrganizationsSourcesFindingsGroupResource
       :<|> OrganizationsSourcesFindingsListResource
       :<|> OrganizationsSourcesFindingsSetStateResource
       :<|> OrganizationsSourcesFindingsPatchResource
       :<|>
       OrganizationsSourcesFindingsUpdateSecurityMarksResource
       :<|> OrganizationsSourcesFindingsCreateResource
       :<|> OrganizationsSourcesListResource
       :<|> OrganizationsSourcesGetIAMPolicyResource
       :<|> OrganizationsSourcesPatchResource
       :<|> OrganizationsSourcesGetResource
       :<|> OrganizationsSourcesCreateResource
       :<|> OrganizationsSourcesSetIAMPolicyResource
       :<|> OrganizationsSourcesTestIAMPermissionsResource
       :<|> OrganizationsAssetsGroupResource
       :<|> OrganizationsAssetsListResource
       :<|> OrganizationsAssetsUpdateSecurityMarksResource
       :<|> OrganizationsAssetsRunDiscoveryResource
       :<|> OrganizationsOperationsListResource
       :<|> OrganizationsOperationsGetResource
       :<|> OrganizationsOperationsCancelResource
       :<|> OrganizationsOperationsDeleteResource
       :<|> OrganizationsUpdateOrganizationSettingsResource
       :<|> OrganizationsGetOrganizationSettingsResource
