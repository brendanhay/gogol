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
-- Module      : Gogol.CloudPrivateCatalogProducer.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudPrivateCatalogProducer.Internal.Product
  ( -- * GoogleCloudPrivatecatalogproducerV1beta1Association
    GoogleCloudPrivatecatalogproducerV1beta1Association (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Association,

    -- * GoogleCloudPrivatecatalogproducerV1beta1Catalog
    GoogleCloudPrivatecatalogproducerV1beta1Catalog (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Catalog,

    -- * GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
    GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest (..),
    newGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest,

    -- * GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
    GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest (..),
    newGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest,

    -- * GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
    GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse (..),
    newGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse,

    -- * GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
    GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse (..),
    newGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse,

    -- * GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
    GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse (..),
    newGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse,

    -- * GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
    GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse (..),
    newGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse,

    -- * GoogleCloudPrivatecatalogproducerV1beta1Product
    GoogleCloudPrivatecatalogproducerV1beta1Product (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Product,

    -- * GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata
    GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata,

    -- * GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
    GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest (..),
    newGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest,

    -- * GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
    GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest (..),
    newGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest,

    -- * GoogleCloudPrivatecatalogproducerV1beta1Version
    GoogleCloudPrivatecatalogproducerV1beta1Version (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Version,

    -- * GoogleCloudPrivatecatalogproducerV1beta1Version_Asset
    GoogleCloudPrivatecatalogproducerV1beta1Version_Asset (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Version_Asset,

    -- * GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset
    GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset (..),
    newGoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset,

    -- * GoogleIamV1AuditConfig
    GoogleIamV1AuditConfig (..),
    newGoogleIamV1AuditConfig,

    -- * GoogleIamV1AuditLogConfig
    GoogleIamV1AuditLogConfig (..),
    newGoogleIamV1AuditLogConfig,

    -- * GoogleIamV1Binding
    GoogleIamV1Binding (..),
    newGoogleIamV1Binding,

    -- * GoogleIamV1Policy
    GoogleIamV1Policy (..),
    newGoogleIamV1Policy,

    -- * GoogleIamV1SetIamPolicyRequest
    GoogleIamV1SetIamPolicyRequest (..),
    newGoogleIamV1SetIamPolicyRequest,

    -- * GoogleIamV1TestIamPermissionsRequest
    GoogleIamV1TestIamPermissionsRequest (..),
    newGoogleIamV1TestIamPermissionsRequest,

    -- * GoogleIamV1TestIamPermissionsResponse
    GoogleIamV1TestIamPermissionsResponse (..),
    newGoogleIamV1TestIamPermissionsResponse,

    -- * GoogleLongrunningCancelOperationRequest
    GoogleLongrunningCancelOperationRequest (..),
    newGoogleLongrunningCancelOperationRequest,

    -- * GoogleLongrunningListOperationsResponse
    GoogleLongrunningListOperationsResponse (..),
    newGoogleLongrunningListOperationsResponse,

    -- * GoogleLongrunningOperation
    GoogleLongrunningOperation (..),
    newGoogleLongrunningOperation,

    -- * GoogleLongrunningOperation_Metadata
    GoogleLongrunningOperation_Metadata (..),
    newGoogleLongrunningOperation_Metadata,

    -- * GoogleLongrunningOperation_Response
    GoogleLongrunningOperation_Response (..),
    newGoogleLongrunningOperation_Response,

    -- * GoogleProtobufEmpty
    GoogleProtobufEmpty (..),
    newGoogleProtobufEmpty,

    -- * GoogleRpcStatus
    GoogleRpcStatus (..),
    newGoogleRpcStatus,

    -- * GoogleRpcStatus_DetailsItem
    GoogleRpcStatus_DetailsItem (..),
    newGoogleRpcStatus_DetailsItem,

    -- * GoogleTypeExpr
    GoogleTypeExpr (..),
    newGoogleTypeExpr,
  )
where

import Gogol.CloudPrivateCatalogProducer.Internal.Sum
import qualified Gogol.Prelude as Core

-- | An association tuple that pairs a @Catalog@ to a resource that can use the @Catalog@. After association, a google.cloud.privatecatalog.v1beta1.Catalog becomes available to consumers under specified Association.resource and all of its child nodes. Users who have the @cloudprivatecatalog.targets.get@ permission on any of the resource nodes can access the catalog and child products under the node.
--
-- For example, suppose the cloud resource hierarchy is as follows:
--
-- -   organizations\/example.com
--     -   folders\/team
--         -   projects\/test
--
-- After creating an association with @organizations\/example.com@, the catalog @catalogs\/1@ is accessible from the following paths:
--
-- -   organizations\/example.com
-- -   folders\/team
-- -   projects\/test
--
-- Users can access them by google.cloud.v1beta1.PrivateCatalog.SearchCatalogs action.
--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1Association' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1Association = GoogleCloudPrivatecatalogproducerV1beta1Association
  { -- | The creation time of the association.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Output only. The resource name of the catalog association, in the format \`catalogs\/{catalog/id}\/associations\/{association/id}\'.
    --
    -- A unique identifier for the catalog association, which is generated by catalog service.
    name :: (Core.Maybe Core.Text),
    -- | Required. The user-supplied fully qualified name of the @Resource@ associated to the @Catalog@. It supports @Organization@, @Folder@, and @Project@. Values are of the form
    --
    -- -   @\/\/cloudresourcemanager.googleapis.com\/projects\/{product_number}@
    -- -   @\/\/cloudresourcemanager.googleapis.com\/folders\/{folder_id}@
    -- -   @\/\/cloudresourcemanager.googleapis.com\/organizations\/{organization_id}@
    resource :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1Association' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1Association ::
  GoogleCloudPrivatecatalogproducerV1beta1Association
newGoogleCloudPrivatecatalogproducerV1beta1Association =
  GoogleCloudPrivatecatalogproducerV1beta1Association
    { createTime = Core.Nothing,
      name = Core.Nothing,
      resource = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1Association
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1Association"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1Association
            Core.<$> (o Core..:? "createTime")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "resource")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1Association
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1Association {..} =
      Core.object
        ( Core.catMaybes
            [ ("createTime" Core..=) Core.<$> createTime,
              ("name" Core..=) Core.<$> name,
              ("resource" Core..=) Core.<$> resource
            ]
        )

-- | The producer representation of a catalog which is a curated collection of solutions that can be managed, controlled, and shared by cloud admins.
--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1Catalog' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1Catalog = GoogleCloudPrivatecatalogproducerV1beta1Catalog
  { -- | Output only. The time when the catalog was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | Required. The user-supplied description of the catalog. Maximum of 512 characters.
    description :: (Core.Maybe Core.Text),
    -- | Required. The user-supplied descriptive name of the catalog as it appears in UIs. Maximum 256 characters in length.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the catalog, in the format \`catalogs\/{catalog_id}\'.
    --
    -- A unique identifier for the catalog, which is generated by catalog service.
    name :: (Core.Maybe Core.Text),
    -- | Required. The parent resource name of the catalog, which can\'t be changed after a catalog is created. It can only be an organization. Values are of the form @\/\/cloudresourcemanager.googleapis.com\/organizations\/\<id>@. Maximum 256 characters in length.
    parent :: (Core.Maybe Core.Text),
    -- | Output only. The time when the catalog was last updated.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1Catalog' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1Catalog ::
  GoogleCloudPrivatecatalogproducerV1beta1Catalog
newGoogleCloudPrivatecatalogproducerV1beta1Catalog =
  GoogleCloudPrivatecatalogproducerV1beta1Catalog
    { createTime = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      parent = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1Catalog
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1Catalog"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1Catalog
            Core.<$> (o Core..:? "createTime")
              Core.<*> (o Core..:? "description")
              Core.<*> (o Core..:? "displayName")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "parent")
              Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1Catalog
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1Catalog {..} =
      Core.object
        ( Core.catMaybes
            [ ("createTime" Core..=) Core.<$> createTime,
              ("description" Core..=) Core.<$> description,
              ("displayName" Core..=) Core.<$> displayName,
              ("name" Core..=) Core.<$> name,
              ("parent" Core..=) Core.<$> parent,
              ("updateTime" Core..=) Core.<$> updateTime
            ]
        )

--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest' smart constructor.
newtype GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest = GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
  { -- | The resource name of the destination product that is copied to.
    destinationProductName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest ::
  GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
newGoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest =
  GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
    { destinationProductName = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
            Core.<$> (o Core..:? "destinationProductName")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1CopyProductRequest {..} =
      Core.object
        ( Core.catMaybes
            [ ("destinationProductName" Core..=)
                Core.<$> destinationProductName
            ]
        )

--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest' smart constructor.
newtype GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest = GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
  { -- | The user-supplied @Association@ that is going to be created.
    --
    -- If the @resource@ field is set, the @privatecatalogproducer.catalogTargets.associate@ permission is checked on the target resource.
    association :: (Core.Maybe GoogleCloudPrivatecatalogproducerV1beta1Association)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest ::
  GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
newGoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest =
  GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
    { association = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
            Core.<$> (o Core..:? "association")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1CreateAssociationRequest {..} =
      Core.object
        ( Core.catMaybes
            [("association" Core..=) Core.<$> association]
        )

--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse = GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
  { -- | The returned @Association@ resources from the list call.
    associations :: (Core.Maybe [GoogleCloudPrivatecatalogproducerV1beta1Association]),
    -- | A pagination token returned from a previous call to @ListAssociations@ that indicates where the listing should continue from. This field is optional.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse ::
  GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
newGoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse =
  GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
    { associations = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
            Core.<$> (o Core..:? "associations" Core..!= Core.mempty)
              Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1ListAssociationsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("associations" Core..=) Core.<$> associations,
              ("nextPageToken" Core..=) Core.<$> nextPageToken
            ]
        )

--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse = GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
  { -- | The @Catalogs@ returned from the list call.
    catalogs :: (Core.Maybe [GoogleCloudPrivatecatalogproducerV1beta1Catalog]),
    -- | A pagination token returned from a previous call to ListCatalogs that indicates where the listing should continue from. This field is optional.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse ::
  GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
newGoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse =
  GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
    { catalogs = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
            Core.<$> (o Core..:? "catalogs" Core..!= Core.mempty)
              Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1ListCatalogsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("catalogs" Core..=) Core.<$> catalogs,
              ("nextPageToken" Core..=) Core.<$> nextPageToken
            ]
        )

--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse = GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
  { -- | A pagination token returned from a previous call to ListProducts that indicates where the listing should continue from. This field is optional.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The @Product@ returned from the list call.
    products :: (Core.Maybe [GoogleCloudPrivatecatalogproducerV1beta1Product])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse ::
  GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
newGoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse =
  GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
    { nextPageToken = Core.Nothing,
      products = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
            Core.<$> (o Core..:? "nextPageToken")
              Core.<*> (o Core..:? "products" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1ListProductsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
              ("products" Core..=) Core.<$> products
            ]
        )

--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse = GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
  { -- | A pagination token returned from a previous call to ListProducts that indicates where the listing should continue from. This field is optional.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The @VersiVersionon@ returned from the list call.
    versions :: (Core.Maybe [GoogleCloudPrivatecatalogproducerV1beta1Version])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse ::
  GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
newGoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse =
  GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
    { nextPageToken = Core.Nothing,
      versions = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
            Core.<$> (o Core..:? "nextPageToken")
              Core.<*> (o Core..:? "versions" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1ListVersionsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
              ("versions" Core..=) Core.<$> versions
            ]
        )

-- | The producer representation of a product which is a child resource of @Catalog@ with display metadata and a list of @Version@ resources.
--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1Product' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1Product = GoogleCloudPrivatecatalogproducerV1beta1Product
  { -- | Required. The type of the product asset, which cannot be changed after the product is created. It supports the values @google.deploymentmanager.Template@ and @google.cloudprivatecatalog.ListingOnly@. Other values will be rejected by the server. Read only after creation.
    --
    -- The following fields or resource types have different validation rules under each @asset_type@ values:
    --
    -- -   Product.display_metadata has different validation schema for each asset type value. See its comment for details.
    -- -   Version resource isn\'t allowed to be added under the @google.cloudprivatecatalog.ListingOnly@ type.
    assetType :: (Core.Maybe Core.Text),
    -- | Output only. The time when the product was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The user-supplied display metadata to describe the product. The JSON schema of the metadata differs by Product.asset_type. When the type is @google.deploymentmanager.Template@, the schema is as follows:
    --
    -- \`\`\` \"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type: object properties: name: type: string minLength: 1 maxLength: 64 description: type: string minLength: 1 maxLength: 2048 tagline: type: string minLength: 1 maxLength: 100 support/info: type: string minLength: 1 maxLength: 2048 creator: type: string minLength: 1 maxLength: 100 documentation: type: array items: type: object properties: url: type: string pattern: \"^(https?):\/\/[-a-zA-Z0-9+&\@#\/%?=~/|!:,.;]*[-a-zA-Z0-9+&\@#\/%=~_|]\" title: type: string minLength: 1 maxLength: 64 description: type: string minLength: 1 maxLength: 2048 required: - name - description additionalProperties: false
    --
    -- \`\`\`
    --
    -- When the asset type is @google.cloudprivatecatalog.ListingOnly@, the schema is as follows:
    --
    -- @\"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type: object properties:   name:     type: string     minLength: 1     maxLength: 64   description:     type: string     minLength: 1     maxLength: 2048   tagline:     type: string     minLength: 1     maxLength: 100   support_info:     type: string     minLength: 1     maxLength: 2048   creator:     type: string     minLength: 1     maxLength: 100   documentation:     type: array     items:       type: object       properties:         url:           type: string           pattern:           \"^(https?):\/\/[-a-zA-Z0-9+&\@#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\@#\/%=~_|]\"         title:           type: string           minLength: 1           maxLength: 64         description:           type: string           minLength: 1           maxLength: 2048   signup_url:     type: string     pattern:     \"^(https?):\/\/[-a-zA-Z0-9+&\@#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\@#\/%=~_|]\" required: - name - description - signup_url additionalProperties: false@
    displayMetadata ::
      ( Core.Maybe
          GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata
      ),
    -- | Output only. The public accessible URI of the icon uploaded by PrivateCatalogProducer.UploadIcon.
    --
    -- If no icon is uploaded, it will be the default icon\'s URI.
    iconUri :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the product in the format \`catalogs\/{catalog_id}\/products\/a-z*[a-z0-9]\'.
    --
    -- A unique identifier for the product under a catalog, which cannot be changed after the product is created. The final segment of the name must between 1 and 256 characters in length.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The time when the product was last updated.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1Product' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1Product ::
  GoogleCloudPrivatecatalogproducerV1beta1Product
newGoogleCloudPrivatecatalogproducerV1beta1Product =
  GoogleCloudPrivatecatalogproducerV1beta1Product
    { assetType = Core.Nothing,
      createTime = Core.Nothing,
      displayMetadata = Core.Nothing,
      iconUri = Core.Nothing,
      name = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1Product
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1Product"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1Product
            Core.<$> (o Core..:? "assetType")
              Core.<*> (o Core..:? "createTime")
              Core.<*> (o Core..:? "displayMetadata")
              Core.<*> (o Core..:? "iconUri")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1Product
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1Product {..} =
      Core.object
        ( Core.catMaybes
            [ ("assetType" Core..=) Core.<$> assetType,
              ("createTime" Core..=) Core.<$> createTime,
              ("displayMetadata" Core..=) Core.<$> displayMetadata,
              ("iconUri" Core..=) Core.<$> iconUri,
              ("name" Core..=) Core.<$> name,
              ("updateTime" Core..=) Core.<$> updateTime
            ]
        )

-- | The user-supplied display metadata to describe the product. The JSON schema of the metadata differs by Product.asset_type. When the type is @google.deploymentmanager.Template@, the schema is as follows:
--
-- \`\`\` \"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type: object properties: name: type: string minLength: 1 maxLength: 64 description: type: string minLength: 1 maxLength: 2048 tagline: type: string minLength: 1 maxLength: 100 support/info: type: string minLength: 1 maxLength: 2048 creator: type: string minLength: 1 maxLength: 100 documentation: type: array items: type: object properties: url: type: string pattern: \"^(https?):\/\/[-a-zA-Z0-9+&\@#\/%?=~/|!:,.;]*[-a-zA-Z0-9+&\@#\/%=~_|]\" title: type: string minLength: 1 maxLength: 64 description: type: string minLength: 1 maxLength: 2048 required: - name - description additionalProperties: false
--
-- \`\`\`
--
-- When the asset type is @google.cloudprivatecatalog.ListingOnly@, the schema is as follows:
--
-- @\"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type: object properties:   name:     type: string     minLength: 1     maxLength: 64   description:     type: string     minLength: 1     maxLength: 2048   tagline:     type: string     minLength: 1     maxLength: 100   support_info:     type: string     minLength: 1     maxLength: 2048   creator:     type: string     minLength: 1     maxLength: 100   documentation:     type: array     items:       type: object       properties:         url:           type: string           pattern:           \"^(https?):\/\/[-a-zA-Z0-9+&\@#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\@#\/%=~_|]\"         title:           type: string           minLength: 1           maxLength: 64         description:           type: string           minLength: 1           maxLength: 2048   signup_url:     type: string     pattern:     \"^(https?):\/\/[-a-zA-Z0-9+&\@#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\@#\/%=~_|]\" required: - name - description - signup_url additionalProperties: false@
--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata' smart constructor.
newtype GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata = GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata
newGoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata addtional =
  GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata
    { addtional = addtional
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1Product_DisplayMetadata {..} =
      Core.toJSON addtional

--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest = GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest ::
  GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
newGoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest =
  GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest"
      ( \o ->
          Core.pure
            GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1UndeleteCatalogRequest
  where
  toJSON = Core.const Core.emptyObject

--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest' smart constructor.
newtype GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest = GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
  { -- | The raw icon bytes user-supplied to be uploaded to the product. The format of the icon can only be PNG or JPEG. The minimum allowed dimensions are 130x130 pixels and the maximum dimensions are 10000x10000 pixels. Required.
    icon :: (Core.Maybe Core.Base64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest ::
  GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
newGoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest =
  GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
    { icon = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
            Core.<$> (o Core..:? "icon")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest {..} =
      Core.object
        (Core.catMaybes [("icon" Core..=) Core.<$> icon])

-- | The producer representation of a version, which is a child resource under a @Product@ with asset data.
--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1Version' smart constructor.
data GoogleCloudPrivatecatalogproducerV1beta1Version = GoogleCloudPrivatecatalogproducerV1beta1Version
  { -- | Output only. The asset which has been validated and is ready to be provisioned. See Version.original_asset for the schema.
    asset :: (Core.Maybe GoogleCloudPrivatecatalogproducerV1beta1Version_Asset),
    -- | Output only. The time when the version was created.
    createTime :: (Core.Maybe Core.DateTime'),
    -- | The user-supplied description of the version. Maximum of 256 characters.
    description :: (Core.Maybe Core.Text),
    -- | Required. The resource name of the version, in the format \`catalogs\/{catalog/id}\/products\/{product/id}\/versions\/a-z*[a-z0-9]\'.
    --
    -- A unique identifier for the version under a product, which can\'t be changed after the version is created. The final segment of the name must between 1 and 63 characters in length.
    name :: (Core.Maybe Core.Text),
    -- | The user-supplied asset payload. The maximum size of the payload is 2MB. The JSON schema of the payload is defined as:
    --
    -- @type: object properties:   mainTemplate:     type: string     description: The file name of the main template and name prefix of     schema file. The content of the main template should be set in the     imports list. The schema file name is expected to be     \<mainTemplate>.schema in the imports list. required: true   imports:     type: array     description: Import template and schema file contents. Required to have     both \<mainTemplate> and \<mainTemplate>.schema files. required: true     minItems: 2     items:       type: object       properties:         name:           type: string         content:           type: string@
    originalAsset ::
      ( Core.Maybe
          GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset
      ),
    -- | Output only. The time when the version was last updated.
    updateTime :: (Core.Maybe Core.DateTime')
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1Version' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1Version ::
  GoogleCloudPrivatecatalogproducerV1beta1Version
newGoogleCloudPrivatecatalogproducerV1beta1Version =
  GoogleCloudPrivatecatalogproducerV1beta1Version
    { asset = Core.Nothing,
      createTime = Core.Nothing,
      description = Core.Nothing,
      name = Core.Nothing,
      originalAsset = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1Version
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1Version"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1Version
            Core.<$> (o Core..:? "asset")
              Core.<*> (o Core..:? "createTime")
              Core.<*> (o Core..:? "description")
              Core.<*> (o Core..:? "name")
              Core.<*> (o Core..:? "originalAsset")
              Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1Version
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1Version {..} =
      Core.object
        ( Core.catMaybes
            [ ("asset" Core..=) Core.<$> asset,
              ("createTime" Core..=) Core.<$> createTime,
              ("description" Core..=) Core.<$> description,
              ("name" Core..=) Core.<$> name,
              ("originalAsset" Core..=) Core.<$> originalAsset,
              ("updateTime" Core..=) Core.<$> updateTime
            ]
        )

-- | Output only. The asset which has been validated and is ready to be provisioned. See Version.original_asset for the schema.
--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1Version_Asset' smart constructor.
newtype GoogleCloudPrivatecatalogproducerV1beta1Version_Asset = GoogleCloudPrivatecatalogproducerV1beta1Version_Asset
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1Version_Asset' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1Version_Asset ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleCloudPrivatecatalogproducerV1beta1Version_Asset
newGoogleCloudPrivatecatalogproducerV1beta1Version_Asset addtional =
  GoogleCloudPrivatecatalogproducerV1beta1Version_Asset {addtional = addtional}

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1Version_Asset
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1Version_Asset"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1Version_Asset
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1Version_Asset
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1Version_Asset {..} =
      Core.toJSON addtional

-- | The user-supplied asset payload. The maximum size of the payload is 2MB. The JSON schema of the payload is defined as:
--
-- @type: object properties:   mainTemplate:     type: string     description: The file name of the main template and name prefix of     schema file. The content of the main template should be set in the     imports list. The schema file name is expected to be     \<mainTemplate>.schema in the imports list. required: true   imports:     type: array     description: Import template and schema file contents. Required to have     both \<mainTemplate> and \<mainTemplate>.schema files. required: true     minItems: 2     items:       type: object       properties:         name:           type: string         content:           type: string@
--
-- /See:/ 'newGoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset' smart constructor.
newtype GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset = GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset
  { -- | Properties of the object.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset ::
  -- |  Properties of the object. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset
newGoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset addtional =
  GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset
    { addtional = addtional
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset"
      ( \o ->
          GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset
  where
  toJSON
    GoogleCloudPrivatecatalogproducerV1beta1Version_OriginalAsset {..} =
      Core.toJSON addtional

-- | Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs.
--
-- If there are AuditConfigs for both @allServices@ and a specific service, the union of the two AuditConfigs is used for that service: the log/types specified in each AuditConfig are enabled, and the exempted/members in each AuditLogConfig are exempted.
--
-- Example Policy with multiple AuditConfigs:
--
-- > {
-- >   "audit_configs": [
-- >     {
-- >       "service": "allServices"
-- >       "audit_log_configs": [
-- >         {
-- >           "log_type": "DATA_READ",
-- >           "exempted_members": [
-- >             "user:jose@example.com"
-- >           ]
-- >         },
-- >         {
-- >           "log_type": "DATA_WRITE",
-- >         },
-- >         {
-- >           "log_type": "ADMIN_READ",
-- >         }
-- >       ]
-- >     },
-- >     {
-- >       "service": "sampleservice.googleapis.com"
-- >       "audit_log_configs": [
-- >         {
-- >           "log_type": "DATA_READ",
-- >         },
-- >         {
-- >           "log_type": "DATA_WRITE",
-- >           "exempted_members": [
-- >             "user:aliya@example.com"
-- >           ]
-- >         }
-- >       ]
-- >     }
-- >   ]
-- > }
--
-- For sampleservice, this policy enables DATA/READ, DATA/WRITE and ADMIN/READ logging. It also exempts jose\@example.com from DATA/READ logging, and aliya\@example.com from DATA_WRITE logging.
--
-- /See:/ 'newGoogleIamV1AuditConfig' smart constructor.
data GoogleIamV1AuditConfig = GoogleIamV1AuditConfig
  { -- | The configuration for logging of each type of permission.
    auditLogConfigs :: (Core.Maybe [GoogleIamV1AuditLogConfig]),
    -- | Specifies a service that will be enabled for audit logging. For example, @storage.googleapis.com@, @cloudsql.googleapis.com@. @allServices@ is a special value that covers all services.
    service :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1AuditConfig' with the minimum fields required to make a request.
newGoogleIamV1AuditConfig ::
  GoogleIamV1AuditConfig
newGoogleIamV1AuditConfig =
  GoogleIamV1AuditConfig
    { auditLogConfigs = Core.Nothing,
      service = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1AuditConfig where
  parseJSON =
    Core.withObject
      "GoogleIamV1AuditConfig"
      ( \o ->
          GoogleIamV1AuditConfig
            Core.<$> (o Core..:? "auditLogConfigs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "service")
      )

instance Core.ToJSON GoogleIamV1AuditConfig where
  toJSON GoogleIamV1AuditConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditLogConfigs" Core..=)
              Core.<$> auditLogConfigs,
            ("service" Core..=) Core.<$> service
          ]
      )

-- | Provides the configuration for logging a type of permissions. Example:
--
-- > {
-- >   "audit_log_configs": [
-- >     {
-- >       "log_type": "DATA_READ",
-- >       "exempted_members": [
-- >         "user:jose@example.com"
-- >       ]
-- >     },
-- >     {
-- >       "log_type": "DATA_WRITE",
-- >     }
-- >   ]
-- > }
--
-- This enables \'DATA/READ\' and \'DATA/WRITE\' logging, while exempting jose\@example.com from DATA_READ logging.
--
-- /See:/ 'newGoogleIamV1AuditLogConfig' smart constructor.
data GoogleIamV1AuditLogConfig = GoogleIamV1AuditLogConfig
  { -- | Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.
    exemptedMembers :: (Core.Maybe [Core.Text]),
    -- | The log type that this config enables.
    logType :: (Core.Maybe GoogleIamV1AuditLogConfig_LogType)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1AuditLogConfig' with the minimum fields required to make a request.
newGoogleIamV1AuditLogConfig ::
  GoogleIamV1AuditLogConfig
newGoogleIamV1AuditLogConfig =
  GoogleIamV1AuditLogConfig
    { exemptedMembers = Core.Nothing,
      logType = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1AuditLogConfig where
  parseJSON =
    Core.withObject
      "GoogleIamV1AuditLogConfig"
      ( \o ->
          GoogleIamV1AuditLogConfig
            Core.<$> (o Core..:? "exemptedMembers" Core..!= Core.mempty)
            Core.<*> (o Core..:? "logType")
      )

instance Core.ToJSON GoogleIamV1AuditLogConfig where
  toJSON GoogleIamV1AuditLogConfig {..} =
    Core.object
      ( Core.catMaybes
          [ ("exemptedMembers" Core..=)
              Core.<$> exemptedMembers,
            ("logType" Core..=) Core.<$> logType
          ]
      )

-- | Associates @members@ with a @role@.
--
-- /See:/ 'newGoogleIamV1Binding' smart constructor.
data GoogleIamV1Binding = GoogleIamV1Binding
  { -- | The condition that is associated with this binding. NOTE: An unsatisfied condition will not allow user access via current binding. Different bindings, including their conditions, are examined independently.
    condition :: (Core.Maybe GoogleTypeExpr),
    -- | Specifies the identities requesting access for a Cloud Platform resource. @members@ can have the following values:
    --
    -- -   @allUsers@: A special identifier that represents anyone who is on the internet; with or without a Google account.
    --
    -- -   @allAuthenticatedUsers@: A special identifier that represents anyone who is authenticated with a Google account or a service account.
    --
    -- -   @user:{emailid}@: An email address that represents a specific Google account. For example, @alice\@example.com@ .
    --
    -- -   @serviceAccount:{emailid}@: An email address that represents a service account. For example, @my-other-app\@appspot.gserviceaccount.com@.
    --
    -- -   @group:{emailid}@: An email address that represents a Google group. For example, @admins\@example.com@.
    --
    -- -   @deleted:user:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a user that has been recently deleted. For example, @alice\@example.com?uid=123456789012345678901@. If the user is recovered, this value reverts to @user:{emailid}@ and the recovered user retains the role in the binding.
    --
    -- -   @deleted:serviceAccount:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, @my-other-app\@appspot.gserviceaccount.com?uid=123456789012345678901@. If the service account is undeleted, this value reverts to @serviceAccount:{emailid}@ and the undeleted service account retains the role in the binding.
    --
    -- -   @deleted:group:{emailid}?uid={uniqueid}@: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, @admins\@example.com?uid=123456789012345678901@. If the group is recovered, this value reverts to @group:{emailid}@ and the recovered group retains the role in the binding.
    --
    -- -   @domain:{domain}@: The G Suite domain (primary) that represents all the users of that domain. For example, @google.com@ or @example.com@.
    members :: (Core.Maybe [Core.Text]),
    -- | Role that is assigned to @members@. For example, @roles\/viewer@, @roles\/editor@, or @roles\/owner@.
    role' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1Binding' with the minimum fields required to make a request.
newGoogleIamV1Binding ::
  GoogleIamV1Binding
newGoogleIamV1Binding =
  GoogleIamV1Binding
    { condition = Core.Nothing,
      members = Core.Nothing,
      role' = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1Binding where
  parseJSON =
    Core.withObject
      "GoogleIamV1Binding"
      ( \o ->
          GoogleIamV1Binding
            Core.<$> (o Core..:? "condition")
            Core.<*> (o Core..:? "members" Core..!= Core.mempty)
            Core.<*> (o Core..:? "role")
      )

instance Core.ToJSON GoogleIamV1Binding where
  toJSON GoogleIamV1Binding {..} =
    Core.object
      ( Core.catMaybes
          [ ("condition" Core..=) Core.<$> condition,
            ("members" Core..=) Core.<$> members,
            ("role" Core..=) Core.<$> role'
          ]
      )

-- | An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources.
--
-- A @Policy@ is a collection of @bindings@. A @binding@ binds one or more @members@ to a single @role@. Members can be user accounts, service accounts, Google groups, and domains (such as G Suite). A @role@ is a named list of permissions; each @role@ can be an IAM predefined role or a user-created custom role.
--
-- Optionally, a @binding@ can specify a @condition@, which is a logical expression that allows access to a resource only if the expression evaluates to @true@. A condition can add constraints based on attributes of the request, the resource, or both.
--
-- __JSON example:__
--
-- > {
-- >   "bindings": [
-- >     {
-- >       "role": "roles/resourcemanager.organizationAdmin",
-- >       "members": [
-- >         "user:mike@example.com",
-- >         "group:admins@example.com",
-- >         "domain:google.com",
-- >         "serviceAccount:my-project-id@appspot.gserviceaccount.com"
-- >       ]
-- >     },
-- >     {
-- >       "role": "roles/resourcemanager.organizationViewer",
-- >       "members": ["user:eve@example.com"],
-- >       "condition": {
-- >         "title": "expirable access",
-- >         "description": "Does not grant access after Sep 2020",
-- >         "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')",
-- >       }
-- >     }
-- >   ],
-- >   "etag": "BwWWja0YfJA=",
-- >   "version": 3
-- > }
--
-- __YAML example:__
--
-- > bindings:
-- > - members:
-- >   - user:mike@example.com
-- >   - group:admins@example.com
-- >   - domain:google.com
-- >   - serviceAccount:my-project-id@appspot.gserviceaccount.com
-- >   role: roles/resourcemanager.organizationAdmin
-- > - members:
-- >   - user:eve@example.com
-- >   role: roles/resourcemanager.organizationViewer
-- >   condition:
-- >     title: expirable access
-- >     description: Does not grant access after Sep 2020
-- >     expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
-- > - etag: BwWWja0YfJA=
-- > - version: 3
--
-- For a description of IAM and its features, see the <https://cloud.google.com/iam/docs/ IAM documentation>.
--
-- /See:/ 'newGoogleIamV1Policy' smart constructor.
data GoogleIamV1Policy = GoogleIamV1Policy
  { -- | Specifies cloud audit logging configuration for this policy.
    auditConfigs :: (Core.Maybe [GoogleIamV1AuditConfig]),
    -- | Associates a list of @members@ to a @role@. Optionally, may specify a @condition@ that determines how and when the @bindings@ are applied. Each of the @bindings@ must contain at least one member.
    bindings :: (Core.Maybe [GoogleIamV1Binding]),
    -- | @etag@ is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the @etag@ in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An @etag@ is returned in the response to @getIamPolicy@, and systems are expected to put that etag in the request to @setIamPolicy@ to ensure that their change will be applied to the same version of the policy.
    --
    -- __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    etag :: (Core.Maybe Core.Base64),
    -- | Specifies the format of the policy.
    --
    -- Valid values are @0@, @1@, and @3@. Requests that specify an invalid value are rejected.
    --
    -- Any operation that affects conditional role bindings must specify version @3@. This requirement applies to the following operations:
    --
    -- -   Getting a policy that includes a conditional role binding
    -- -   Adding a conditional role binding to a policy
    -- -   Changing a conditional role binding in a policy
    -- -   Removing any role binding, with or without a condition, from a policy that includes conditions
    --
    -- __Important:__ If you use IAM Conditions, you must include the @etag@ field whenever you call @setIamPolicy@. If you omit this field, then IAM allows you to overwrite a version @3@ policy with a version @1@ policy, and all of the conditions in the version @3@ policy are lost.
    --
    -- If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset.
    version :: (Core.Maybe Core.Int32)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1Policy' with the minimum fields required to make a request.
newGoogleIamV1Policy ::
  GoogleIamV1Policy
newGoogleIamV1Policy =
  GoogleIamV1Policy
    { auditConfigs = Core.Nothing,
      bindings = Core.Nothing,
      etag = Core.Nothing,
      version = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1Policy where
  parseJSON =
    Core.withObject
      "GoogleIamV1Policy"
      ( \o ->
          GoogleIamV1Policy
            Core.<$> (o Core..:? "auditConfigs" Core..!= Core.mempty)
            Core.<*> (o Core..:? "bindings" Core..!= Core.mempty)
            Core.<*> (o Core..:? "etag")
            Core.<*> (o Core..:? "version")
      )

instance Core.ToJSON GoogleIamV1Policy where
  toJSON GoogleIamV1Policy {..} =
    Core.object
      ( Core.catMaybes
          [ ("auditConfigs" Core..=) Core.<$> auditConfigs,
            ("bindings" Core..=) Core.<$> bindings,
            ("etag" Core..=) Core.<$> etag,
            ("version" Core..=) Core.<$> version
          ]
      )

-- | Request message for @SetIamPolicy@ method.
--
-- /See:/ 'newGoogleIamV1SetIamPolicyRequest' smart constructor.
data GoogleIamV1SetIamPolicyRequest = GoogleIamV1SetIamPolicyRequest
  { -- | REQUIRED: The complete policy to be applied to the @resource@. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Cloud Platform services (such as Projects) might reject them.
    policy :: (Core.Maybe GoogleIamV1Policy),
    -- | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: paths: \"bindings, etag\" This field is only used by Cloud IAM.
    updateMask :: (Core.Maybe Core.GFieldMask)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1SetIamPolicyRequest' with the minimum fields required to make a request.
newGoogleIamV1SetIamPolicyRequest ::
  GoogleIamV1SetIamPolicyRequest
newGoogleIamV1SetIamPolicyRequest =
  GoogleIamV1SetIamPolicyRequest
    { policy = Core.Nothing,
      updateMask = Core.Nothing
    }

instance Core.FromJSON GoogleIamV1SetIamPolicyRequest where
  parseJSON =
    Core.withObject
      "GoogleIamV1SetIamPolicyRequest"
      ( \o ->
          GoogleIamV1SetIamPolicyRequest
            Core.<$> (o Core..:? "policy")
            Core.<*> (o Core..:? "updateMask")
      )

instance Core.ToJSON GoogleIamV1SetIamPolicyRequest where
  toJSON GoogleIamV1SetIamPolicyRequest {..} =
    Core.object
      ( Core.catMaybes
          [ ("policy" Core..=) Core.<$> policy,
            ("updateMask" Core..=) Core.<$> updateMask
          ]
      )

-- | Request message for @TestIamPermissions@ method.
--
-- /See:/ 'newGoogleIamV1TestIamPermissionsRequest' smart constructor.
newtype GoogleIamV1TestIamPermissionsRequest = GoogleIamV1TestIamPermissionsRequest
  { -- | The set of permissions to check for the @resource@. Permissions with wildcards (such as \'/\' or \'storage./\') are not allowed. For more information see <https://cloud.google.com/iam/docs/overview#permissions IAM Overview>.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1TestIamPermissionsRequest' with the minimum fields required to make a request.
newGoogleIamV1TestIamPermissionsRequest ::
  GoogleIamV1TestIamPermissionsRequest
newGoogleIamV1TestIamPermissionsRequest =
  GoogleIamV1TestIamPermissionsRequest {permissions = Core.Nothing}

instance
  Core.FromJSON
    GoogleIamV1TestIamPermissionsRequest
  where
  parseJSON =
    Core.withObject
      "GoogleIamV1TestIamPermissionsRequest"
      ( \o ->
          GoogleIamV1TestIamPermissionsRequest
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleIamV1TestIamPermissionsRequest
  where
  toJSON GoogleIamV1TestIamPermissionsRequest {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | Response message for @TestIamPermissions@ method.
--
-- /See:/ 'newGoogleIamV1TestIamPermissionsResponse' smart constructor.
newtype GoogleIamV1TestIamPermissionsResponse = GoogleIamV1TestIamPermissionsResponse
  { -- | A subset of @TestPermissionsRequest.permissions@ that the caller is allowed.
    permissions :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleIamV1TestIamPermissionsResponse' with the minimum fields required to make a request.
newGoogleIamV1TestIamPermissionsResponse ::
  GoogleIamV1TestIamPermissionsResponse
newGoogleIamV1TestIamPermissionsResponse =
  GoogleIamV1TestIamPermissionsResponse {permissions = Core.Nothing}

instance
  Core.FromJSON
    GoogleIamV1TestIamPermissionsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleIamV1TestIamPermissionsResponse"
      ( \o ->
          GoogleIamV1TestIamPermissionsResponse
            Core.<$> (o Core..:? "permissions" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleIamV1TestIamPermissionsResponse
  where
  toJSON GoogleIamV1TestIamPermissionsResponse {..} =
    Core.object
      ( Core.catMaybes
          [("permissions" Core..=) Core.<$> permissions]
      )

-- | The request message for Operations.CancelOperation.
--
-- /See:/ 'newGoogleLongrunningCancelOperationRequest' smart constructor.
data GoogleLongrunningCancelOperationRequest = GoogleLongrunningCancelOperationRequest
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningCancelOperationRequest' with the minimum fields required to make a request.
newGoogleLongrunningCancelOperationRequest ::
  GoogleLongrunningCancelOperationRequest
newGoogleLongrunningCancelOperationRequest =
  GoogleLongrunningCancelOperationRequest

instance
  Core.FromJSON
    GoogleLongrunningCancelOperationRequest
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunningCancelOperationRequest"
      ( \o ->
          Core.pure GoogleLongrunningCancelOperationRequest
      )

instance
  Core.ToJSON
    GoogleLongrunningCancelOperationRequest
  where
  toJSON = Core.const Core.emptyObject

-- | The response message for Operations.ListOperations.
--
-- /See:/ 'newGoogleLongrunningListOperationsResponse' smart constructor.
data GoogleLongrunningListOperationsResponse = GoogleLongrunningListOperationsResponse
  { -- | The standard List next-page token.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | A list of operations that matches the specified filter in the request.
    operations :: (Core.Maybe [GoogleLongrunningOperation])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningListOperationsResponse' with the minimum fields required to make a request.
newGoogleLongrunningListOperationsResponse ::
  GoogleLongrunningListOperationsResponse
newGoogleLongrunningListOperationsResponse =
  GoogleLongrunningListOperationsResponse
    { nextPageToken = Core.Nothing,
      operations = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleLongrunningListOperationsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunningListOperationsResponse"
      ( \o ->
          GoogleLongrunningListOperationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "operations" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleLongrunningListOperationsResponse
  where
  toJSON GoogleLongrunningListOperationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("operations" Core..=) Core.<$> operations
          ]
      )

-- | This resource represents a long-running operation that is the result of a network API call.
--
-- /See:/ 'newGoogleLongrunningOperation' smart constructor.
data GoogleLongrunningOperation = GoogleLongrunningOperation
  { -- | If the value is @false@, it means the operation is still in progress. If @true@, the operation is completed, and either @error@ or @response@ is available.
    done :: (Core.Maybe Core.Bool),
    -- | The error result of the operation in case of failure or cancellation.
    error :: (Core.Maybe GoogleRpcStatus),
    -- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
    metadata :: (Core.Maybe GoogleLongrunningOperation_Metadata),
    -- | The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the @name@ should be a resource name ending with @operations\/{unique_id}@.
    name :: (Core.Maybe Core.Text),
    -- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
    response :: (Core.Maybe GoogleLongrunningOperation_Response)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation' with the minimum fields required to make a request.
newGoogleLongrunningOperation ::
  GoogleLongrunningOperation
newGoogleLongrunningOperation =
  GoogleLongrunningOperation
    { done = Core.Nothing,
      error = Core.Nothing,
      metadata = Core.Nothing,
      name = Core.Nothing,
      response = Core.Nothing
    }

instance Core.FromJSON GoogleLongrunningOperation where
  parseJSON =
    Core.withObject
      "GoogleLongrunningOperation"
      ( \o ->
          GoogleLongrunningOperation
            Core.<$> (o Core..:? "done")
            Core.<*> (o Core..:? "error")
            Core.<*> (o Core..:? "metadata")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "response")
      )

instance Core.ToJSON GoogleLongrunningOperation where
  toJSON GoogleLongrunningOperation {..} =
    Core.object
      ( Core.catMaybes
          [ ("done" Core..=) Core.<$> done,
            ("error" Core..=) Core.<$> error,
            ("metadata" Core..=) Core.<$> metadata,
            ("name" Core..=) Core.<$> name,
            ("response" Core..=) Core.<$> response
          ]
      )

-- | Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
--
-- /See:/ 'newGoogleLongrunningOperation_Metadata' smart constructor.
newtype GoogleLongrunningOperation_Metadata = GoogleLongrunningOperation_Metadata
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Metadata' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Metadata ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleLongrunningOperation_Metadata
newGoogleLongrunningOperation_Metadata addtional =
  GoogleLongrunningOperation_Metadata {addtional = addtional}

instance
  Core.FromJSON
    GoogleLongrunningOperation_Metadata
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunningOperation_Metadata"
      ( \o ->
          GoogleLongrunningOperation_Metadata
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleLongrunningOperation_Metadata
  where
  toJSON GoogleLongrunningOperation_Metadata {..} =
    Core.toJSON addtional

-- | The normal response of the operation in case of success. If the original method returns no data on success, such as @Delete@, the response is @google.protobuf.Empty@. If the original method is standard @Get@\/@Create@\/@Update@, the response should be the resource. For other methods, the response should have the type @XxxResponse@, where @Xxx@ is the original method name. For example, if the original method name is @TakeSnapshot()@, the inferred response type is @TakeSnapshotResponse@.
--
-- /See:/ 'newGoogleLongrunningOperation_Response' smart constructor.
newtype GoogleLongrunningOperation_Response = GoogleLongrunningOperation_Response
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleLongrunningOperation_Response' with the minimum fields required to make a request.
newGoogleLongrunningOperation_Response ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleLongrunningOperation_Response
newGoogleLongrunningOperation_Response addtional =
  GoogleLongrunningOperation_Response {addtional = addtional}

instance
  Core.FromJSON
    GoogleLongrunningOperation_Response
  where
  parseJSON =
    Core.withObject
      "GoogleLongrunningOperation_Response"
      ( \o ->
          GoogleLongrunningOperation_Response
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleLongrunningOperation_Response
  where
  toJSON GoogleLongrunningOperation_Response {..} =
    Core.toJSON addtional

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance:
--
-- > service Foo {
-- >   rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
-- > }
--
-- The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newGoogleProtobufEmpty' smart constructor.
data GoogleProtobufEmpty = GoogleProtobufEmpty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleProtobufEmpty' with the minimum fields required to make a request.
newGoogleProtobufEmpty ::
  GoogleProtobufEmpty
newGoogleProtobufEmpty = GoogleProtobufEmpty

instance Core.FromJSON GoogleProtobufEmpty where
  parseJSON =
    Core.withObject
      "GoogleProtobufEmpty"
      (\o -> Core.pure GoogleProtobufEmpty)

instance Core.ToJSON GoogleProtobufEmpty where
  toJSON = Core.const Core.emptyObject

-- | The @Status@ type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by <https://github.com/grpc gRPC>. Each @Status@ message contains three pieces of data: error code, error message, and error details.
--
-- You can find out more about this error model and how to work with it in the <https://cloud.google.com/apis/design/errors API Design Guide>.
--
-- /See:/ 'newGoogleRpcStatus' smart constructor.
data GoogleRpcStatus = GoogleRpcStatus
  { -- | The status code, which should be an enum value of google.rpc.Code.
    code :: (Core.Maybe Core.Int32),
    -- | A list of messages that carry the error details. There is a common set of message types for APIs to use.
    details :: (Core.Maybe [GoogleRpcStatus_DetailsItem]),
    -- | A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
    message :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus' with the minimum fields required to make a request.
newGoogleRpcStatus ::
  GoogleRpcStatus
newGoogleRpcStatus =
  GoogleRpcStatus
    { code = Core.Nothing,
      details = Core.Nothing,
      message = Core.Nothing
    }

instance Core.FromJSON GoogleRpcStatus where
  parseJSON =
    Core.withObject
      "GoogleRpcStatus"
      ( \o ->
          GoogleRpcStatus
            Core.<$> (o Core..:? "code")
            Core.<*> (o Core..:? "details" Core..!= Core.mempty)
            Core.<*> (o Core..:? "message")
      )

instance Core.ToJSON GoogleRpcStatus where
  toJSON GoogleRpcStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("code" Core..=) Core.<$> code,
            ("details" Core..=) Core.<$> details,
            ("message" Core..=) Core.<$> message
          ]
      )

--
-- /See:/ 'newGoogleRpcStatus_DetailsItem' smart constructor.
newtype GoogleRpcStatus_DetailsItem = GoogleRpcStatus_DetailsItem
  { -- | Properties of the object. Contains field \@type with type URL.
    addtional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleRpcStatus_DetailsItem' with the minimum fields required to make a request.
newGoogleRpcStatus_DetailsItem ::
  -- |  Properties of the object. Contains field \@type with type URL. See 'addtional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleRpcStatus_DetailsItem
newGoogleRpcStatus_DetailsItem addtional =
  GoogleRpcStatus_DetailsItem {addtional = addtional}

instance Core.FromJSON GoogleRpcStatus_DetailsItem where
  parseJSON =
    Core.withObject
      "GoogleRpcStatus_DetailsItem"
      ( \o ->
          GoogleRpcStatus_DetailsItem
            Core.<$> (Core.parseJSONObject o)
      )

instance Core.ToJSON GoogleRpcStatus_DetailsItem where
  toJSON GoogleRpcStatus_DetailsItem {..} =
    Core.toJSON addtional

-- | Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https:\/\/github.com\/google\/cel-spec.
--
-- Example (Comparison):
--
-- > title: "Summary size limit"
-- > description: "Determines if a summary is less than 100 chars"
-- > expression: "document.summary.size() < 100"
--
-- Example (Equality):
--
-- > title: "Requestor is owner"
-- > description: "Determines if requestor is the document owner"
-- > expression: "document.owner == request.auth.claims.email"
--
-- Example (Logic):
--
-- > title: "Public documents"
-- > description: "Determine whether the document should be publicly visible"
-- > expression: "document.type != 'private' && document.type != 'internal'"
--
-- Example (Data Manipulation):
--
-- > title: "Notification string"
-- > description: "Create a notification string with a timestamp."
-- > expression: "'New message received at ' + string(document.create_time)"
--
-- The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.
--
-- /See:/ 'newGoogleTypeExpr' smart constructor.
data GoogleTypeExpr = GoogleTypeExpr
  { -- | Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.
    description :: (Core.Maybe Core.Text),
    -- | Textual representation of an expression in Common Expression Language syntax.
    expression :: (Core.Maybe Core.Text),
    -- | Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.
    location :: (Core.Maybe Core.Text),
    -- | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleTypeExpr' with the minimum fields required to make a request.
newGoogleTypeExpr ::
  GoogleTypeExpr
newGoogleTypeExpr =
  GoogleTypeExpr
    { description = Core.Nothing,
      expression = Core.Nothing,
      location = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON GoogleTypeExpr where
  parseJSON =
    Core.withObject
      "GoogleTypeExpr"
      ( \o ->
          GoogleTypeExpr
            Core.<$> (o Core..:? "description")
            Core.<*> (o Core..:? "expression")
            Core.<*> (o Core..:? "location")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON GoogleTypeExpr where
  toJSON GoogleTypeExpr {..} =
    Core.object
      ( Core.catMaybes
          [ ("description" Core..=) Core.<$> description,
            ("expression" Core..=) Core.<$> expression,
            ("location" Core..=) Core.<$> location,
            ("title" Core..=) Core.<$> title
          ]
      )
