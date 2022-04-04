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
-- Module      : Gogol.CloudPrivateCatalog.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.CloudPrivateCatalog.Internal.Product
  ( -- * GoogleCloudPrivatecatalogV1beta1Catalog
    GoogleCloudPrivatecatalogV1beta1Catalog (..),
    newGoogleCloudPrivatecatalogV1beta1Catalog,

    -- * GoogleCloudPrivatecatalogV1beta1Product
    GoogleCloudPrivatecatalogV1beta1Product (..),
    newGoogleCloudPrivatecatalogV1beta1Product,

    -- * GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata
    GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata (..),
    newGoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata,

    -- * GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
    GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse (..),
    newGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse,

    -- * GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
    GoogleCloudPrivatecatalogV1beta1SearchProductsResponse (..),
    newGoogleCloudPrivatecatalogV1beta1SearchProductsResponse,

    -- * GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
    GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse (..),
    newGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse,

    -- * GoogleCloudPrivatecatalogV1beta1Version
    GoogleCloudPrivatecatalogV1beta1Version (..),
    newGoogleCloudPrivatecatalogV1beta1Version,

    -- * GoogleCloudPrivatecatalogV1beta1Version_Asset
    GoogleCloudPrivatecatalogV1beta1Version_Asset (..),
    newGoogleCloudPrivatecatalogV1beta1Version_Asset,
  )
where

import Gogol.CloudPrivateCatalog.Internal.Sum
import qualified Gogol.Prelude as Core

-- | The readonly representation of a catalog computed with a given resource context.
--
-- /See:/ 'newGoogleCloudPrivatecatalogV1beta1Catalog' smart constructor.
data GoogleCloudPrivatecatalogV1beta1Catalog = GoogleCloudPrivatecatalogV1beta1Catalog
  { -- | Output only. The time when the catalog was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The description of the catalog.
    description :: (Core.Maybe Core.Text),
    -- | Output only. The descriptive name of the catalog as it appears in UIs.
    displayName :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the target catalog, in the format of \`catalogs\/{catalog_id}\'.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The time when the catalog was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1Catalog' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogV1beta1Catalog ::
  GoogleCloudPrivatecatalogV1beta1Catalog
newGoogleCloudPrivatecatalogV1beta1Catalog =
  GoogleCloudPrivatecatalogV1beta1Catalog
    { createTime = Core.Nothing,
      description = Core.Nothing,
      displayName = Core.Nothing,
      name = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogV1beta1Catalog
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogV1beta1Catalog"
      ( \o ->
          GoogleCloudPrivatecatalogV1beta1Catalog
            Core.<$> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "displayName")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogV1beta1Catalog
  where
  toJSON GoogleCloudPrivatecatalogV1beta1Catalog {..} =
    Core.object
      ( Core.catMaybes
          [ ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("displayName" Core..=) Core.<$> displayName,
            ("name" Core..=) Core.<$> name,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | The readonly representation of a product computed with a given resource context.
--
-- /See:/ 'newGoogleCloudPrivatecatalogV1beta1Product' smart constructor.
data GoogleCloudPrivatecatalogV1beta1Product = GoogleCloudPrivatecatalogV1beta1Product
  { -- | Output only. The type of the product asset. It can be one of the following values:
    --
    -- -   @google.deploymentmanager.Template@
    -- -   @google.cloudprivatecatalog.ListingOnly@
    assetType :: (Core.Maybe Core.Text),
    -- | Output only. The time when the product was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The display metadata to describe the product. The JSON schema of the metadata differs by Product.asset_type. When the type is @google.deploymentmanager.Template@, the schema is as follows:
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
          GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata
      ),
    -- | Output only. The icon URI of the product.
    iconUri :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the target product, in the format of \`products\/a-z*[a-z0-9]\'.
    --
    -- A unique identifier for the product under a catalog.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The time when the product was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1Product' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogV1beta1Product ::
  GoogleCloudPrivatecatalogV1beta1Product
newGoogleCloudPrivatecatalogV1beta1Product =
  GoogleCloudPrivatecatalogV1beta1Product
    { assetType = Core.Nothing,
      createTime = Core.Nothing,
      displayMetadata = Core.Nothing,
      iconUri = Core.Nothing,
      name = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogV1beta1Product
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogV1beta1Product"
      ( \o ->
          GoogleCloudPrivatecatalogV1beta1Product
            Core.<$> (o Core..:? "assetType")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "displayMetadata")
            Core.<*> (o Core..:? "iconUri")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogV1beta1Product
  where
  toJSON GoogleCloudPrivatecatalogV1beta1Product {..} =
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

-- | Output only. The display metadata to describe the product. The JSON schema of the metadata differs by Product.asset_type. When the type is @google.deploymentmanager.Template@, the schema is as follows:
--
-- \`\`\` \"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type: object properties: name: type: string minLength: 1 maxLength: 64 description: type: string minLength: 1 maxLength: 2048 tagline: type: string minLength: 1 maxLength: 100 support/info: type: string minLength: 1 maxLength: 2048 creator: type: string minLength: 1 maxLength: 100 documentation: type: array items: type: object properties: url: type: string pattern: \"^(https?):\/\/[-a-zA-Z0-9+&\@#\/%?=~/|!:,.;]*[-a-zA-Z0-9+&\@#\/%=~_|]\" title: type: string minLength: 1 maxLength: 64 description: type: string minLength: 1 maxLength: 2048 required: - name - description additionalProperties: false
--
-- \`\`\`
--
-- When the asset type is @google.cloudprivatecatalog.ListingOnly@, the schema is as follows:
--
-- @\"$schema\": http:\/\/json-schema.org\/draft-04\/schema# type: object properties:   name:     type: string     minLength: 1     maxLength: 64   description:     type: string     minLength: 1     maxLength: 2048   tagline:     type: string     minLength: 1     maxLength: 100   support_info:     type: string     minLength: 1     maxLength: 2048   creator:     type: string     minLength: 1     maxLength: 100   documentation:     type: array     items:       type: object       properties:         url:           type: string           pattern:           \"^(https?):\/\/[-a-zA-Z0-9+&\@#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\@#\/%=~_|]\"         title:           type: string           minLength: 1           maxLength: 64         description:           type: string           minLength: 1           maxLength: 2048   signup_url:     type: string     pattern:     \"^(https?):\/\/[-a-zA-Z0-9+&\@#\/%?=~_|!:,.;]*[-a-zA-Z0-9+&\@#\/%=~_|]\" required: - name - description - signup_url additionalProperties: false@
--
-- /See:/ 'newGoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata' smart constructor.
newtype GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata = GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata
newGoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata additional =
  GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata
    { additional = additional
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata"
      ( \o ->
          GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata
  where
  toJSON
    GoogleCloudPrivatecatalogV1beta1Product_DisplayMetadata {..} =
      Core.toJSON additional

-- | Response message for PrivateCatalog.SearchCatalogs.
--
-- /See:/ 'newGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse' smart constructor.
data GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse = GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
  { -- | The @Catalog@s computed from the resource context.
    catalogs :: (Core.Maybe [GoogleCloudPrivatecatalogV1beta1Catalog]),
    -- | A pagination token returned from a previous call to SearchCatalogs that indicates from where listing should continue. This field is optional.
    nextPageToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse ::
  GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
newGoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse =
  GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
    { catalogs = Core.Nothing,
      nextPageToken = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse"
      ( \o ->
          GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
            Core.<$> (o Core..:? "catalogs" Core..!= Core.mempty)
              Core.<*> (o Core..:? "nextPageToken")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse
  where
  toJSON
    GoogleCloudPrivatecatalogV1beta1SearchCatalogsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("catalogs" Core..=) Core.<$> catalogs,
              ("nextPageToken" Core..=) Core.<$> nextPageToken
            ]
        )

-- | Response message for PrivateCatalog.SearchProducts.
--
-- /See:/ 'newGoogleCloudPrivatecatalogV1beta1SearchProductsResponse' smart constructor.
data GoogleCloudPrivatecatalogV1beta1SearchProductsResponse = GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
  { -- | A pagination token returned from a previous call to SearchProducts that indicates from where listing should continue. This field is optional.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The @Product@ resources computed from the resource context.
    products :: (Core.Maybe [GoogleCloudPrivatecatalogV1beta1Product])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1SearchProductsResponse' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogV1beta1SearchProductsResponse ::
  GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
newGoogleCloudPrivatecatalogV1beta1SearchProductsResponse =
  GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
    { nextPageToken = Core.Nothing,
      products = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogV1beta1SearchProductsResponse"
      ( \o ->
          GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
            Core.<$> (o Core..:? "nextPageToken")
              Core.<*> (o Core..:? "products" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogV1beta1SearchProductsResponse
  where
  toJSON
    GoogleCloudPrivatecatalogV1beta1SearchProductsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
              ("products" Core..=) Core.<$> products
            ]
        )

-- | Response message for PrivateCatalog.SearchVersions.
--
-- /See:/ 'newGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse' smart constructor.
data GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse = GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
  { -- | A pagination token returned from a previous call to SearchVersions that indicates from where the listing should continue. This field is optional.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The @Version@ resources computed from the resource context.
    versions :: (Core.Maybe [GoogleCloudPrivatecatalogV1beta1Version])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse ::
  GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
newGoogleCloudPrivatecatalogV1beta1SearchVersionsResponse =
  GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
    { nextPageToken = Core.Nothing,
      versions = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse"
      ( \o ->
          GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
            Core.<$> (o Core..:? "nextPageToken")
              Core.<*> (o Core..:? "versions" Core..!= Core.mempty)
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse
  where
  toJSON
    GoogleCloudPrivatecatalogV1beta1SearchVersionsResponse {..} =
      Core.object
        ( Core.catMaybes
            [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
              ("versions" Core..=) Core.<$> versions
            ]
        )

-- | The consumer representation of a version which is a child resource under a @Product@ with asset data.
--
-- /See:/ 'newGoogleCloudPrivatecatalogV1beta1Version' smart constructor.
data GoogleCloudPrivatecatalogV1beta1Version = GoogleCloudPrivatecatalogV1beta1Version
  { -- | Output only. The asset which has been validated and is ready to be provisioned. See google.cloud.privatecatalogproducer.v1beta.Version.asset for details.
    asset :: (Core.Maybe GoogleCloudPrivatecatalogV1beta1Version_Asset),
    -- | Output only. The time when the version was created.
    createTime :: (Core.Maybe Core.DateTime),
    -- | Output only. The user-supplied description of the version. Maximum of 256 characters.
    description :: (Core.Maybe Core.Text),
    -- | Output only. The resource name of the version, in the format \`catalogs\/{catalog/id}\/products\/{product/id}\/versions\/a-z*[a-z0-9]\'.
    --
    -- A unique identifier for the version under a product.
    name :: (Core.Maybe Core.Text),
    -- | Output only. The time when the version was last updated.
    updateTime :: (Core.Maybe Core.DateTime)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1Version' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogV1beta1Version ::
  GoogleCloudPrivatecatalogV1beta1Version
newGoogleCloudPrivatecatalogV1beta1Version =
  GoogleCloudPrivatecatalogV1beta1Version
    { asset = Core.Nothing,
      createTime = Core.Nothing,
      description = Core.Nothing,
      name = Core.Nothing,
      updateTime = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogV1beta1Version
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogV1beta1Version"
      ( \o ->
          GoogleCloudPrivatecatalogV1beta1Version
            Core.<$> (o Core..:? "asset")
            Core.<*> (o Core..:? "createTime")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "updateTime")
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogV1beta1Version
  where
  toJSON GoogleCloudPrivatecatalogV1beta1Version {..} =
    Core.object
      ( Core.catMaybes
          [ ("asset" Core..=) Core.<$> asset,
            ("createTime" Core..=) Core.<$> createTime,
            ("description" Core..=) Core.<$> description,
            ("name" Core..=) Core.<$> name,
            ("updateTime" Core..=) Core.<$> updateTime
          ]
      )

-- | Output only. The asset which has been validated and is ready to be provisioned. See google.cloud.privatecatalogproducer.v1beta.Version.asset for details.
--
-- /See:/ 'newGoogleCloudPrivatecatalogV1beta1Version_Asset' smart constructor.
newtype GoogleCloudPrivatecatalogV1beta1Version_Asset = GoogleCloudPrivatecatalogV1beta1Version_Asset
  { -- | Properties of the object.
    additional :: (Core.HashMap Core.Text Core.Value)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleCloudPrivatecatalogV1beta1Version_Asset' with the minimum fields required to make a request.
newGoogleCloudPrivatecatalogV1beta1Version_Asset ::
  -- |  Properties of the object. See 'additional'.
  Core.HashMap Core.Text Core.Value ->
  GoogleCloudPrivatecatalogV1beta1Version_Asset
newGoogleCloudPrivatecatalogV1beta1Version_Asset additional =
  GoogleCloudPrivatecatalogV1beta1Version_Asset {additional = additional}

instance
  Core.FromJSON
    GoogleCloudPrivatecatalogV1beta1Version_Asset
  where
  parseJSON =
    Core.withObject
      "GoogleCloudPrivatecatalogV1beta1Version_Asset"
      ( \o ->
          GoogleCloudPrivatecatalogV1beta1Version_Asset
            Core.<$> (Core.parseJSONObject o)
      )

instance
  Core.ToJSON
    GoogleCloudPrivatecatalogV1beta1Version_Asset
  where
  toJSON
    GoogleCloudPrivatecatalogV1beta1Version_Asset {..} =
      Core.toJSON additional
