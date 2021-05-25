{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudPrivateCatalogProducer.Types
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudPrivateCatalogProducer.Types
    (
    -- * Service Configuration
      cloudPrivateCatalogProducerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * GoogleRpcStatus
    , GoogleRpcStatus
    , googleRpcStatus
    , grsDetails
    , grsCode
    , grsMessage

    -- * GoogleIAMV1AuditLogConfigLogType
    , GoogleIAMV1AuditLogConfigLogType (..)

    -- * GoogleLongrunningOperationMetadata
    , GoogleLongrunningOperationMetadata
    , googleLongrunningOperationMetadata
    , glomAddtional

    -- * GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
    , GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
    , googleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
    , gcpvlvrNextPageToken
    , gcpvlvrVersions

    -- * GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
    , GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
    , googleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest

    -- * GoogleIAMV1Binding
    , GoogleIAMV1Binding
    , googleIAMV1Binding
    , givbMembers
    , givbRole
    , givbCondition

    -- * GoogleIAMV1SetIAMPolicyRequest
    , GoogleIAMV1SetIAMPolicyRequest
    , googleIAMV1SetIAMPolicyRequest
    , givsiprUpdateMask
    , givsiprPolicy

    -- * GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
    , GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
    , googleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
    , gcpvlcrNextPageToken
    , gcpvlcrCatalogs

    -- * GoogleProtobufEmpty
    , GoogleProtobufEmpty
    , googleProtobufEmpty

    -- * GoogleRpcStatusDetailsItem
    , GoogleRpcStatusDetailsItem
    , googleRpcStatusDetailsItem
    , grsdiAddtional

    -- * GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
    , GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
    , googleCloudPrivatecatalogproducerV1beta1UploadIconRequest
    , gcpvuirIcon

    -- * GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata
    , GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata
    , googleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata
    , gcpvpdmAddtional

    -- * GoogleLongrunningCancelOperationRequest
    , GoogleLongrunningCancelOperationRequest
    , googleLongrunningCancelOperationRequest

    -- * GoogleCloudPrivatecatalogproducerV1beta1Catalog
    , GoogleCloudPrivatecatalogproducerV1beta1Catalog
    , googleCloudPrivatecatalogproducerV1beta1Catalog
    , gcpvcParent
    , gcpvcUpdateTime
    , gcpvcName
    , gcpvcDisplayName
    , gcpvcDescription
    , gcpvcCreateTime

    -- * GoogleIAMV1TestIAMPermissionsRequest
    , GoogleIAMV1TestIAMPermissionsRequest
    , googleIAMV1TestIAMPermissionsRequest
    , givtiprPermissions

    -- * GoogleIAMV1AuditConfig
    , GoogleIAMV1AuditConfig
    , googleIAMV1AuditConfig
    , givacService
    , givacAuditLogConfigs

    -- * Xgafv
    , Xgafv (..)

    -- * GoogleLongrunningOperationResponse
    , GoogleLongrunningOperationResponse
    , googleLongrunningOperationResponse
    , glorAddtional

    -- * GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
    , GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
    , googleCloudPrivatecatalogproducerV1beta1CopyProductRequest
    , gcpvcprDestinationProductName

    -- * GoogleIAMV1AuditLogConfig
    , GoogleIAMV1AuditLogConfig
    , googleIAMV1AuditLogConfig
    , givalcLogType
    , givalcExemptedMembers

    -- * GoogleCloudPrivatecatalogproducerV1beta1Version
    , GoogleCloudPrivatecatalogproducerV1beta1Version
    , googleCloudPrivatecatalogproducerV1beta1Version
    , gcpvvAsset
    , gcpvvOriginalAsset
    , gcpvvUpdateTime
    , gcpvvName
    , gcpvvDescription
    , gcpvvCreateTime

    -- * GoogleCloudPrivatecatalogproducerV1beta1VersionAsset
    , GoogleCloudPrivatecatalogproducerV1beta1VersionAsset
    , googleCloudPrivatecatalogproducerV1beta1VersionAsset
    , gcpvvaAddtional

    -- * GoogleLongrunningListOperationsResponse
    , GoogleLongrunningListOperationsResponse
    , googleLongrunningListOperationsResponse
    , gllorNextPageToken
    , gllorOperations

    -- * GoogleIAMV1Policy
    , GoogleIAMV1Policy
    , googleIAMV1Policy
    , givpAuditConfigs
    , givpEtag
    , givpVersion
    , givpBindings

    -- * GoogleCloudPrivatecatalogproducerV1beta1Association
    , GoogleCloudPrivatecatalogproducerV1beta1Association
    , googleCloudPrivatecatalogproducerV1beta1Association
    , gcpvaName
    , gcpvaResource
    , gcpvaCreateTime

    -- * GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
    , GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
    , googleCloudPrivatecatalogproducerV1beta1ListProductsResponse
    , gcpvlprNextPageToken
    , gcpvlprProducts

    -- * GoogleIAMV1TestIAMPermissionsResponse
    , GoogleIAMV1TestIAMPermissionsResponse
    , googleIAMV1TestIAMPermissionsResponse
    , giamvtiamprPermissions

    -- * GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
    , GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
    , googleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
    , gcpvcarAssociation

    -- * GoogleTypeExpr
    , GoogleTypeExpr
    , googleTypeExpr
    , gteLocation
    , gteExpression
    , gteTitle
    , gteDescription

    -- * GoogleLongrunningOperation
    , GoogleLongrunningOperation
    , googleLongrunningOperation
    , gloDone
    , gloError
    , gloResponse
    , gloName
    , gloMetadata

    -- * GoogleCloudPrivatecatalogproducerV1beta1Product
    , GoogleCloudPrivatecatalogproducerV1beta1Product
    , googleCloudPrivatecatalogproducerV1beta1Product
    , gcpvpIconURI
    , gcpvpUpdateTime
    , gcpvpDisplayMetadata
    , gcpvpName
    , gcpvpAssetType
    , gcpvpCreateTime

    -- * GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset
    , GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset
    , googleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset
    , gcpvvoaAddtional

    -- * GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
    , GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
    , googleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
    , gcpvlarNextPageToken
    , gcpvlarAssociations
    ) where

import Network.Google.CloudPrivateCatalogProducer.Types.Product
import Network.Google.CloudPrivateCatalogProducer.Types.Sum
import Network.Google.Prelude

-- | Default request referring to version 'v1beta1' of the Cloud Private Catalog Producer API. This contains the host and root path used as a starting point for constructing service requests.
cloudPrivateCatalogProducerService :: ServiceConfig
cloudPrivateCatalogProducerService
  = defaultService
      (ServiceId "cloudprivatecatalogproducer:v1beta1")
      "cloudprivatecatalogproducer.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
cloudPlatformScope :: Proxy '["https://www.googleapis.com/auth/cloud-platform"]
cloudPlatformScope = Proxy
