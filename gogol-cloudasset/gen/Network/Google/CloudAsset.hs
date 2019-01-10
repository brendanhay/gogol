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
-- /See:/ <https://console.cloud.google.com/apis/api/cloudasset.googleapis.com/overview Cloud Asset API Reference>
module Network.Google.CloudAsset
    (
    -- * Service Configuration
      cloudAssetService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , CloudAssetAPI

    -- * Resources

    -- ** cloudasset.organizations.batchGetAssetsHistory
    , module Network.Google.Resource.CloudAsset.Organizations.BatchGetAssetsHistory

    -- ** cloudasset.organizations.exportAssets
    , module Network.Google.Resource.CloudAsset.Organizations.ExportAssets

    -- ** cloudasset.organizations.operations.get
    , module Network.Google.Resource.CloudAsset.Organizations.Operations.Get

    -- ** cloudasset.projects.batchGetAssetsHistory
    , module Network.Google.Resource.CloudAsset.Projects.BatchGetAssetsHistory

    -- ** cloudasset.projects.exportAssets
    , module Network.Google.Resource.CloudAsset.Projects.ExportAssets

    -- ** cloudasset.projects.operations.get
    , module Network.Google.Resource.CloudAsset.Projects.Operations.Get

    -- * Types

    -- ** Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- ** ExportAssetsRequestContentType
    , ExportAssetsRequestContentType (..)

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

    -- ** Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- ** Asset
    , Asset
    , asset
    , aName
    , aResource
    , aIAMPolicy
    , aAssetType

    -- ** GcsDestination
    , GcsDestination
    , gcsDestination
    , gdURI

    -- ** StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- ** ExportAssetsRequest
    , ExportAssetsRequest
    , exportAssetsRequest
    , earReadTime
    , earAssetTypes
    , earOutputConfig
    , earContentType

    -- ** TimeWindow
    , TimeWindow
    , timeWindow
    , twStartTime
    , twEndTime

    -- ** TemporalAsset
    , TemporalAsset
    , temporalAsset
    , taWindow
    , taAsset
    , taDeleted

    -- ** AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- ** Resource
    , Resource
    , resource
    , rParent
    , rData
    , rVersion
    , rDiscoveryName
    , rDiscoveryDocumentURI
    , rResourceURL

    -- ** Xgafv
    , Xgafv (..)

    -- ** ResourceData
    , ResourceData
    , resourceData
    , rdAddtional

    -- ** OutputConfig
    , OutputConfig
    , outputConfig
    , ocGcsDestination

    -- ** Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- ** BatchGetAssetsHistoryResponse
    , BatchGetAssetsHistoryResponse
    , batchGetAssetsHistoryResponse
    , bgahrAssets

    -- ** OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- ** AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- ** OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- ** Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.CloudAsset.Types
import           Network.Google.Prelude
import           Network.Google.Resource.CloudAsset.Organizations.BatchGetAssetsHistory
import           Network.Google.Resource.CloudAsset.Organizations.ExportAssets
import           Network.Google.Resource.CloudAsset.Organizations.Operations.Get
import           Network.Google.Resource.CloudAsset.Projects.BatchGetAssetsHistory
import           Network.Google.Resource.CloudAsset.Projects.ExportAssets
import           Network.Google.Resource.CloudAsset.Projects.Operations.Get

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Asset API service.
type CloudAssetAPI =
     OrganizationsOperationsGetResource :<|>
       OrganizationsExportAssetsResource
       :<|> OrganizationsBatchGetAssetsHistoryResource
       :<|> ProjectsOperationsGetResource
       :<|> ProjectsExportAssetsResource
       :<|> ProjectsBatchGetAssetsHistoryResource
