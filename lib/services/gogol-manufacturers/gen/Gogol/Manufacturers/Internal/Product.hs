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
-- Module      : Gogol.Manufacturers.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Manufacturers.Internal.Product
  ( -- * Attributes
    Attributes (..),
    newAttributes,

    -- * Capacity
    Capacity (..),
    newCapacity,

    -- * Count
    Count (..),
    newCount,

    -- * DestinationStatus
    DestinationStatus (..),
    newDestinationStatus,

    -- * Empty
    Empty (..),
    newEmpty,

    -- * FeatureDescription
    FeatureDescription (..),
    newFeatureDescription,

    -- * Image
    Image (..),
    newImage,

    -- * Issue
    Issue (..),
    newIssue,

    -- * ListProductsResponse
    ListProductsResponse (..),
    newListProductsResponse,

    -- * Price
    Price (..),
    newPrice,

    -- * Product
    Product (..),
    newProduct,

    -- * ProductDetail
    ProductDetail (..),
    newProductDetail,
  )
where

import Gogol.Manufacturers.Internal.Sum
import qualified Gogol.Prelude as Core

-- | Attributes of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116.
--
-- /See:/ 'newAttributes' smart constructor.
data Attributes = Attributes
  { -- | The additional images of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#addlimage.
    additionalImageLink :: (Core.Maybe [Image]),
    -- | The target age group of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#agegroup.
    ageGroup :: (Core.Maybe Core.Text),
    -- | The brand name of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#brand.
    brand :: (Core.Maybe Core.Text),
    -- | The capacity of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#capacity.
    capacity :: (Core.Maybe Capacity),
    -- | The color of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#color.
    color :: (Core.Maybe Core.Text),
    -- | The count of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#count.
    count :: (Core.Maybe Count),
    -- | The description of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#description.
    description :: (Core.Maybe Core.Text),
    -- | The disclosure date of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#disclosure.
    disclosureDate :: (Core.Maybe Core.Text),
    -- | A list of excluded destinations such as \"ClientExport\", \"ClientShoppingCatalog\" or \"PartnerShoppingCatalog\". For more information, see https:\/\/support.google.com\/manufacturers\/answer\/7443550
    excludedDestination :: (Core.Maybe [Core.Text]),
    -- | The rich format description of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#featuredesc.
    featureDescription :: (Core.Maybe [FeatureDescription]),
    -- | The flavor of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#flavor.
    flavor :: (Core.Maybe Core.Text),
    -- | The format of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#format.
    format :: (Core.Maybe Core.Text),
    -- | The target gender of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#gender.
    gender :: (Core.Maybe Core.Text),
    -- | The Global Trade Item Number (GTIN) of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#gtin.
    gtin :: (Core.Maybe [Core.Text]),
    -- | The image of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#image.
    imageLink :: (Core.Maybe Image),
    -- | A list of included destinations such as \"ClientExport\", \"ClientShoppingCatalog\" or \"PartnerShoppingCatalog\". For more information, see https:\/\/support.google.com\/manufacturers\/answer\/7443550
    includedDestination :: (Core.Maybe [Core.Text]),
    -- | The item group id of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#itemgroupid.
    itemGroupId :: (Core.Maybe Core.Text),
    -- | The material of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#material.
    material :: (Core.Maybe Core.Text),
    -- | The Manufacturer Part Number (MPN) of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#mpn.
    mpn :: (Core.Maybe Core.Text),
    -- | The pattern of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#pattern.
    pattern' :: (Core.Maybe Core.Text),
    -- | The details of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#productdetail.
    productDetail :: (Core.Maybe [ProductDetail]),
    -- | The product highlights. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/10066942
    productHighlight :: (Core.Maybe [Core.Text]),
    -- | The name of the group of products related to the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#productline.
    productLine :: (Core.Maybe Core.Text),
    -- | The canonical name of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#productname.
    productName :: (Core.Maybe Core.Text),
    -- | The URL of the detail page of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#productpage.
    productPageUrl :: (Core.Maybe Core.Text),
    -- | The type or category of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#producttype.
    productType :: (Core.Maybe [Core.Text]),
    -- | The release date of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#release.
    releaseDate :: (Core.Maybe Core.Text),
    -- | Rich product content. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/9389865
    richProductContent :: (Core.Maybe [Core.Text]),
    -- | The scent of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#scent.
    scent :: (Core.Maybe Core.Text),
    -- | The size of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#size.
    size :: (Core.Maybe Core.Text),
    -- | The size system of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#sizesystem.
    sizeSystem :: (Core.Maybe Core.Text),
    -- | The size type of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#sizetype.
    sizeType :: (Core.Maybe [Core.Text]),
    -- | The suggested retail price (MSRP) of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#price.
    suggestedRetailPrice :: (Core.Maybe Price),
    -- | The target client id. Should only be used in the accounts of the data partners. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/10857344
    targetClientId :: (Core.Maybe Core.Text),
    -- | The theme of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#theme.
    theme :: (Core.Maybe Core.Text),
    -- | The title of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#title.
    title :: (Core.Maybe Core.Text),
    -- | The videos of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#video.
    videoLink :: (Core.Maybe [Core.Text])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Attributes' with the minimum fields required to make a request.
newAttributes ::
  Attributes
newAttributes =
  Attributes
    { additionalImageLink = Core.Nothing,
      ageGroup = Core.Nothing,
      brand = Core.Nothing,
      capacity = Core.Nothing,
      color = Core.Nothing,
      count = Core.Nothing,
      description = Core.Nothing,
      disclosureDate = Core.Nothing,
      excludedDestination = Core.Nothing,
      featureDescription = Core.Nothing,
      flavor = Core.Nothing,
      format = Core.Nothing,
      gender = Core.Nothing,
      gtin = Core.Nothing,
      imageLink = Core.Nothing,
      includedDestination = Core.Nothing,
      itemGroupId = Core.Nothing,
      material = Core.Nothing,
      mpn = Core.Nothing,
      pattern' = Core.Nothing,
      productDetail = Core.Nothing,
      productHighlight = Core.Nothing,
      productLine = Core.Nothing,
      productName = Core.Nothing,
      productPageUrl = Core.Nothing,
      productType = Core.Nothing,
      releaseDate = Core.Nothing,
      richProductContent = Core.Nothing,
      scent = Core.Nothing,
      size = Core.Nothing,
      sizeSystem = Core.Nothing,
      sizeType = Core.Nothing,
      suggestedRetailPrice = Core.Nothing,
      targetClientId = Core.Nothing,
      theme = Core.Nothing,
      title = Core.Nothing,
      videoLink = Core.Nothing
    }

instance Core.FromJSON Attributes where
  parseJSON =
    Core.withObject
      "Attributes"
      ( \o ->
          Attributes
            Core.<$> (o Core..:? "additionalImageLink")
            Core.<*> (o Core..:? "ageGroup")
            Core.<*> (o Core..:? "brand")
            Core.<*> (o Core..:? "capacity")
            Core.<*> (o Core..:? "color")
            Core.<*> (o Core..:? "count")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "disclosureDate")
            Core.<*> (o Core..:? "excludedDestination")
            Core.<*> (o Core..:? "featureDescription")
            Core.<*> (o Core..:? "flavor")
            Core.<*> (o Core..:? "format")
            Core.<*> (o Core..:? "gender")
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "imageLink")
            Core.<*> (o Core..:? "includedDestination")
            Core.<*> (o Core..:? "itemGroupId")
            Core.<*> (o Core..:? "material")
            Core.<*> (o Core..:? "mpn")
            Core.<*> (o Core..:? "pattern")
            Core.<*> (o Core..:? "productDetail")
            Core.<*> (o Core..:? "productHighlight")
            Core.<*> (o Core..:? "productLine")
            Core.<*> (o Core..:? "productName")
            Core.<*> (o Core..:? "productPageUrl")
            Core.<*> (o Core..:? "productType")
            Core.<*> (o Core..:? "releaseDate")
            Core.<*> (o Core..:? "richProductContent")
            Core.<*> (o Core..:? "scent")
            Core.<*> (o Core..:? "size")
            Core.<*> (o Core..:? "sizeSystem")
            Core.<*> (o Core..:? "sizeType")
            Core.<*> (o Core..:? "suggestedRetailPrice")
            Core.<*> (o Core..:? "targetClientId")
            Core.<*> (o Core..:? "theme")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "videoLink")
      )

instance Core.ToJSON Attributes where
  toJSON Attributes {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalImageLink" Core..=)
              Core.<$> additionalImageLink,
            ("ageGroup" Core..=) Core.<$> ageGroup,
            ("brand" Core..=) Core.<$> brand,
            ("capacity" Core..=) Core.<$> capacity,
            ("color" Core..=) Core.<$> color,
            ("count" Core..=) Core.<$> count,
            ("description" Core..=) Core.<$> description,
            ("disclosureDate" Core..=) Core.<$> disclosureDate,
            ("excludedDestination" Core..=)
              Core.<$> excludedDestination,
            ("featureDescription" Core..=)
              Core.<$> featureDescription,
            ("flavor" Core..=) Core.<$> flavor,
            ("format" Core..=) Core.<$> format,
            ("gender" Core..=) Core.<$> gender,
            ("gtin" Core..=) Core.<$> gtin,
            ("imageLink" Core..=) Core.<$> imageLink,
            ("includedDestination" Core..=)
              Core.<$> includedDestination,
            ("itemGroupId" Core..=) Core.<$> itemGroupId,
            ("material" Core..=) Core.<$> material,
            ("mpn" Core..=) Core.<$> mpn,
            ("pattern" Core..=) Core.<$> pattern',
            ("productDetail" Core..=) Core.<$> productDetail,
            ("productHighlight" Core..=)
              Core.<$> productHighlight,
            ("productLine" Core..=) Core.<$> productLine,
            ("productName" Core..=) Core.<$> productName,
            ("productPageUrl" Core..=) Core.<$> productPageUrl,
            ("productType" Core..=) Core.<$> productType,
            ("releaseDate" Core..=) Core.<$> releaseDate,
            ("richProductContent" Core..=)
              Core.<$> richProductContent,
            ("scent" Core..=) Core.<$> scent,
            ("size" Core..=) Core.<$> size,
            ("sizeSystem" Core..=) Core.<$> sizeSystem,
            ("sizeType" Core..=) Core.<$> sizeType,
            ("suggestedRetailPrice" Core..=)
              Core.<$> suggestedRetailPrice,
            ("targetClientId" Core..=) Core.<$> targetClientId,
            ("theme" Core..=) Core.<$> theme,
            ("title" Core..=) Core.<$> title,
            ("videoLink" Core..=) Core.<$> videoLink
          ]
      )

-- | The capacity of a product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#capacity.
--
-- /See:/ 'newCapacity' smart constructor.
data Capacity = Capacity
  { -- | The unit of the capacity, i.e., MB, GB, or TB.
    unit :: (Core.Maybe Core.Text),
    -- | The numeric value of the capacity.
    value :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Capacity' with the minimum fields required to make a request.
newCapacity ::
  Capacity
newCapacity = Capacity {unit = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Capacity where
  parseJSON =
    Core.withObject
      "Capacity"
      ( \o ->
          Capacity
            Core.<$> (o Core..:? "unit")
            Core.<*> ( o Core..:? "value"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON Capacity where
  toJSON Capacity {..} =
    Core.object
      ( Core.catMaybes
          [ ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.. Core.AsText Core.<$> value
          ]
      )

-- | The number of products in a single package. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#count.
--
-- /See:/ 'newCount' smart constructor.
data Count = Count
  { -- | The unit in which these products are counted.
    unit :: (Core.Maybe Core.Text),
    -- | The numeric value of the number of products in a package.
    value :: (Core.Maybe Core.Int64)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Count' with the minimum fields required to make a request.
newCount ::
  Count
newCount = Count {unit = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Count where
  parseJSON =
    Core.withObject
      "Count"
      ( \o ->
          Count
            Core.<$> (o Core..:? "unit")
            Core.<*> ( o Core..:? "value"
                         Core.<&> Core.fmap Core.fromAsText
                     )
      )

instance Core.ToJSON Count where
  toJSON Count {..} =
    Core.object
      ( Core.catMaybes
          [ ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.. Core.AsText Core.<$> value
          ]
      )

-- | The destination status.
--
-- /See:/ 'newDestinationStatus' smart constructor.
data DestinationStatus = DestinationStatus
  { -- | The name of the destination.
    destination :: (Core.Maybe Core.Text),
    -- | The status of the destination.
    status :: (Core.Maybe DestinationStatus_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DestinationStatus' with the minimum fields required to make a request.
newDestinationStatus ::
  DestinationStatus
newDestinationStatus =
  DestinationStatus {destination = Core.Nothing, status = Core.Nothing}

instance Core.FromJSON DestinationStatus where
  parseJSON =
    Core.withObject
      "DestinationStatus"
      ( \o ->
          DestinationStatus
            Core.<$> (o Core..:? "destination")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON DestinationStatus where
  toJSON DestinationStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("destination" Core..=) Core.<$> destination,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON representation for @Empty@ is empty JSON object @{}@.
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON =
    Core.withObject "Empty" (\o -> Core.pure Empty)

instance Core.ToJSON Empty where
  toJSON = Core.const Core.emptyObject

-- | A feature description of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#featuredesc.
--
-- /See:/ 'newFeatureDescription' smart constructor.
data FeatureDescription = FeatureDescription
  { -- | A short description of the feature.
    headline :: (Core.Maybe Core.Text),
    -- | An optional image describing the feature.
    image :: (Core.Maybe Image),
    -- | A detailed description of the feature.
    text :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FeatureDescription' with the minimum fields required to make a request.
newFeatureDescription ::
  FeatureDescription
newFeatureDescription =
  FeatureDescription
    { headline = Core.Nothing,
      image = Core.Nothing,
      text = Core.Nothing
    }

instance Core.FromJSON FeatureDescription where
  parseJSON =
    Core.withObject
      "FeatureDescription"
      ( \o ->
          FeatureDescription
            Core.<$> (o Core..:? "headline")
            Core.<*> (o Core..:? "image")
            Core.<*> (o Core..:? "text")
      )

instance Core.ToJSON FeatureDescription where
  toJSON FeatureDescription {..} =
    Core.object
      ( Core.catMaybes
          [ ("headline" Core..=) Core.<$> headline,
            ("image" Core..=) Core.<$> image,
            ("text" Core..=) Core.<$> text
          ]
      )

-- | An image.
--
-- /See:/ 'newImage' smart constructor.
data Image = Image
  { -- | The URL of the image. For crawled images, this is the provided URL. For uploaded images, this is a serving URL from Google if the image has been processed successfully.
    imageUrl :: (Core.Maybe Core.Text),
    -- | The status of the image. \@OutputOnly
    status :: (Core.Maybe Image_Status),
    -- | The type of the image, i.e., crawled or uploaded. \@OutputOnly
    type' :: (Core.Maybe Image_Type)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
newImage ::
  Image
newImage =
  Image {imageUrl = Core.Nothing, status = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON Image where
  parseJSON =
    Core.withObject
      "Image"
      ( \o ->
          Image
            Core.<$> (o Core..:? "imageUrl")
            Core.<*> (o Core..:? "status")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Image where
  toJSON Image {..} =
    Core.object
      ( Core.catMaybes
          [ ("imageUrl" Core..=) Core.<$> imageUrl,
            ("status" Core..=) Core.<$> status,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Product issue.
--
-- /See:/ 'newIssue' smart constructor.
data Issue = Issue
  { -- | If present, the attribute that triggered the issue. For more information about attributes, see https:\/\/support.google.com\/manufacturers\/answer\/6124116.
    attribute :: (Core.Maybe Core.Text),
    -- | Longer description of the issue focused on how to resolve it.
    description :: (Core.Maybe Core.Text),
    -- | The destination this issue applies to.
    destination :: (Core.Maybe Core.Text),
    -- | What needs to happen to resolve the issue.
    resolution :: (Core.Maybe Issue_Resolution),
    -- | The severity of the issue.
    severity :: (Core.Maybe Issue_Severity),
    -- | The timestamp when this issue appeared.
    timestamp :: (Core.Maybe Core.DateTime),
    -- | Short title describing the nature of the issue.
    title :: (Core.Maybe Core.Text),
    -- | The server-generated type of the issue, for example, “INCORRECT/TEXT/FORMATTING”, “IMAGE/NOT/SERVEABLE”, etc.
    type' :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Issue' with the minimum fields required to make a request.
newIssue ::
  Issue
newIssue =
  Issue
    { attribute = Core.Nothing,
      description = Core.Nothing,
      destination = Core.Nothing,
      resolution = Core.Nothing,
      severity = Core.Nothing,
      timestamp = Core.Nothing,
      title = Core.Nothing,
      type' = Core.Nothing
    }

instance Core.FromJSON Issue where
  parseJSON =
    Core.withObject
      "Issue"
      ( \o ->
          Issue
            Core.<$> (o Core..:? "attribute")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "resolution")
            Core.<*> (o Core..:? "severity")
            Core.<*> (o Core..:? "timestamp")
            Core.<*> (o Core..:? "title")
            Core.<*> (o Core..:? "type")
      )

instance Core.ToJSON Issue where
  toJSON Issue {..} =
    Core.object
      ( Core.catMaybes
          [ ("attribute" Core..=) Core.<$> attribute,
            ("description" Core..=) Core.<$> description,
            ("destination" Core..=) Core.<$> destination,
            ("resolution" Core..=) Core.<$> resolution,
            ("severity" Core..=) Core.<$> severity,
            ("timestamp" Core..=) Core.<$> timestamp,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type'
          ]
      )

--
-- /See:/ 'newListProductsResponse' smart constructor.
data ListProductsResponse = ListProductsResponse
  { -- | The token for the retrieval of the next page of product statuses.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | List of the products.
    products :: (Core.Maybe [Product])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListProductsResponse' with the minimum fields required to make a request.
newListProductsResponse ::
  ListProductsResponse
newListProductsResponse =
  ListProductsResponse {nextPageToken = Core.Nothing, products = Core.Nothing}

instance Core.FromJSON ListProductsResponse where
  parseJSON =
    Core.withObject
      "ListProductsResponse"
      ( \o ->
          ListProductsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "products")
      )

instance Core.ToJSON ListProductsResponse where
  toJSON ListProductsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("products" Core..=) Core.<$> products
          ]
      )

-- | A price.
--
-- /See:/ 'newPrice' smart constructor.
data Price = Price
  { -- | The numeric value of the price.
    amount :: (Core.Maybe Core.Text),
    -- | The currency in which the price is denoted.
    currency :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
newPrice ::
  Price
newPrice = Price {amount = Core.Nothing, currency = Core.Nothing}

instance Core.FromJSON Price where
  parseJSON =
    Core.withObject
      "Price"
      ( \o ->
          Price
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "currency")
      )

instance Core.ToJSON Price where
  toJSON Price {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("currency" Core..=) Core.<$> currency
          ]
      )

-- | Product data.
--
-- /See:/ 'newProduct' smart constructor.
data Product = Product
  { -- | Attributes of the product uploaded to the Manufacturer Center. Manually edited attributes are taken into account.
    attributes :: (Core.Maybe Attributes),
    -- | The content language of the product as a two-letter ISO 639-1 language code (for example, en).
    contentLanguage :: (Core.Maybe Core.Text),
    -- | The status of the destinations.
    destinationStatuses :: (Core.Maybe [DestinationStatus]),
    -- | A server-generated list of issues associated with the product.
    issues :: (Core.Maybe [Issue]),
    -- | Name in the format @{target_country}:{content_language}:{product_id}@. @target_country@ - The target country of the product as a CLDR territory code (for example, US). @content_language@ - The content language of the product as a two-letter ISO 639-1 language code (for example, en). @product_id@ - The ID of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#id.
    name :: (Core.Maybe Core.Text),
    -- | Parent ID in the format @accounts\/{account_id}@. @account_id@ - The ID of the Manufacturer Center account.
    parent :: (Core.Maybe Core.Text),
    -- | The ID of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#id.
    productId :: (Core.Maybe Core.Text),
    -- | The target country of the product as a CLDR territory code (for example, US).
    targetCountry :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
newProduct ::
  Product
newProduct =
  Product
    { attributes = Core.Nothing,
      contentLanguage = Core.Nothing,
      destinationStatuses = Core.Nothing,
      issues = Core.Nothing,
      name = Core.Nothing,
      parent = Core.Nothing,
      productId = Core.Nothing,
      targetCountry = Core.Nothing
    }

instance Core.FromJSON Product where
  parseJSON =
    Core.withObject
      "Product"
      ( \o ->
          Product
            Core.<$> (o Core..:? "attributes")
            Core.<*> (o Core..:? "contentLanguage")
            Core.<*> (o Core..:? "destinationStatuses")
            Core.<*> (o Core..:? "issues")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "parent")
            Core.<*> (o Core..:? "productId")
            Core.<*> (o Core..:? "targetCountry")
      )

instance Core.ToJSON Product where
  toJSON Product {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributes" Core..=) Core.<$> attributes,
            ("contentLanguage" Core..=) Core.<$> contentLanguage,
            ("destinationStatuses" Core..=)
              Core.<$> destinationStatuses,
            ("issues" Core..=) Core.<$> issues,
            ("name" Core..=) Core.<$> name,
            ("parent" Core..=) Core.<$> parent,
            ("productId" Core..=) Core.<$> productId,
            ("targetCountry" Core..=) Core.<$> targetCountry
          ]
      )

-- | A product detail of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#productdetail.
--
-- /See:/ 'newProductDetail' smart constructor.
data ProductDetail = ProductDetail
  { -- | The name of the attribute.
    attributeName :: (Core.Maybe Core.Text),
    -- | The value of the attribute.
    attributeValue :: (Core.Maybe Core.Text),
    -- | A short section name that can be reused between multiple product details.
    sectionName :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductDetail' with the minimum fields required to make a request.
newProductDetail ::
  ProductDetail
newProductDetail =
  ProductDetail
    { attributeName = Core.Nothing,
      attributeValue = Core.Nothing,
      sectionName = Core.Nothing
    }

instance Core.FromJSON ProductDetail where
  parseJSON =
    Core.withObject
      "ProductDetail"
      ( \o ->
          ProductDetail
            Core.<$> (o Core..:? "attributeName")
            Core.<*> (o Core..:? "attributeValue")
            Core.<*> (o Core..:? "sectionName")
      )

instance Core.ToJSON ProductDetail where
  toJSON ProductDetail {..} =
    Core.object
      ( Core.catMaybes
          [ ("attributeName" Core..=) Core.<$> attributeName,
            ("attributeValue" Core..=) Core.<$> attributeValue,
            ("sectionName" Core..=) Core.<$> sectionName
          ]
      )
