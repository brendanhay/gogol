{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudAsset
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The cloud asset API manages the history and inventory of cloud
-- resources.
--
-- /See:/ <https://cloud.google.com/asset-inventory/docs/quickstart Cloud Asset API Reference>
module Network.Google.CloudAsset
    (
    -- * Service Configuration
      cloudAssetService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , CloudAssetAPI

    -- * Resources

    -- ** cloudasset.exportAssets
    , module Network.Google.Resource.CloudAsset.ExportAssets

    -- ** cloudasset.operations.get
    , module Network.Google.Resource.CloudAsset.Operations.Get

    -- * Types

    -- ** GoogleIdentityAccesscontextManagerV1BasicLevel
    , GoogleIdentityAccesscontextManagerV1BasicLevel
    , googleIdentityAccesscontextManagerV1BasicLevel
    , giamvblConditions
    , giamvblCombiningFunction

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** GoogleCloudAssetV1p7beta1ExportAssetsRequestContentType
    , GoogleCloudAssetV1p7beta1ExportAssetsRequestContentType (..)

    -- ** AuditConfig
    , AuditConfig
    , auditConfig
    , acService
    , acAuditLogConfigs

    -- ** AnalyzeIAMPolicyLongrunningResponse
    , AnalyzeIAMPolicyLongrunningResponse
    , analyzeIAMPolicyLongrunningResponse

    -- ** GoogleCloudAssetV1p7beta1RelatedAssets
    , GoogleCloudAssetV1p7beta1RelatedAssets
    , googleCloudAssetV1p7beta1RelatedAssets
    , gcavraRelationshipAttributes
    , gcavraAssets

    -- ** GoogleIdentityAccesscontextManagerV1IngressPolicy
    , GoogleIdentityAccesscontextManagerV1IngressPolicy
    , googleIdentityAccesscontextManagerV1IngressPolicy
    , giamvipIngressFrom
    , giamvipIngressTo

    -- ** Expr
    , Expr
    , expr
    , eLocation
    , eExpression
    , eTitle
    , eDescription

    -- ** GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig
    , GoogleIdentityAccesscontextManagerV1ServicePerimeterConfig
    , googleIdentityAccesscontextManagerV1ServicePerimeterConfig
    , giamvspcResources
    , giamvspcVPCAccessibleServices
    , giamvspcRestrictedServices
    , giamvspcEgressPolicies
    , giamvspcAccessLevels
    , giamvspcIngressPolicies

    -- ** GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction
    , GoogleIdentityAccesscontextManagerV1BasicLevelCombiningFunction (..)

    -- ** GoogleIdentityAccesscontextManagerV1IngressSource
    , GoogleIdentityAccesscontextManagerV1IngressSource
    , googleIdentityAccesscontextManagerV1IngressSource
    , giamvisAccessLevel
    , giamvisResource

    -- ** GoogleIdentityAccesscontextManagerV1AccessLevel
    , GoogleIdentityAccesscontextManagerV1AccessLevel
    , googleIdentityAccesscontextManagerV1AccessLevel
    , giamvalBasic
    , giamvalCustom
    , giamvalName
    , giamvalTitle
    , giamvalDescription

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** GoogleIdentityAccesscontextManagerV1EgressPolicy
    , GoogleIdentityAccesscontextManagerV1EgressPolicy
    , googleIdentityAccesscontextManagerV1EgressPolicy
    , giamvepEgressFrom
    , giamvepEgressTo

    -- ** GoogleCloudAssetV1p7beta1ExportAssetsRequest
    , GoogleCloudAssetV1p7beta1ExportAssetsRequest
    , googleCloudAssetV1p7beta1ExportAssetsRequest
    , gcavearReadTime
    , gcavearRelationshipTypes
    , gcavearAssetTypes
    , gcavearOutputConfig
    , gcavearContentType

    -- ** GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType
    , GoogleIdentityAccesscontextManagerV1ServicePerimeterPerimeterType (..)

    -- ** GoogleIdentityAccesscontextManagerV1OSConstraintOSType
    , GoogleIdentityAccesscontextManagerV1OSConstraintOSType (..)

    -- ** GoogleCloudAssetV1p7beta1GcsDestination
    , GoogleCloudAssetV1p7beta1GcsDestination
    , googleCloudAssetV1p7beta1GcsDestination
    , gcavgdURIPrefix
    , gcavgdURI

    -- ** GoogleIdentityAccesscontextManagerV1ServicePerimeter
    , GoogleIdentityAccesscontextManagerV1ServicePerimeter
    , googleIdentityAccesscontextManagerV1ServicePerimeter
    , giamvspStatus
    , giamvspPerimeterType
    , giamvspName
    , giamvspSpec
    , giamvspTitle
    , giamvspUseExplicitDryRunSpec
    , giamvspDescription

    -- ** GoogleIdentityAccesscontextManagerV1EgressFrom
    , GoogleIdentityAccesscontextManagerV1EgressFrom
    , googleIdentityAccesscontextManagerV1EgressFrom
    , giamvefIdentityType
    , giamvefIdentities

    -- ** GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem
    , GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedDeviceManagementLevelsItem (..)

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** GoogleCloudAssetV1p7beta1OutputConfig
    , GoogleCloudAssetV1p7beta1OutputConfig
    , googleCloudAssetV1p7beta1OutputConfig
    , gcavocBigQueryDestination
    , gcavocGcsDestination

    -- ** GoogleIdentityAccesscontextManagerV1EgressTo
    , GoogleIdentityAccesscontextManagerV1EgressTo
    , googleIdentityAccesscontextManagerV1EgressTo
    , giamvetResources
    , giamvetOperations

    -- ** GoogleIdentityAccesscontextManagerV1IngressFrom
    , GoogleIdentityAccesscontextManagerV1IngressFrom
    , googleIdentityAccesscontextManagerV1IngressFrom
    , giamvifIdentityType
    , giamvifSources
    , giamvifIdentities

    -- ** GoogleIdentityAccesscontextManagerV1OSConstraint
    , GoogleIdentityAccesscontextManagerV1OSConstraint
    , googleIdentityAccesscontextManagerV1OSConstraint
    , giamvocOSType
    , giamvocMinimumVersion
    , giamvocRequireVerifiedChromeOS

    -- ** GoogleCloudAssetV1p7beta1RelatedAsset
    , GoogleCloudAssetV1p7beta1RelatedAsset
    , googleCloudAssetV1p7beta1RelatedAsset
    , gcavraAsset
    , gcavraAssetType
    , gcavraAncestors

    -- ** GoogleIdentityAccesscontextManagerV1IngressTo
    , GoogleIdentityAccesscontextManagerV1IngressTo
    , googleIdentityAccesscontextManagerV1IngressTo
    , giamvitResources
    , giamvitOperations

    -- ** GoogleCloudAssetV1p7beta1PartitionSpec
    , GoogleCloudAssetV1p7beta1PartitionSpec
    , googleCloudAssetV1p7beta1PartitionSpec
    , gcavpsPartitionKey

    -- ** GoogleIdentityAccesscontextManagerV1AccessPolicy
    , GoogleIdentityAccesscontextManagerV1AccessPolicy
    , googleIdentityAccesscontextManagerV1AccessPolicy
    , giamvapParent
    , giamvapEtag
    , giamvapName
    , giamvapTitle

    -- ** GoogleCloudOrgpolicyV1ListPolicy
    , GoogleCloudOrgpolicyV1ListPolicy
    , googleCloudOrgpolicyV1ListPolicy
    , gcovlpInheritFromParent
    , gcovlpAllValues
    , gcovlpDeniedValues
    , gcovlpAllowedValues
    , gcovlpSuggestedValue

    -- ** GoogleIdentityAccesscontextManagerV1IngressFromIdentityType
    , GoogleIdentityAccesscontextManagerV1IngressFromIdentityType (..)

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** GoogleIdentityAccesscontextManagerV1MethodSelector
    , GoogleIdentityAccesscontextManagerV1MethodSelector
    , googleIdentityAccesscontextManagerV1MethodSelector
    , giamvmsMethod
    , giamvmsPermission

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleIdentityAccesscontextManagerV1APIOperation
    , GoogleIdentityAccesscontextManagerV1APIOperation
    , googleIdentityAccesscontextManagerV1APIOperation
    , giamvaoMethodSelectors
    , giamvaoServiceName

    -- ** GoogleIdentityAccesscontextManagerV1CustomLevel
    , GoogleIdentityAccesscontextManagerV1CustomLevel
    , googleIdentityAccesscontextManagerV1CustomLevel
    , giamvclExpr

    -- ** GoogleIdentityAccesscontextManagerV1VPCAccessibleServices
    , GoogleIdentityAccesscontextManagerV1VPCAccessibleServices
    , googleIdentityAccesscontextManagerV1VPCAccessibleServices
    , giamvvasAllowedServices
    , giamvvasEnableRestriction

    -- ** GoogleCloudOrgpolicyV1Policy
    , GoogleCloudOrgpolicyV1Policy
    , googleCloudOrgpolicyV1Policy
    , gcovpBooleanPolicy
    , gcovpEtag
    , gcovpRestoreDefault
    , gcovpUpdateTime
    , gcovpVersion
    , gcovpListPolicy
    , gcovpConstraint

    -- ** GoogleIdentityAccesscontextManagerV1EgressFromIdentityType
    , GoogleIdentityAccesscontextManagerV1EgressFromIdentityType (..)

    -- ** GoogleCloudAssetV1p7beta1RelationshipAttributes
    , GoogleCloudAssetV1p7beta1RelationshipAttributes
    , googleCloudAssetV1p7beta1RelationshipAttributes
    , gcavraAction
    , gcavraSourceResourceType
    , gcavraType
    , gcavraTargetResourceType

    -- ** GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem
    , GoogleIdentityAccesscontextManagerV1DevicePolicyAllowedEncryptionStatusesItem (..)

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** GoogleIdentityAccesscontextManagerV1DevicePolicy
    , GoogleIdentityAccesscontextManagerV1DevicePolicy
    , googleIdentityAccesscontextManagerV1DevicePolicy
    , giamvdpOSConstraints
    , giamvdpRequireAdminApproval
    , giamvdpRequireCorpOwned
    , giamvdpRequireScreenlock
    , giamvdpAllowedEncryptionStatuses
    , giamvdpAllowedDeviceManagementLevels

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** GoogleCloudAssetV1p7beta1Asset
    , GoogleCloudAssetV1p7beta1Asset
    , googleCloudAssetV1p7beta1Asset
    , gcavaAccessLevel
    , gcavaServicePerimeter
    , gcavaRelatedAssets
    , gcavaUpdateTime
    , gcavaAccessPolicy
    , gcavaName
    , gcavaResource
    , gcavaOrgPolicy
    , gcavaIAMPolicy
    , gcavaAssetType
    , gcavaAncestors

    -- ** GoogleIdentityAccesscontextManagerV1Condition
    , GoogleIdentityAccesscontextManagerV1Condition
    , googleIdentityAccesscontextManagerV1Condition
    , giamvcMembers
    , giamvcRegions
    , giamvcNegate
    , giamvcIPSubnetworks
    , giamvcDevicePolicy
    , giamvcRequiredAccessLevels

    -- ** GoogleCloudOrgpolicyV1RestoreDefault
    , GoogleCloudOrgpolicyV1RestoreDefault
    , googleCloudOrgpolicyV1RestoreDefault

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** GoogleCloudOrgpolicyV1ListPolicyAllValues
    , GoogleCloudOrgpolicyV1ListPolicyAllValues (..)

    -- ** GoogleCloudOrgpolicyV1BooleanPolicy
    , GoogleCloudOrgpolicyV1BooleanPolicy
    , googleCloudOrgpolicyV1BooleanPolicy
    , gcovbpEnforced

    -- ** GoogleCloudAssetV1p7beta1PartitionSpecPartitionKey
    , GoogleCloudAssetV1p7beta1PartitionSpecPartitionKey (..)

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition

    -- ** GoogleCloudAssetV1p7beta1ResourceData
    , GoogleCloudAssetV1p7beta1ResourceData
    , googleCloudAssetV1p7beta1ResourceData
    , gcavrdAddtional

    -- ** GoogleCloudAssetV1p7beta1BigQueryDestination
    , GoogleCloudAssetV1p7beta1BigQueryDestination
    , googleCloudAssetV1p7beta1BigQueryDestination
    , gcavbqdPartitionSpec
    , gcavbqdSeparateTablesPerAssetType
    , gcavbqdDataSet
    , gcavbqdForce
    , gcavbqdTable

    -- ** GoogleCloudAssetV1p7beta1Resource
    , GoogleCloudAssetV1p7beta1Resource
    , googleCloudAssetV1p7beta1Resource
    , gcavrParent
    , gcavrLocation
    , gcavrData
    , gcavrVersion
    , gcavrDiscoveryName
    , gcavrDiscoveryDocumentURI
    , gcavrResourceURL
    ) where

import Network.Google.Prelude
import Network.Google.CloudAsset.Types
import Network.Google.Resource.CloudAsset.ExportAssets
import Network.Google.Resource.CloudAsset.Operations.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Asset API service.
type CloudAssetAPI =
     ExportAssetsResource :<|> OperationsGetResource
