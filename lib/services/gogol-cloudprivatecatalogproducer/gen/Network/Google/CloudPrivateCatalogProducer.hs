{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.CloudPrivateCatalogProducer
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables cloud users to manage and share enterprise catalogs intheir
-- organizations.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference>
module Network.Google.CloudPrivateCatalogProducer
    (
    -- * Service Configuration
      cloudPrivateCatalogProducerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , CloudPrivateCatalogProducerAPI

    -- * Resources

    -- ** cloudprivatecatalogproducer.catalogs.associations.create
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.Create

    -- ** cloudprivatecatalogproducer.catalogs.associations.delete
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.Delete

    -- ** cloudprivatecatalogproducer.catalogs.associations.get
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.Get

    -- ** cloudprivatecatalogproducer.catalogs.associations.list
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.List

    -- ** cloudprivatecatalogproducer.catalogs.create
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Create

    -- ** cloudprivatecatalogproducer.catalogs.delete
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Delete

    -- ** cloudprivatecatalogproducer.catalogs.get
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Get

    -- ** cloudprivatecatalogproducer.catalogs.getIamPolicy
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.GetIAMPolicy

    -- ** cloudprivatecatalogproducer.catalogs.list
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.List

    -- ** cloudprivatecatalogproducer.catalogs.patch
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Patch

    -- ** cloudprivatecatalogproducer.catalogs.products.copy
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Copy

    -- ** cloudprivatecatalogproducer.catalogs.products.create
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Create

    -- ** cloudprivatecatalogproducer.catalogs.products.delete
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Delete

    -- ** cloudprivatecatalogproducer.catalogs.products.get
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Get

    -- ** cloudprivatecatalogproducer.catalogs.products.icons.upload
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Icons.Upload

    -- ** cloudprivatecatalogproducer.catalogs.products.list
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.List

    -- ** cloudprivatecatalogproducer.catalogs.products.patch
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Patch

    -- ** cloudprivatecatalogproducer.catalogs.products.versions.create
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Create

    -- ** cloudprivatecatalogproducer.catalogs.products.versions.delete
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Delete

    -- ** cloudprivatecatalogproducer.catalogs.products.versions.get
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Get

    -- ** cloudprivatecatalogproducer.catalogs.products.versions.list
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.List

    -- ** cloudprivatecatalogproducer.catalogs.products.versions.patch
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Patch

    -- ** cloudprivatecatalogproducer.catalogs.setIamPolicy
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.SetIAMPolicy

    -- ** cloudprivatecatalogproducer.catalogs.testIamPermissions
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.TestIAMPermissions

    -- ** cloudprivatecatalogproducer.catalogs.undelete
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Undelete

    -- ** cloudprivatecatalogproducer.operations.cancel
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Operations.Cancel

    -- ** cloudprivatecatalogproducer.operations.delete
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Operations.Delete

    -- ** cloudprivatecatalogproducer.operations.get
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Operations.Get

    -- ** cloudprivatecatalogproducer.operations.list
    , module Network.Google.Resource.CloudPrivateCatalogProducer.Operations.List

    -- * Types

    -- ** GoogleRpcStatus
    , GoogleRpcStatus
    , googleRpcStatus
    , grsDetails
    , grsCode
    , grsMessage

    -- ** GoogleIAMV1AuditLogConfigLogType
    , GoogleIAMV1AuditLogConfigLogType (..)

    -- ** GoogleLongrunningOperationMetadata
    , GoogleLongrunningOperationMetadata
    , googleLongrunningOperationMetadata
    , glomAddtional

    -- ** GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
    , GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
    , googleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
    , gcpvlvrNextPageToken
    , gcpvlvrVersions

    -- ** GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
    , GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
    , googleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest

    -- ** GoogleIAMV1Binding
    , GoogleIAMV1Binding
    , googleIAMV1Binding
    , givbMembers
    , givbRole
    , givbCondition

    -- ** GoogleIAMV1SetIAMPolicyRequest
    , GoogleIAMV1SetIAMPolicyRequest
    , googleIAMV1SetIAMPolicyRequest
    , givsiprUpdateMask
    , givsiprPolicy

    -- ** GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
    , GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
    , googleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
    , gcpvlcrNextPageToken
    , gcpvlcrCatalogs

    -- ** GoogleProtobufEmpty
    , GoogleProtobufEmpty
    , googleProtobufEmpty

    -- ** GoogleRpcStatusDetailsItem
    , GoogleRpcStatusDetailsItem
    , googleRpcStatusDetailsItem
    , grsdiAddtional

    -- ** GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
    , GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
    , googleCloudPrivatecatalogproducerV1beta1UploadIconRequest
    , gcpvuirIcon

    -- ** GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata
    , GoogleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata
    , googleCloudPrivatecatalogproducerV1beta1ProductDisplayMetadata
    , gcpvpdmAddtional

    -- ** GoogleLongrunningCancelOperationRequest
    , GoogleLongrunningCancelOperationRequest
    , googleLongrunningCancelOperationRequest

    -- ** GoogleCloudPrivatecatalogproducerV1beta1Catalog
    , GoogleCloudPrivatecatalogproducerV1beta1Catalog
    , googleCloudPrivatecatalogproducerV1beta1Catalog
    , gcpvcParent
    , gcpvcUpdateTime
    , gcpvcName
    , gcpvcDisplayName
    , gcpvcDescription
    , gcpvcCreateTime

    -- ** GoogleIAMV1TestIAMPermissionsRequest
    , GoogleIAMV1TestIAMPermissionsRequest
    , googleIAMV1TestIAMPermissionsRequest
    , givtiprPermissions

    -- ** GoogleIAMV1AuditConfig
    , GoogleIAMV1AuditConfig
    , googleIAMV1AuditConfig
    , givacService
    , givacAuditLogConfigs

    -- ** Xgafv
    , Xgafv (..)

    -- ** GoogleLongrunningOperationResponse
    , GoogleLongrunningOperationResponse
    , googleLongrunningOperationResponse
    , glorAddtional

    -- ** GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
    , GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
    , googleCloudPrivatecatalogproducerV1beta1CopyProductRequest
    , gcpvcprDestinationProductName

    -- ** GoogleIAMV1AuditLogConfig
    , GoogleIAMV1AuditLogConfig
    , googleIAMV1AuditLogConfig
    , givalcLogType
    , givalcExemptedMembers

    -- ** GoogleCloudPrivatecatalogproducerV1beta1Version
    , GoogleCloudPrivatecatalogproducerV1beta1Version
    , googleCloudPrivatecatalogproducerV1beta1Version
    , gcpvvAsset
    , gcpvvOriginalAsset
    , gcpvvUpdateTime
    , gcpvvName
    , gcpvvDescription
    , gcpvvCreateTime

    -- ** GoogleCloudPrivatecatalogproducerV1beta1VersionAsset
    , GoogleCloudPrivatecatalogproducerV1beta1VersionAsset
    , googleCloudPrivatecatalogproducerV1beta1VersionAsset
    , gcpvvaAddtional

    -- ** GoogleLongrunningListOperationsResponse
    , GoogleLongrunningListOperationsResponse
    , googleLongrunningListOperationsResponse
    , gllorNextPageToken
    , gllorOperations

    -- ** GoogleIAMV1Policy
    , GoogleIAMV1Policy
    , googleIAMV1Policy
    , givpAuditConfigs
    , givpEtag
    , givpVersion
    , givpBindings

    -- ** GoogleCloudPrivatecatalogproducerV1beta1Association
    , GoogleCloudPrivatecatalogproducerV1beta1Association
    , googleCloudPrivatecatalogproducerV1beta1Association
    , gcpvaName
    , gcpvaResource
    , gcpvaCreateTime

    -- ** GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
    , GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
    , googleCloudPrivatecatalogproducerV1beta1ListProductsResponse
    , gcpvlprNextPageToken
    , gcpvlprProducts

    -- ** GoogleIAMV1TestIAMPermissionsResponse
    , GoogleIAMV1TestIAMPermissionsResponse
    , googleIAMV1TestIAMPermissionsResponse
    , giamvtiamprPermissions

    -- ** GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
    , GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
    , googleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
    , gcpvcarAssociation

    -- ** GoogleTypeExpr
    , GoogleTypeExpr
    , googleTypeExpr
    , gteLocation
    , gteExpression
    , gteTitle
    , gteDescription

    -- ** GoogleLongrunningOperation
    , GoogleLongrunningOperation
    , googleLongrunningOperation
    , gloDone
    , gloError
    , gloResponse
    , gloName
    , gloMetadata

    -- ** GoogleCloudPrivatecatalogproducerV1beta1Product
    , GoogleCloudPrivatecatalogproducerV1beta1Product
    , googleCloudPrivatecatalogproducerV1beta1Product
    , gcpvpIconURI
    , gcpvpUpdateTime
    , gcpvpDisplayMetadata
    , gcpvpName
    , gcpvpAssetType
    , gcpvpCreateTime

    -- ** GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset
    , GoogleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset
    , googleCloudPrivatecatalogproducerV1beta1VersionOriginalAsset
    , gcpvvoaAddtional

    -- ** GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
    , GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
    , googleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
    , gcpvlarNextPageToken
    , gcpvlarAssociations
    ) where

import Network.Google.Prelude
import Network.Google.CloudPrivateCatalogProducer.Types
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.Create
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.Delete
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.Get
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Associations.List
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Create
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Delete
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Get
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.GetIAMPolicy
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.List
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Patch
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Copy
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Create
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Delete
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Get
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Icons.Upload
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.List
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Patch
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Create
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Delete
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Get
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.List
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Patch
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.SetIAMPolicy
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.TestIAMPermissions
import Network.Google.Resource.CloudPrivateCatalogProducer.Catalogs.Undelete
import Network.Google.Resource.CloudPrivateCatalogProducer.Operations.Cancel
import Network.Google.Resource.CloudPrivateCatalogProducer.Operations.Delete
import Network.Google.Resource.CloudPrivateCatalogProducer.Operations.Get
import Network.Google.Resource.CloudPrivateCatalogProducer.Operations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Cloud Private Catalog Producer API service.
type CloudPrivateCatalogProducerAPI =
     CatalogsAssociationsListResource :<|>
       CatalogsAssociationsGetResource
       :<|> CatalogsAssociationsCreateResource
       :<|> CatalogsAssociationsDeleteResource
       :<|> CatalogsProductsIconsUploadResource
       :<|> CatalogsProductsVersionsListResource
       :<|> CatalogsProductsVersionsPatchResource
       :<|> CatalogsProductsVersionsGetResource
       :<|> CatalogsProductsVersionsCreateResource
       :<|> CatalogsProductsVersionsDeleteResource
       :<|> CatalogsProductsListResource
       :<|> CatalogsProductsCopyResource
       :<|> CatalogsProductsPatchResource
       :<|> CatalogsProductsGetResource
       :<|> CatalogsProductsCreateResource
       :<|> CatalogsProductsDeleteResource
       :<|> CatalogsListResource
       :<|> CatalogsUndeleteResource
       :<|> CatalogsGetIAMPolicyResource
       :<|> CatalogsPatchResource
       :<|> CatalogsGetResource
       :<|> CatalogsCreateResource
       :<|> CatalogsSetIAMPolicyResource
       :<|> CatalogsTestIAMPermissionsResource
       :<|> CatalogsDeleteResource
       :<|> OperationsListResource
       :<|> OperationsGetResource
       :<|> OperationsCancelResource
       :<|> OperationsDeleteResource
