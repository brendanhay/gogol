{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.CloudPrivateCatalogProducer.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudPrivateCatalogProducer.Types
  ( -- * Configuration
    cloudPrivateCatalogProducerService,

    -- * OAuth Scopes
    CloudPlatform'FullControl,

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

import Gogol.CloudPrivateCatalogProducer.Internal.Product
import Gogol.CloudPrivateCatalogProducer.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Default request referring to version @v1beta1@ of the Cloud Private Catalog Producer API. This contains the host and root path used as a starting point for constructing service requests.
cloudPrivateCatalogProducerService :: Core.ServiceConfig
cloudPrivateCatalogProducerService =
  Core.defaultService
    ( Core.ServiceId
        "cloudprivatecatalogproducer:v1beta1"
    )
    "cloudprivatecatalogproducer.googleapis.com"

-- | View and manage your data across Google Cloud Platform services
type CloudPlatform'FullControl = "https://www.googleapis.com/auth/cloud-platform"
