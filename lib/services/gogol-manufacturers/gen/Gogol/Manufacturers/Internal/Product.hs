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
-- Module      : Gogol.Manufacturers.Internal.Product
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Manufacturers.Internal.Product
  ( -- * Attributes
    Attributes (..),
    newAttributes,

    -- * Capacity
    Capacity (..),
    newCapacity,

    -- * Certification
    Certification (..),
    newCertification,

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

    -- * FloatUnit
    FloatUnit (..),
    newFloatUnit,

    -- * GoogleShoppingManufacturersV1ProductCertification
    GoogleShoppingManufacturersV1ProductCertification (..),
    newGoogleShoppingManufacturersV1ProductCertification,

    -- * Grocery
    Grocery (..),
    newGrocery,

    -- * Image
    Image (..),
    newImage,

    -- * Issue
    Issue (..),
    newIssue,

    -- * ListProductCertificationsResponse
    ListProductCertificationsResponse (..),
    newListProductCertificationsResponse,

    -- * ListProductsResponse
    ListProductsResponse (..),
    newListProductsResponse,

    -- * Nutrition
    Nutrition (..),
    newNutrition,

    -- * Price
    Price (..),
    newPrice,

    -- * Product
    Product (..),
    newProduct,

    -- * ProductCertification
    ProductCertification (..),
    newProductCertification,

    -- * ProductDetail
    ProductDetail (..),
    newProductDetail,

    -- * VoluntaryNutritionFact
    VoluntaryNutritionFact (..),
    newVoluntaryNutritionFact,
  )
where

import Gogol.Manufacturers.Internal.Sum
import Gogol.Prelude qualified as Core

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
    -- | Optional. List of certifications claimed by this product.
    certification :: (Core.Maybe [GoogleShoppingManufacturersV1ProductCertification]),
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
    -- | Grocery Attributes. See more at https:\/\/support.google.com\/manufacturers\/answer\/12098458#grocery.
    grocery :: (Core.Maybe Grocery),
    -- | The Global Trade Item Number (GTIN) of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#gtin.
    gtin :: (Core.Maybe [Core.Text]),
    -- | The image of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#image.
    imageLink :: (Core.Maybe Image),
    -- | A list of included destinations such as \"ClientExport\", \"ClientShoppingCatalog\" or \"PartnerShoppingCatalog\". For more information, see https:\/\/support.google.com\/manufacturers\/answer\/7443550
    includedDestination :: (Core.Maybe [Core.Text]),
    -- | Optional. List of countries to show this product in. Countries provided in this attribute will override any of the countries configured at feed level. The values should be: the <http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml CLDR territory code> of the countries in which this item will be shown.
    intendedCountry :: (Core.Maybe [Core.Text]),
    -- | The item group id of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#itemgroupid.
    itemGroupId :: (Core.Maybe Core.Text),
    -- | The material of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#material.
    material :: (Core.Maybe Core.Text),
    -- | The Manufacturer Part Number (MPN) of the product. For more information, see https:\/\/support.google.com\/manufacturers\/answer\/6124116#mpn.
    mpn :: (Core.Maybe Core.Text),
    -- | Nutrition Attributes. See more at https:\/\/support.google.com\/manufacturers\/answer\/12098458#food-servings.
    nutrition :: (Core.Maybe Nutrition),
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
    videoLink :: (Core.Maybe [Core.Text]),
    -- | Virtual Model (3d) asset link.
    virtualModelLink :: (Core.Maybe Core.Text)
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
      certification = Core.Nothing,
      color = Core.Nothing,
      count = Core.Nothing,
      description = Core.Nothing,
      disclosureDate = Core.Nothing,
      excludedDestination = Core.Nothing,
      featureDescription = Core.Nothing,
      flavor = Core.Nothing,
      format = Core.Nothing,
      gender = Core.Nothing,
      grocery = Core.Nothing,
      gtin = Core.Nothing,
      imageLink = Core.Nothing,
      includedDestination = Core.Nothing,
      intendedCountry = Core.Nothing,
      itemGroupId = Core.Nothing,
      material = Core.Nothing,
      mpn = Core.Nothing,
      nutrition = Core.Nothing,
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
      videoLink = Core.Nothing,
      virtualModelLink = Core.Nothing
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
            Core.<*> (o Core..:? "certification")
            Core.<*> (o Core..:? "color")
            Core.<*> (o Core..:? "count")
            Core.<*> (o Core..:? "description")
            Core.<*> (o Core..:? "disclosureDate")
            Core.<*> (o Core..:? "excludedDestination")
            Core.<*> (o Core..:? "featureDescription")
            Core.<*> (o Core..:? "flavor")
            Core.<*> (o Core..:? "format")
            Core.<*> (o Core..:? "gender")
            Core.<*> (o Core..:? "grocery")
            Core.<*> (o Core..:? "gtin")
            Core.<*> (o Core..:? "imageLink")
            Core.<*> (o Core..:? "includedDestination")
            Core.<*> (o Core..:? "intendedCountry")
            Core.<*> (o Core..:? "itemGroupId")
            Core.<*> (o Core..:? "material")
            Core.<*> (o Core..:? "mpn")
            Core.<*> (o Core..:? "nutrition")
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
            Core.<*> (o Core..:? "virtualModelLink")
      )

instance Core.ToJSON Attributes where
  toJSON Attributes {..} =
    Core.object
      ( Core.catMaybes
          [ ("additionalImageLink" Core..=) Core.<$> additionalImageLink,
            ("ageGroup" Core..=) Core.<$> ageGroup,
            ("brand" Core..=) Core.<$> brand,
            ("capacity" Core..=) Core.<$> capacity,
            ("certification" Core..=) Core.<$> certification,
            ("color" Core..=) Core.<$> color,
            ("count" Core..=) Core.<$> count,
            ("description" Core..=) Core.<$> description,
            ("disclosureDate" Core..=) Core.<$> disclosureDate,
            ("excludedDestination" Core..=) Core.<$> excludedDestination,
            ("featureDescription" Core..=) Core.<$> featureDescription,
            ("flavor" Core..=) Core.<$> flavor,
            ("format" Core..=) Core.<$> format,
            ("gender" Core..=) Core.<$> gender,
            ("grocery" Core..=) Core.<$> grocery,
            ("gtin" Core..=) Core.<$> gtin,
            ("imageLink" Core..=) Core.<$> imageLink,
            ("includedDestination" Core..=) Core.<$> includedDestination,
            ("intendedCountry" Core..=) Core.<$> intendedCountry,
            ("itemGroupId" Core..=) Core.<$> itemGroupId,
            ("material" Core..=) Core.<$> material,
            ("mpn" Core..=) Core.<$> mpn,
            ("nutrition" Core..=) Core.<$> nutrition,
            ("pattern" Core..=) Core.<$> pattern',
            ("productDetail" Core..=) Core.<$> productDetail,
            ("productHighlight" Core..=) Core.<$> productHighlight,
            ("productLine" Core..=) Core.<$> productLine,
            ("productName" Core..=) Core.<$> productName,
            ("productPageUrl" Core..=) Core.<$> productPageUrl,
            ("productType" Core..=) Core.<$> productType,
            ("releaseDate" Core..=) Core.<$> releaseDate,
            ("richProductContent" Core..=) Core.<$> richProductContent,
            ("scent" Core..=) Core.<$> scent,
            ("size" Core..=) Core.<$> size,
            ("sizeSystem" Core..=) Core.<$> sizeSystem,
            ("sizeType" Core..=) Core.<$> sizeType,
            ("suggestedRetailPrice" Core..=) Core.<$> suggestedRetailPrice,
            ("targetClientId" Core..=) Core.<$> targetClientId,
            ("theme" Core..=) Core.<$> theme,
            ("title" Core..=) Core.<$> title,
            ("videoLink" Core..=) Core.<$> videoLink,
            ("virtualModelLink" Core..=) Core.<$> virtualModelLink
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
            Core.<*> (o Core..:? "value" Core.<&> Core.fmap Core.fromAsText)
      )

instance Core.ToJSON Capacity where
  toJSON Capacity {..} =
    Core.object
      ( Core.catMaybes
          [ ("unit" Core..=) Core.<$> unit,
            ("value" Core..=) Core.. Core.AsText Core.<$> value
          ]
      )

-- | Description of a certification.
--
-- /See:/ 'newCertification' smart constructor.
data Certification = Certification
  { -- | Required. Name of the certification body.
    authority :: (Core.Maybe Core.Text),
    -- | Required. A unique code to identify the certification.
    code :: (Core.Maybe Core.Text),
    -- | Optional. A URL link to the certification.
    link :: (Core.Maybe Core.Text),
    -- | Optional. A URL link to the certification logo.
    logo :: (Core.Maybe Core.Text),
    -- | Required. Name of the certification.
    name :: (Core.Maybe Core.Text),
    -- | Optional. The expiration date (UTC).
    validUntil :: (Core.Maybe Core.Text),
    -- | Optional. A custom value of the certification.
    value :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Certification' with the minimum fields required to make a request.
newCertification ::
  Certification
newCertification =
  Certification
    { authority = Core.Nothing,
      code = Core.Nothing,
      link = Core.Nothing,
      logo = Core.Nothing,
      name = Core.Nothing,
      validUntil = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON Certification where
  parseJSON =
    Core.withObject
      "Certification"
      ( \o ->
          Certification
            Core.<$> (o Core..:? "authority")
            Core.<*> (o Core..:? "code")
            Core.<*> (o Core..:? "link")
            Core.<*> (o Core..:? "logo")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "validUntil")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON Certification where
  toJSON Certification {..} =
    Core.object
      ( Core.catMaybes
          [ ("authority" Core..=) Core.<$> authority,
            ("code" Core..=) Core.<$> code,
            ("link" Core..=) Core.<$> link,
            ("logo" Core..=) Core.<$> logo,
            ("name" Core..=) Core.<$> name,
            ("validUntil" Core..=) Core.<$> validUntil,
            ("value" Core..=) Core.<$> value
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
            Core.<*> (o Core..:? "value" Core.<&> Core.fmap Core.fromAsText)
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
  { -- | Output only. List of country codes (ISO 3166-1 alpha-2) where the offer is approved.
    approvedCountries :: (Core.Maybe [Core.Text]),
    -- | The name of the destination.
    destination :: (Core.Maybe Core.Text),
    -- | Output only. List of country codes (ISO 3166-1 alpha-2) where the offer is disapproved.
    disapprovedCountries :: (Core.Maybe [Core.Text]),
    -- | Output only. List of country codes (ISO 3166-1 alpha-2) where the offer is pending approval.
    pendingCountries :: (Core.Maybe [Core.Text]),
    -- | The status of the destination.
    status :: (Core.Maybe DestinationStatus_Status)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DestinationStatus' with the minimum fields required to make a request.
newDestinationStatus ::
  DestinationStatus
newDestinationStatus =
  DestinationStatus
    { approvedCountries = Core.Nothing,
      destination = Core.Nothing,
      disapprovedCountries = Core.Nothing,
      pendingCountries = Core.Nothing,
      status = Core.Nothing
    }

instance Core.FromJSON DestinationStatus where
  parseJSON =
    Core.withObject
      "DestinationStatus"
      ( \o ->
          DestinationStatus
            Core.<$> (o Core..:? "approvedCountries")
            Core.<*> (o Core..:? "destination")
            Core.<*> (o Core..:? "disapprovedCountries")
            Core.<*> (o Core..:? "pendingCountries")
            Core.<*> (o Core..:? "status")
      )

instance Core.ToJSON DestinationStatus where
  toJSON DestinationStatus {..} =
    Core.object
      ( Core.catMaybes
          [ ("approvedCountries" Core..=) Core.<$> approvedCountries,
            ("destination" Core..=) Core.<$> destination,
            ("disapprovedCountries" Core..=) Core.<$> disapprovedCountries,
            ("pendingCountries" Core..=) Core.<$> pendingCountries,
            ("status" Core..=) Core.<$> status
          ]
      )

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty ::
  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
  parseJSON = Core.withObject "Empty" (\o -> Core.pure Empty)

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

-- | Combination of float amount and unit.
--
-- /See:/ 'newFloatUnit' smart constructor.
data FloatUnit = FloatUnit
  { -- | amount.
    amount :: (Core.Maybe Core.Double),
    -- | unit.
    unit :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FloatUnit' with the minimum fields required to make a request.
newFloatUnit ::
  FloatUnit
newFloatUnit =
  FloatUnit {amount = Core.Nothing, unit = Core.Nothing}

instance Core.FromJSON FloatUnit where
  parseJSON =
    Core.withObject
      "FloatUnit"
      ( \o ->
          FloatUnit
            Core.<$> (o Core..:? "amount")
            Core.<*> (o Core..:? "unit")
      )

instance Core.ToJSON FloatUnit where
  toJSON FloatUnit {..} =
    Core.object
      ( Core.catMaybes
          [ ("amount" Core..=) Core.<$> amount,
            ("unit" Core..=) Core.<$> unit
          ]
      )

-- | Description of a certification.
--
-- /See:/ 'newGoogleShoppingManufacturersV1ProductCertification' smart constructor.
data GoogleShoppingManufacturersV1ProductCertification = GoogleShoppingManufacturersV1ProductCertification
  { -- | Required. Name of the certification body.
    authority :: (Core.Maybe Core.Text),
    -- | Required. A unique code to identify the certification.
    code :: (Core.Maybe Core.Text),
    -- | Required. Name of the certification.
    name :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'GoogleShoppingManufacturersV1ProductCertification' with the minimum fields required to make a request.
newGoogleShoppingManufacturersV1ProductCertification ::
  GoogleShoppingManufacturersV1ProductCertification
newGoogleShoppingManufacturersV1ProductCertification =
  GoogleShoppingManufacturersV1ProductCertification
    { authority =
        Core.Nothing,
      code = Core.Nothing,
      name = Core.Nothing
    }

instance
  Core.FromJSON
    GoogleShoppingManufacturersV1ProductCertification
  where
  parseJSON =
    Core.withObject
      "GoogleShoppingManufacturersV1ProductCertification"
      ( \o ->
          GoogleShoppingManufacturersV1ProductCertification
            Core.<$> (o Core..:? "authority")
            Core.<*> (o Core..:? "code")
            Core.<*> (o Core..:? "name")
      )

instance
  Core.ToJSON
    GoogleShoppingManufacturersV1ProductCertification
  where
  toJSON GoogleShoppingManufacturersV1ProductCertification {..} =
    Core.object
      ( Core.catMaybes
          [ ("authority" Core..=) Core.<$> authority,
            ("code" Core..=) Core.<$> code,
            ("name" Core..=) Core.<$> name
          ]
      )

--
-- /See:/ 'newGrocery' smart constructor.
data Grocery = Grocery
  { -- | Active ingredients.
    activeIngredients :: (Core.Maybe Core.Text),
    -- | Alcohol by volume.
    alcoholByVolume :: (Core.Maybe Core.Double),
    -- | Allergens.
    allergens :: (Core.Maybe Core.Text),
    -- | Derived nutrition claim.
    derivedNutritionClaim :: (Core.Maybe [Core.Text]),
    -- | Directions.
    directions :: (Core.Maybe Core.Text),
    -- | Indications.
    indications :: (Core.Maybe Core.Text),
    -- | Ingredients.
    ingredients :: (Core.Maybe Core.Text),
    -- | Nutrition claim.
    nutritionClaim :: (Core.Maybe [Core.Text]),
    -- | Storage instructions.
    storageInstructions :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Grocery' with the minimum fields required to make a request.
newGrocery ::
  Grocery
newGrocery =
  Grocery
    { activeIngredients = Core.Nothing,
      alcoholByVolume = Core.Nothing,
      allergens = Core.Nothing,
      derivedNutritionClaim = Core.Nothing,
      directions = Core.Nothing,
      indications = Core.Nothing,
      ingredients = Core.Nothing,
      nutritionClaim = Core.Nothing,
      storageInstructions = Core.Nothing
    }

instance Core.FromJSON Grocery where
  parseJSON =
    Core.withObject
      "Grocery"
      ( \o ->
          Grocery
            Core.<$> (o Core..:? "activeIngredients")
            Core.<*> (o Core..:? "alcoholByVolume")
            Core.<*> (o Core..:? "allergens")
            Core.<*> (o Core..:? "derivedNutritionClaim")
            Core.<*> (o Core..:? "directions")
            Core.<*> (o Core..:? "indications")
            Core.<*> (o Core..:? "ingredients")
            Core.<*> (o Core..:? "nutritionClaim")
            Core.<*> (o Core..:? "storageInstructions")
      )

instance Core.ToJSON Grocery where
  toJSON Grocery {..} =
    Core.object
      ( Core.catMaybes
          [ ("activeIngredients" Core..=) Core.<$> activeIngredients,
            ("alcoholByVolume" Core..=) Core.<$> alcoholByVolume,
            ("allergens" Core..=) Core.<$> allergens,
            ("derivedNutritionClaim" Core..=) Core.<$> derivedNutritionClaim,
            ("directions" Core..=) Core.<$> directions,
            ("indications" Core..=) Core.<$> indications,
            ("ingredients" Core..=) Core.<$> ingredients,
            ("nutritionClaim" Core..=) Core.<$> nutritionClaim,
            ("storageInstructions" Core..=) Core.<$> storageInstructions
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
  Image
    { imageUrl = Core.Nothing,
      status = Core.Nothing,
      type' = Core.Nothing
    }

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
  { -- | Output only. List of country codes (ISO 3166-1 alpha-2) where issue applies to the manufacturer product.
    applicableCountries :: (Core.Maybe [Core.Text]),
    -- | If present, the attribute that triggered the issue. For more information about attributes, see https:\/\/support.google.com\/manufacturers\/answer\/6124116.
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
    { applicableCountries = Core.Nothing,
      attribute = Core.Nothing,
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
            Core.<$> (o Core..:? "applicableCountries")
            Core.<*> (o Core..:? "attribute")
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
          [ ("applicableCountries" Core..=) Core.<$> applicableCountries,
            ("attribute" Core..=) Core.<$> attribute,
            ("description" Core..=) Core.<$> description,
            ("destination" Core..=) Core.<$> destination,
            ("resolution" Core..=) Core.<$> resolution,
            ("severity" Core..=) Core.<$> severity,
            ("timestamp" Core..=) Core.<$> timestamp,
            ("title" Core..=) Core.<$> title,
            ("type" Core..=) Core.<$> type'
          ]
      )

-- | Response for ListProductCertifications method.
--
-- /See:/ 'newListProductCertificationsResponse' smart constructor.
data ListProductCertificationsResponse = ListProductCertificationsResponse
  { -- | A token, which can be sent as @page_token@ to retrieve the next page. If this field is omitted, there are no subsequent pages.
    nextPageToken :: (Core.Maybe Core.Text),
    -- | The product certifications from the specified certification body.
    productCertifications :: (Core.Maybe [ProductCertification])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ListProductCertificationsResponse' with the minimum fields required to make a request.
newListProductCertificationsResponse ::
  ListProductCertificationsResponse
newListProductCertificationsResponse =
  ListProductCertificationsResponse
    { nextPageToken = Core.Nothing,
      productCertifications = Core.Nothing
    }

instance Core.FromJSON ListProductCertificationsResponse where
  parseJSON =
    Core.withObject
      "ListProductCertificationsResponse"
      ( \o ->
          ListProductCertificationsResponse
            Core.<$> (o Core..:? "nextPageToken")
            Core.<*> (o Core..:? "productCertifications")
      )

instance Core.ToJSON ListProductCertificationsResponse where
  toJSON ListProductCertificationsResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("nextPageToken" Core..=) Core.<$> nextPageToken,
            ("productCertifications" Core..=) Core.<$> productCertifications
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
  ListProductsResponse
    { nextPageToken = Core.Nothing,
      products = Core.Nothing
    }

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

--
-- /See:/ 'newNutrition' smart constructor.
data Nutrition = Nutrition
  { -- | Added sugars.
    addedSugars :: (Core.Maybe FloatUnit),
    -- | Added sugars daily percentage.
    addedSugarsDailyPercentage :: (Core.Maybe Core.Double),
    -- | Calcium.
    calcium :: (Core.Maybe FloatUnit),
    -- | Calcium daily percentage.
    calciumDailyPercentage :: (Core.Maybe Core.Double),
    -- | Cholesterol.
    cholesterol :: (Core.Maybe FloatUnit),
    -- | Cholesterol daily percentage.
    cholesterolDailyPercentage :: (Core.Maybe Core.Double),
    -- | Dietary fiber.
    dietaryFiber :: (Core.Maybe FloatUnit),
    -- | Dietary fiber daily percentage.
    dietaryFiberDailyPercentage :: (Core.Maybe Core.Double),
    -- | Mandatory Nutrition Facts. Energy.
    energy :: (Core.Maybe FloatUnit),
    -- | Energy from fat.
    energyFromFat :: (Core.Maybe FloatUnit),
    -- | Folate daily percentage.
    folateDailyPercentage :: (Core.Maybe Core.Double),
    -- | Folate folic acid.
    folateFolicAcid :: (Core.Maybe FloatUnit),
    -- | Folate mcg DFE.
    folateMcgDfe :: (Core.Maybe Core.Double),
    -- | Iron.
    iron :: (Core.Maybe FloatUnit),
    -- | Iron daily percentage.
    ironDailyPercentage :: (Core.Maybe Core.Double),
    -- | Monounsaturated fat.
    monounsaturatedFat :: (Core.Maybe FloatUnit),
    -- | Nutrition fact measure.
    nutritionFactMeasure :: (Core.Maybe Core.Text),
    -- | Polyols.
    polyols :: (Core.Maybe FloatUnit),
    -- | Polyunsaturated fat.
    polyunsaturatedFat :: (Core.Maybe FloatUnit),
    -- | Potassium.
    potassium :: (Core.Maybe FloatUnit),
    -- | Potassium daily percentage.
    potassiumDailyPercentage :: (Core.Maybe Core.Double),
    -- | Prepared size description.
    preparedSizeDescription :: (Core.Maybe Core.Text),
    -- | Protein.
    protein :: (Core.Maybe FloatUnit),
    -- | Protein daily percentage.
    proteinDailyPercentage :: (Core.Maybe Core.Double),
    -- | Saturated fat.
    saturatedFat :: (Core.Maybe FloatUnit),
    -- | Saturated fat daily percentage.
    saturatedFatDailyPercentage :: (Core.Maybe Core.Double),
    -- | Food Serving Size. Serving size description.
    servingSizeDescription :: (Core.Maybe Core.Text),
    -- | Serving size measure.
    servingSizeMeasure :: (Core.Maybe FloatUnit),
    -- | Servings per container.
    servingsPerContainer :: (Core.Maybe Core.Text),
    -- | Sodium.
    sodium :: (Core.Maybe FloatUnit),
    -- | Sodium daily percentage.
    sodiumDailyPercentage :: (Core.Maybe Core.Double),
    -- | Starch.
    starch :: (Core.Maybe FloatUnit),
    -- | Total carbohydrate.
    totalCarbohydrate :: (Core.Maybe FloatUnit),
    -- | Total carbohydrate daily percentage.
    totalCarbohydrateDailyPercentage :: (Core.Maybe Core.Double),
    -- | Total fat.
    totalFat :: (Core.Maybe FloatUnit),
    -- | Total fat daily percentage.
    totalFatDailyPercentage :: (Core.Maybe Core.Double),
    -- | Total sugars.
    totalSugars :: (Core.Maybe FloatUnit),
    -- | Total sugars daily percentage.
    totalSugarsDailyPercentage :: (Core.Maybe Core.Double),
    -- | Trans fat.
    transFat :: (Core.Maybe FloatUnit),
    -- | Trans fat daily percentage.
    transFatDailyPercentage :: (Core.Maybe Core.Double),
    -- | Vitamin D.
    vitaminD :: (Core.Maybe FloatUnit),
    -- | Vitamin D daily percentage.
    vitaminDDailyPercentage :: (Core.Maybe Core.Double),
    -- | Voluntary nutrition fact.
    voluntaryNutritionFact :: (Core.Maybe [VoluntaryNutritionFact])
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Nutrition' with the minimum fields required to make a request.
newNutrition ::
  Nutrition
newNutrition =
  Nutrition
    { addedSugars = Core.Nothing,
      addedSugarsDailyPercentage = Core.Nothing,
      calcium = Core.Nothing,
      calciumDailyPercentage = Core.Nothing,
      cholesterol = Core.Nothing,
      cholesterolDailyPercentage = Core.Nothing,
      dietaryFiber = Core.Nothing,
      dietaryFiberDailyPercentage = Core.Nothing,
      energy = Core.Nothing,
      energyFromFat = Core.Nothing,
      folateDailyPercentage = Core.Nothing,
      folateFolicAcid = Core.Nothing,
      folateMcgDfe = Core.Nothing,
      iron = Core.Nothing,
      ironDailyPercentage = Core.Nothing,
      monounsaturatedFat = Core.Nothing,
      nutritionFactMeasure = Core.Nothing,
      polyols = Core.Nothing,
      polyunsaturatedFat = Core.Nothing,
      potassium = Core.Nothing,
      potassiumDailyPercentage = Core.Nothing,
      preparedSizeDescription = Core.Nothing,
      protein = Core.Nothing,
      proteinDailyPercentage = Core.Nothing,
      saturatedFat = Core.Nothing,
      saturatedFatDailyPercentage = Core.Nothing,
      servingSizeDescription = Core.Nothing,
      servingSizeMeasure = Core.Nothing,
      servingsPerContainer = Core.Nothing,
      sodium = Core.Nothing,
      sodiumDailyPercentage = Core.Nothing,
      starch = Core.Nothing,
      totalCarbohydrate = Core.Nothing,
      totalCarbohydrateDailyPercentage = Core.Nothing,
      totalFat = Core.Nothing,
      totalFatDailyPercentage = Core.Nothing,
      totalSugars = Core.Nothing,
      totalSugarsDailyPercentage = Core.Nothing,
      transFat = Core.Nothing,
      transFatDailyPercentage = Core.Nothing,
      vitaminD = Core.Nothing,
      vitaminDDailyPercentage = Core.Nothing,
      voluntaryNutritionFact = Core.Nothing
    }

instance Core.FromJSON Nutrition where
  parseJSON =
    Core.withObject
      "Nutrition"
      ( \o ->
          Nutrition
            Core.<$> (o Core..:? "addedSugars")
            Core.<*> (o Core..:? "addedSugarsDailyPercentage")
            Core.<*> (o Core..:? "calcium")
            Core.<*> (o Core..:? "calciumDailyPercentage")
            Core.<*> (o Core..:? "cholesterol")
            Core.<*> (o Core..:? "cholesterolDailyPercentage")
            Core.<*> (o Core..:? "dietaryFiber")
            Core.<*> (o Core..:? "dietaryFiberDailyPercentage")
            Core.<*> (o Core..:? "energy")
            Core.<*> (o Core..:? "energyFromFat")
            Core.<*> (o Core..:? "folateDailyPercentage")
            Core.<*> (o Core..:? "folateFolicAcid")
            Core.<*> (o Core..:? "folateMcgDfe")
            Core.<*> (o Core..:? "iron")
            Core.<*> (o Core..:? "ironDailyPercentage")
            Core.<*> (o Core..:? "monounsaturatedFat")
            Core.<*> (o Core..:? "nutritionFactMeasure")
            Core.<*> (o Core..:? "polyols")
            Core.<*> (o Core..:? "polyunsaturatedFat")
            Core.<*> (o Core..:? "potassium")
            Core.<*> (o Core..:? "potassiumDailyPercentage")
            Core.<*> (o Core..:? "preparedSizeDescription")
            Core.<*> (o Core..:? "protein")
            Core.<*> (o Core..:? "proteinDailyPercentage")
            Core.<*> (o Core..:? "saturatedFat")
            Core.<*> (o Core..:? "saturatedFatDailyPercentage")
            Core.<*> (o Core..:? "servingSizeDescription")
            Core.<*> (o Core..:? "servingSizeMeasure")
            Core.<*> (o Core..:? "servingsPerContainer")
            Core.<*> (o Core..:? "sodium")
            Core.<*> (o Core..:? "sodiumDailyPercentage")
            Core.<*> (o Core..:? "starch")
            Core.<*> (o Core..:? "totalCarbohydrate")
            Core.<*> (o Core..:? "totalCarbohydrateDailyPercentage")
            Core.<*> (o Core..:? "totalFat")
            Core.<*> (o Core..:? "totalFatDailyPercentage")
            Core.<*> (o Core..:? "totalSugars")
            Core.<*> (o Core..:? "totalSugarsDailyPercentage")
            Core.<*> (o Core..:? "transFat")
            Core.<*> (o Core..:? "transFatDailyPercentage")
            Core.<*> (o Core..:? "vitaminD")
            Core.<*> (o Core..:? "vitaminDDailyPercentage")
            Core.<*> (o Core..:? "voluntaryNutritionFact")
      )

instance Core.ToJSON Nutrition where
  toJSON Nutrition {..} =
    Core.object
      ( Core.catMaybes
          [ ("addedSugars" Core..=) Core.<$> addedSugars,
            ("addedSugarsDailyPercentage" Core..=)
              Core.<$> addedSugarsDailyPercentage,
            ("calcium" Core..=) Core.<$> calcium,
            ("calciumDailyPercentage" Core..=) Core.<$> calciumDailyPercentage,
            ("cholesterol" Core..=) Core.<$> cholesterol,
            ("cholesterolDailyPercentage" Core..=)
              Core.<$> cholesterolDailyPercentage,
            ("dietaryFiber" Core..=) Core.<$> dietaryFiber,
            ("dietaryFiberDailyPercentage" Core..=)
              Core.<$> dietaryFiberDailyPercentage,
            ("energy" Core..=) Core.<$> energy,
            ("energyFromFat" Core..=) Core.<$> energyFromFat,
            ("folateDailyPercentage" Core..=) Core.<$> folateDailyPercentage,
            ("folateFolicAcid" Core..=) Core.<$> folateFolicAcid,
            ("folateMcgDfe" Core..=) Core.<$> folateMcgDfe,
            ("iron" Core..=) Core.<$> iron,
            ("ironDailyPercentage" Core..=) Core.<$> ironDailyPercentage,
            ("monounsaturatedFat" Core..=) Core.<$> monounsaturatedFat,
            ("nutritionFactMeasure" Core..=) Core.<$> nutritionFactMeasure,
            ("polyols" Core..=) Core.<$> polyols,
            ("polyunsaturatedFat" Core..=) Core.<$> polyunsaturatedFat,
            ("potassium" Core..=) Core.<$> potassium,
            ("potassiumDailyPercentage" Core..=)
              Core.<$> potassiumDailyPercentage,
            ("preparedSizeDescription" Core..=)
              Core.<$> preparedSizeDescription,
            ("protein" Core..=) Core.<$> protein,
            ("proteinDailyPercentage" Core..=) Core.<$> proteinDailyPercentage,
            ("saturatedFat" Core..=) Core.<$> saturatedFat,
            ("saturatedFatDailyPercentage" Core..=)
              Core.<$> saturatedFatDailyPercentage,
            ("servingSizeDescription" Core..=) Core.<$> servingSizeDescription,
            ("servingSizeMeasure" Core..=) Core.<$> servingSizeMeasure,
            ("servingsPerContainer" Core..=) Core.<$> servingsPerContainer,
            ("sodium" Core..=) Core.<$> sodium,
            ("sodiumDailyPercentage" Core..=) Core.<$> sodiumDailyPercentage,
            ("starch" Core..=) Core.<$> starch,
            ("totalCarbohydrate" Core..=) Core.<$> totalCarbohydrate,
            ("totalCarbohydrateDailyPercentage" Core..=)
              Core.<$> totalCarbohydrateDailyPercentage,
            ("totalFat" Core..=) Core.<$> totalFat,
            ("totalFatDailyPercentage" Core..=)
              Core.<$> totalFatDailyPercentage,
            ("totalSugars" Core..=) Core.<$> totalSugars,
            ("totalSugarsDailyPercentage" Core..=)
              Core.<$> totalSugarsDailyPercentage,
            ("transFat" Core..=) Core.<$> transFat,
            ("transFatDailyPercentage" Core..=)
              Core.<$> transFatDailyPercentage,
            ("vitaminD" Core..=) Core.<$> vitaminD,
            ("vitaminDDailyPercentage" Core..=)
              Core.<$> vitaminDDailyPercentage,
            ("voluntaryNutritionFact" Core..=)
              Core.<$> voluntaryNutritionFact
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
    -- | Optional. The feed label for the product.
    feedLabel :: (Core.Maybe Core.Text),
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
      feedLabel = Core.Nothing,
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
            Core.<*> (o Core..:? "feedLabel")
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
            ("destinationStatuses" Core..=) Core.<$> destinationStatuses,
            ("feedLabel" Core..=) Core.<$> feedLabel,
            ("issues" Core..=) Core.<$> issues,
            ("name" Core..=) Core.<$> name,
            ("parent" Core..=) Core.<$> parent,
            ("productId" Core..=) Core.<$> productId,
            ("targetCountry" Core..=) Core.<$> targetCountry
          ]
      )

-- | Product certification data.
--
-- /See:/ 'newProductCertification' smart constructor.
data ProductCertification = ProductCertification
  { -- | Required. This is the product\'s brand name. The brand is used to help identify your product.
    brand :: (Core.Maybe Core.Text),
    -- | Required. A list of certifications to link to the described product.
    certification :: (Core.Maybe [Certification]),
    -- | Optional. A 2-letter country code (ISO 3166-1 Alpha 2).
    countryCode :: (Core.Maybe [Core.Text]),
    -- | Output only. The statuses of the destinations.
    destinationStatuses :: (Core.Maybe [DestinationStatus]),
    -- | Output only. A server-generated list of issues associated with the product.
    issues :: (Core.Maybe [Issue]),
    -- | Optional. These are the Manufacturer Part Numbers (MPN). MPNs are used to uniquely identify a specific product among all products from the same manufacturer
    mpn :: (Core.Maybe [Core.Text]),
    -- | Required. The unique name identifier of a product certification Format: accounts\/{account}\/languages\/{language_code}\/productCertifications\/{id} Where @id@ is a some unique identifier and @language_code@ is a 2-letter ISO 639-1 code of a Shopping supported language according to https:\/\/support.google.com\/merchants\/answer\/160637.
    name :: (Core.Maybe Core.Text),
    -- | Optional. Another name for GTIN.
    productCode :: (Core.Maybe [Core.Text]),
    -- | Optional. These are your own product categorization system in your product data.
    productType :: (Core.Maybe [Core.Text]),
    -- | Required. This is to clearly identify the product you are certifying.
    title :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ProductCertification' with the minimum fields required to make a request.
newProductCertification ::
  ProductCertification
newProductCertification =
  ProductCertification
    { brand = Core.Nothing,
      certification = Core.Nothing,
      countryCode = Core.Nothing,
      destinationStatuses = Core.Nothing,
      issues = Core.Nothing,
      mpn = Core.Nothing,
      name = Core.Nothing,
      productCode = Core.Nothing,
      productType = Core.Nothing,
      title = Core.Nothing
    }

instance Core.FromJSON ProductCertification where
  parseJSON =
    Core.withObject
      "ProductCertification"
      ( \o ->
          ProductCertification
            Core.<$> (o Core..:? "brand")
            Core.<*> (o Core..:? "certification")
            Core.<*> (o Core..:? "countryCode")
            Core.<*> (o Core..:? "destinationStatuses")
            Core.<*> (o Core..:? "issues")
            Core.<*> (o Core..:? "mpn")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "productCode")
            Core.<*> (o Core..:? "productType")
            Core.<*> (o Core..:? "title")
      )

instance Core.ToJSON ProductCertification where
  toJSON ProductCertification {..} =
    Core.object
      ( Core.catMaybes
          [ ("brand" Core..=) Core.<$> brand,
            ("certification" Core..=) Core.<$> certification,
            ("countryCode" Core..=) Core.<$> countryCode,
            ("destinationStatuses" Core..=) Core.<$> destinationStatuses,
            ("issues" Core..=) Core.<$> issues,
            ("mpn" Core..=) Core.<$> mpn,
            ("name" Core..=) Core.<$> name,
            ("productCode" Core..=) Core.<$> productCode,
            ("productType" Core..=) Core.<$> productType,
            ("title" Core..=) Core.<$> title
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

-- | Voluntary Nutrition Facts.
--
-- /See:/ 'newVoluntaryNutritionFact' smart constructor.
data VoluntaryNutritionFact = VoluntaryNutritionFact
  { -- | Daily percentage.
    dailyPercentage :: (Core.Maybe Core.Double),
    -- | Name.
    name :: (Core.Maybe Core.Text),
    -- | Value.
    value :: (Core.Maybe FloatUnit)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'VoluntaryNutritionFact' with the minimum fields required to make a request.
newVoluntaryNutritionFact ::
  VoluntaryNutritionFact
newVoluntaryNutritionFact =
  VoluntaryNutritionFact
    { dailyPercentage = Core.Nothing,
      name = Core.Nothing,
      value = Core.Nothing
    }

instance Core.FromJSON VoluntaryNutritionFact where
  parseJSON =
    Core.withObject
      "VoluntaryNutritionFact"
      ( \o ->
          VoluntaryNutritionFact
            Core.<$> (o Core..:? "dailyPercentage")
            Core.<*> (o Core..:? "name")
            Core.<*> (o Core..:? "value")
      )

instance Core.ToJSON VoluntaryNutritionFact where
  toJSON VoluntaryNutritionFact {..} =
    Core.object
      ( Core.catMaybes
          [ ("dailyPercentage" Core..=) Core.<$> dailyPercentage,
            ("name" Core..=) Core.<$> name,
            ("value" Core..=) Core.<$> value
          ]
      )
