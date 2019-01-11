{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudAsset.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudAsset.Types
    (
    -- * Service Configuration
      cloudAssetService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * Status
    , Status
    , status
    , sDetails
    , sCode
    , sMessage

    -- * ExportAssetsRequestContentType
    , ExportAssetsRequestContentType (..)

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

    -- * Operation
    , Operation
    , operation
    , oDone
    , oError
    , oResponse
    , oName
    , oMetadata

    -- * Asset
    , Asset
    , asset
    , aName
    , aResource
    , aIAMPolicy
    , aAssetType

    -- * GcsDestination
    , GcsDestination
    , gcsDestination
    , gdURI

    -- * StatusDetailsItem
    , StatusDetailsItem
    , statusDetailsItem
    , sdiAddtional

    -- * ExportAssetsRequest
    , ExportAssetsRequest
    , exportAssetsRequest
    , earReadTime
    , earAssetTypes
    , earOutputConfig
    , earContentType

    -- * TimeWindow
    , TimeWindow
    , timeWindow
    , twStartTime
    , twEndTime

    -- * TemporalAsset
    , TemporalAsset
    , temporalAsset
    , taWindow
    , taAsset
    , taDeleted

    -- * AuditLogConfigLogType
    , AuditLogConfigLogType (..)

    -- * Resource
    , Resource
    , resource
    , rParent
    , rData
    , rVersion
    , rDiscoveryName
    , rDiscoveryDocumentURI
    , rResourceURL

    -- * Xgafv
    , Xgafv (..)

    -- * ResourceData
    , ResourceData
    , resourceData
    , rdAddtional

    -- * OutputConfig
    , OutputConfig
    , outputConfig
    , ocGcsDestination

    -- * Policy
    , Policy
    , policy
    , pAuditConfigs
    , pEtag
    , pVersion
    , pBindings

    -- * BatchGetAssetsHistoryResponse
    , BatchGetAssetsHistoryResponse
    , batchGetAssetsHistoryResponse
    , bgahrAssets

    -- * OperationMetadata
    , OperationMetadata
    , operationMetadata
    , omAddtional

    -- * AuditLogConfig
    , AuditLogConfig
    , auditLogConfig
    , alcLogType
    , alcExemptedMembers

    -- * OperationResponse
    , OperationResponse
    , operationResponse
    , orAddtional

    -- * Binding
    , Binding
    , binding
    , bMembers
    , bRole
    , bCondition
    ) where

import           Network.Google.CloudAsset.Types.Product
import           Network.Google.CloudAsset.Types.Sum
import           Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Cloud Asset API. This contains the host and root path used as a starting point for constructing service requests.
cloudAssetService :: ServiceConfig
cloudAssetService
  = defaultService (ServiceId "cloudasset:v1beta1")
      "cloudasset.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy;
