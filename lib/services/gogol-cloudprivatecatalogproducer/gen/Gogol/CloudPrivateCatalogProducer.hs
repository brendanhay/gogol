{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudPrivateCatalogProducer
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables cloud users to manage and share enterprise catalogs intheir organizations.
--
-- /See:/ <https://cloud.google.com/private-catalog/ Cloud Private Catalog Producer API Reference>
module Gogol.CloudPrivateCatalogProducer
  ( -- * Configuration
    cloudPrivateCatalogProducerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

    -- * Resources

    -- ** cloudprivatecatalogproducer.catalogs.associations.create
    CloudPrivateCatalogProducerCatalogsAssociationsCreateResource,
    CloudPrivateCatalogProducerCatalogsAssociationsCreate (..),
    newCloudPrivateCatalogProducerCatalogsAssociationsCreate,

    -- ** cloudprivatecatalogproducer.catalogs.associations.delete
    CloudPrivateCatalogProducerCatalogsAssociationsDeleteResource,
    CloudPrivateCatalogProducerCatalogsAssociationsDelete (..),
    newCloudPrivateCatalogProducerCatalogsAssociationsDelete,

    -- ** cloudprivatecatalogproducer.catalogs.associations.get
    CloudPrivateCatalogProducerCatalogsAssociationsGetResource,
    CloudPrivateCatalogProducerCatalogsAssociationsGet (..),
    newCloudPrivateCatalogProducerCatalogsAssociationsGet,

    -- ** cloudprivatecatalogproducer.catalogs.associations.list
    CloudPrivateCatalogProducerCatalogsAssociationsListResource,
    CloudPrivateCatalogProducerCatalogsAssociationsList (..),
    newCloudPrivateCatalogProducerCatalogsAssociationsList,

    -- ** cloudprivatecatalogproducer.catalogs.create
    CloudPrivateCatalogProducerCatalogsCreateResource,
    CloudPrivateCatalogProducerCatalogsCreate (..),
    newCloudPrivateCatalogProducerCatalogsCreate,

    -- ** cloudprivatecatalogproducer.catalogs.delete
    CloudPrivateCatalogProducerCatalogsDeleteResource,
    CloudPrivateCatalogProducerCatalogsDelete (..),
    newCloudPrivateCatalogProducerCatalogsDelete,

    -- ** cloudprivatecatalogproducer.catalogs.get
    CloudPrivateCatalogProducerCatalogsGetResource,
    CloudPrivateCatalogProducerCatalogsGet (..),
    newCloudPrivateCatalogProducerCatalogsGet,

    -- ** cloudprivatecatalogproducer.catalogs.getIamPolicy
    CloudPrivateCatalogProducerCatalogsGetIamPolicyResource,
    CloudPrivateCatalogProducerCatalogsGetIamPolicy (..),
    newCloudPrivateCatalogProducerCatalogsGetIamPolicy,

    -- ** cloudprivatecatalogproducer.catalogs.list
    CloudPrivateCatalogProducerCatalogsListResource,
    CloudPrivateCatalogProducerCatalogsList (..),
    newCloudPrivateCatalogProducerCatalogsList,

    -- ** cloudprivatecatalogproducer.catalogs.patch
    CloudPrivateCatalogProducerCatalogsPatchResource,
    CloudPrivateCatalogProducerCatalogsPatch (..),
    newCloudPrivateCatalogProducerCatalogsPatch,

    -- ** cloudprivatecatalogproducer.catalogs.products.copy
    CloudPrivateCatalogProducerCatalogsProductsCopyResource,
    CloudPrivateCatalogProducerCatalogsProductsCopy (..),
    newCloudPrivateCatalogProducerCatalogsProductsCopy,

    -- ** cloudprivatecatalogproducer.catalogs.products.create
    CloudPrivateCatalogProducerCatalogsProductsCreateResource,
    CloudPrivateCatalogProducerCatalogsProductsCreate (..),
    newCloudPrivateCatalogProducerCatalogsProductsCreate,

    -- ** cloudprivatecatalogproducer.catalogs.products.delete
    CloudPrivateCatalogProducerCatalogsProductsDeleteResource,
    CloudPrivateCatalogProducerCatalogsProductsDelete (..),
    newCloudPrivateCatalogProducerCatalogsProductsDelete,

    -- ** cloudprivatecatalogproducer.catalogs.products.get
    CloudPrivateCatalogProducerCatalogsProductsGetResource,
    CloudPrivateCatalogProducerCatalogsProductsGet (..),
    newCloudPrivateCatalogProducerCatalogsProductsGet,

    -- ** cloudprivatecatalogproducer.catalogs.products.icons.upload
    CloudPrivateCatalogProducerCatalogsProductsIconsUploadResource,
    CloudPrivateCatalogProducerCatalogsProductsIconsUpload (..),
    newCloudPrivateCatalogProducerCatalogsProductsIconsUpload,

    -- ** cloudprivatecatalogproducer.catalogs.products.list
    CloudPrivateCatalogProducerCatalogsProductsListResource,
    CloudPrivateCatalogProducerCatalogsProductsList (..),
    newCloudPrivateCatalogProducerCatalogsProductsList,

    -- ** cloudprivatecatalogproducer.catalogs.products.patch
    CloudPrivateCatalogProducerCatalogsProductsPatchResource,
    CloudPrivateCatalogProducerCatalogsProductsPatch (..),
    newCloudPrivateCatalogProducerCatalogsProductsPatch,

    -- ** cloudprivatecatalogproducer.catalogs.products.versions.create
    CloudPrivateCatalogProducerCatalogsProductsVersionsCreateResource,
    CloudPrivateCatalogProducerCatalogsProductsVersionsCreate (..),
    newCloudPrivateCatalogProducerCatalogsProductsVersionsCreate,

    -- ** cloudprivatecatalogproducer.catalogs.products.versions.delete
    CloudPrivateCatalogProducerCatalogsProductsVersionsDeleteResource,
    CloudPrivateCatalogProducerCatalogsProductsVersionsDelete (..),
    newCloudPrivateCatalogProducerCatalogsProductsVersionsDelete,

    -- ** cloudprivatecatalogproducer.catalogs.products.versions.get
    CloudPrivateCatalogProducerCatalogsProductsVersionsGetResource,
    CloudPrivateCatalogProducerCatalogsProductsVersionsGet (..),
    newCloudPrivateCatalogProducerCatalogsProductsVersionsGet,

    -- ** cloudprivatecatalogproducer.catalogs.products.versions.list
    CloudPrivateCatalogProducerCatalogsProductsVersionsListResource,
    CloudPrivateCatalogProducerCatalogsProductsVersionsList (..),
    newCloudPrivateCatalogProducerCatalogsProductsVersionsList,

    -- ** cloudprivatecatalogproducer.catalogs.products.versions.patch
    CloudPrivateCatalogProducerCatalogsProductsVersionsPatchResource,
    CloudPrivateCatalogProducerCatalogsProductsVersionsPatch (..),
    newCloudPrivateCatalogProducerCatalogsProductsVersionsPatch,

    -- ** cloudprivatecatalogproducer.catalogs.setIamPolicy
    CloudPrivateCatalogProducerCatalogsSetIamPolicyResource,
    CloudPrivateCatalogProducerCatalogsSetIamPolicy (..),
    newCloudPrivateCatalogProducerCatalogsSetIamPolicy,

    -- ** cloudprivatecatalogproducer.catalogs.testIamPermissions
    CloudPrivateCatalogProducerCatalogsTestIamPermissionsResource,
    CloudPrivateCatalogProducerCatalogsTestIamPermissions (..),
    newCloudPrivateCatalogProducerCatalogsTestIamPermissions,

    -- ** cloudprivatecatalogproducer.catalogs.undelete
    CloudPrivateCatalogProducerCatalogsUndeleteResource,
    CloudPrivateCatalogProducerCatalogsUndelete (..),
    newCloudPrivateCatalogProducerCatalogsUndelete,

    -- ** cloudprivatecatalogproducer.operations.cancel
    CloudPrivateCatalogProducerOperationsCancelResource,
    CloudPrivateCatalogProducerOperationsCancel (..),
    newCloudPrivateCatalogProducerOperationsCancel,

    -- ** cloudprivatecatalogproducer.operations.delete
    CloudPrivateCatalogProducerOperationsDeleteResource,
    CloudPrivateCatalogProducerOperationsDelete (..),
    newCloudPrivateCatalogProducerOperationsDelete,

    -- ** cloudprivatecatalogproducer.operations.get
    CloudPrivateCatalogProducerOperationsGetResource,
    CloudPrivateCatalogProducerOperationsGet (..),
    newCloudPrivateCatalogProducerOperationsGet,

    -- ** cloudprivatecatalogproducer.operations.list
    CloudPrivateCatalogProducerOperationsListResource,
    CloudPrivateCatalogProducerOperationsList (..),
    newCloudPrivateCatalogProducerOperationsList,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** GoogleCloudPrivatecatalogproducerV1beta1Association
    GoogleCloudPrivatecatalogproducerV1beta1Association (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Association,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1Catalog
    GoogleCloudPrivatecatalogproducerV1beta1Catalog (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Catalog,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
    GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest (..),
    newGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
    GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest (..),
    newGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
    GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse (..),
    newGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
    GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse (..),
    newGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
    GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse (..),
    newGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
    GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse (..),
    newGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1Product
    GoogleCloudPrivatecatalogproducerV1beta1Product (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Product,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata
    GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
    GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest (..),
    newGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
    GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest (..),
    newGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1Version
    GoogleCloudPrivatecatalogproducerV1beta1Version (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Version,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1Version_Asset
    GoogleCloudPrivatecatalogproducerV1beta1Version_Asset (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Version_Asset,

    -- ** GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset
    GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset,

    -- ** GoogleIamV1AuditConfig
    GoogleIamV1AuditConfig (..),
    newGoogleIamV1AuditConfig,

    -- ** GoogleIamV1AuditLogConfig
    GoogleIamV1AuditLogConfig (..),
    newGoogleIamV1AuditLogConfig,

    -- ** GoogleIamV1AuditLogConfig_LogType
    GoogleIamV1AuditLogConfig_LogType (..),

    -- ** GoogleIamV1Binding
    GoogleIamV1Binding (..),
    newGoogleIamV1Binding,

    -- ** GoogleIamV1Policy
    GoogleIamV1Policy (..),
    newGoogleIamV1Policy,

    -- ** GoogleIamV1SetIamPolicyRequest
    GoogleIamV1SetIamPolicyRequest (..),
    newGoogleIamV1SetIamPolicyRequest,

    -- ** GoogleIamV1TestIamPermissionsRequest
    GoogleIamV1TestIamPermissionsRequest (..),
    newGoogleIamV1TestIamPermissionsRequest,

    -- ** GoogleIamV1TestIamPermissionsResponse
    GoogleIamV1TestIamPermissionsResponse (..),
    newGoogleIamV1TestIamPermissionsResponse,

    -- ** GoogleLongrunningCancelOperationRequest
    GoogleLongrunningCancelOperationRequest (..),
    newGoogleLongrunningCancelOperationRequest,

    -- ** GoogleLongrunningListOperationsResponse
    GoogleLongrunningListOperationsResponse (..),
    newGoogleLongrunningListOperationsResponse,

    -- ** GoogleLongrunningOperation
    GoogleLongrunningOperation (..),
    newGoogleLongrunningOperation,

    -- ** GoogleLongrunningOperation_Metadata
    GoogleLongrunningOperation_Metadata (..),
    newGoogleLongrunningOperation_Metadata,

    -- ** GoogleLongrunningOperation_Response
    GoogleLongrunningOperation_Response (..),
    newGoogleLongrunningOperation_Response,

    -- ** GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,

    -- ** GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- ** GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,

    -- ** GoogleTypeExpr
    GoogleTypeExpr (..),
    newGoogleTypeExpr,
  )
where

import Gogol.CloudPrivateCatalogProducer.Catalogs.Associations.Create
import Gogol.CloudPrivateCatalogProducer.Catalogs.Associations.Delete
import Gogol.CloudPrivateCatalogProducer.Catalogs.Associations.Get
import Gogol.CloudPrivateCatalogProducer.Catalogs.Associations.List
import Gogol.CloudPrivateCatalogProducer.Catalogs.Create
import Gogol.CloudPrivateCatalogProducer.Catalogs.Delete
import Gogol.CloudPrivateCatalogProducer.Catalogs.Get
import Gogol.CloudPrivateCatalogProducer.Catalogs.GetIamPolicy
import Gogol.CloudPrivateCatalogProducer.Catalogs.List
import Gogol.CloudPrivateCatalogProducer.Catalogs.Patch
import Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Copy
import Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Create
import Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Delete
import Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Get
import Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Icons.Upload
import Gogol.CloudPrivateCatalogProducer.Catalogs.Products.List
import Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Patch
import Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Create
import Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Delete
import Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Get
import Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.List
import Gogol.CloudPrivateCatalogProducer.Catalogs.Products.Versions.Patch
import Gogol.CloudPrivateCatalogProducer.Catalogs.SetIamPolicy
import Gogol.CloudPrivateCatalogProducer.Catalogs.TestIamPermissions
import Gogol.CloudPrivateCatalogProducer.Catalogs.Undelete
import Gogol.CloudPrivateCatalogProducer.Operations.Cancel
import Gogol.CloudPrivateCatalogProducer.Operations.Delete
import Gogol.CloudPrivateCatalogProducer.Operations.Get
import Gogol.CloudPrivateCatalogProducer.Operations.List
import Gogol.CloudPrivateCatalogProducer.Types
