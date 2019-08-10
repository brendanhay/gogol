{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
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

    -- * AssetDiscoveryConfigInclusionMode
    , AssetDiscoveryConfigInclusionMode (..)

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
    , lfrStateChange

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

    -- * AssetDiscoveryConfig
    , AssetDiscoveryConfig
    , assetDiscoveryConfig
    , adcInclusionMode
    , adcProjectIds

    -- * Asset
    , Asset
    , asset
    , aSecurityMarks
    , aResourceProperties
    , aUpdateTime
    , aSecurityCenterProperties
    , aName
    , aIAMPolicy
    , aCreateTime

    -- * SecurityMarks
    , SecurityMarks
    , securityMarks
    , smName
    , smMarks

    -- * AssetResourceProperties
    , AssetResourceProperties
    , assetResourceProperties
    , arpAddtional

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * OrganizationSettings
    , OrganizationSettings
    , organizationSettings
    , osAssetDiscoveryConfig
    , osEnableAssetDiscovery
    , osName

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

    -- * SecurityCenterProperties
    , SecurityCenterProperties
    , securityCenterProperties
    , scpResourceType
    , scpResourceName
    , scpResourceParent
    , scpResourceProject
    , scpResourceOwners

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

    -- * GroupResultProperties
    , GroupResultProperties
    , groupResultProperties
    , grpAddtional

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

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

    -- * IAMPolicy
    , IAMPolicy
    , iamPolicy
    , ipPolicyBlob

    -- * Source
    , Source
    , source
    , sName
    , sDisplayName
    , sDescription

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

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * GroupResult
    , GroupResult
    , groupResult
    , grCount
    , grProperties

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * SecurityMarksMarks
    , SecurityMarksMarks
    , securityMarksMarks
    , smmAddtional

    -- * GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState
    , GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponseState (..)

    -- * GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    , GoogleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    , googleCloudSecuritycenterV1beta1RunAssetDiscoveryResponse
    , gState
    , gDuration

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.Prelude
import           Network.Google.SecurityCenter.Types.Product
import           Network.Google.SecurityCenter.Types.Sum

-- | Default request referring to version 'v1' of the Cloud Security Command Center API. This contains the host and root path used as a starting point for constructing service requests.
securityCenterService :: ServiceConfig
securityCenterService
  = defaultService (ServiceId "securitycenter:v1")
      "securitycenter.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
