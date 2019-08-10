{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.SecurityCenter
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cloud Security Command Center API provides access to temporal views of
-- assets and findings within an organization.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Cloud Security Command Center API Reference>
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

    -- ** AssetDiscoveryConfigInclusionMode
    , AssetDiscoveryConfigInclusionMode (..)

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
    , lfrStateChange

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

    -- ** AssetDiscoveryConfig
    , AssetDiscoveryConfig
    , assetDiscoveryConfig
    , adcInclusionMode
    , adcProjectIds

    -- ** Asset
    , Asset
    , asset
    , aSecurityMarks
    , aResourceProperties
    , aUpdateTime
    , aSecurityCenterProperties
    , aName
    , aIAMPolicy
    , aCreateTime

    -- ** SecurityMarks
    , SecurityMarks
    , securityMarks
    , smName
    , smMarks

    -- ** AssetResourceProperties
    , AssetResourceProperties
    , assetResourceProperties
    , arpAddtional

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** OrganizationSettings
    , OrganizationSettings
    , organizationSettings
    , osAssetDiscoveryConfig
    , osEnableAssetDiscovery
    , osName

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

    -- ** SecurityCenterProperties
    , SecurityCenterProperties
    , securityCenterProperties
    , scpResourceType
    , scpResourceName
    , scpResourceParent
    , scpResourceProject
    , scpResourceOwners

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

    -- ** GroupResultProperties
    , GroupResultProperties
    , groupResultProperties
    , grpAddtional

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

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

    -- ** IAMPolicy
    , IAMPolicy
    , iamPolicy
    , ipPolicyBlob

    -- ** Source
    , Source
    , source
    , sName
    , sDisplayName
    , sDescription

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

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** GroupResult
    , GroupResult
    , groupResult
    , grCount
    , grProperties

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** SecurityMarksMarks
    , SecurityMarksMarks
    , securityMarksMarks
    , smmAddtional

    -- ** GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState
    , GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState (..)

    -- ** GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    , GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    , googleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    , gState
    , gDuration

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.SecurityCenter.Organizations.Assets.Group
import           Network.Google.Resource.SecurityCenter.Organizations.Assets.List
import           Network.Google.Resource.SecurityCenter.Organizations.Assets.RunDiscovery
import           Network.Google.Resource.SecurityCenter.Organizations.Assets.UpdateSecurityMarks
import           Network.Google.Resource.SecurityCenter.Organizations.GetOrganizationSettings
import           Network.Google.Resource.SecurityCenter.Organizations.Operations.Cancel
import           Network.Google.Resource.SecurityCenter.Organizations.Operations.Delete
import           Network.Google.Resource.SecurityCenter.Organizations.Operations.Get
import           Network.Google.Resource.SecurityCenter.Organizations.Operations.List
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.Create
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Create
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Group
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.List
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.Patch
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.SetState
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.Findings.UpdateSecurityMarks
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.Get
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.GetIAMPolicy
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.List
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.Patch
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.SetIAMPolicy
import           Network.Google.Resource.SecurityCenter.Organizations.Sources.TestIAMPermissions
import           Network.Google.Resource.SecurityCenter.Organizations.UpdateOrganizationSettings
import           Network.Google.SecurityCenter.Types

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Security Command Center API service.
type SecurityCenterAPI =
     OrganizationsSourcesFindingsGroupResource :<|>
       OrganizationsSourcesFindingsListResource
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
