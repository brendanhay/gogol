{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.Manufacturers
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Public API for managing Manufacturer Center related data.
--
-- /See:/ <https://developers.google.com/manufacturers/ Manufacturer Center API Reference>
module Gogol.Manufacturers
  ( -- * Configuration
    manufacturersService,

    -- * OAuth Scopes
    Manufacturercenter'FullControl,

    -- * Resources

    -- ** manufacturers.accounts.languages.productCertifications.delete
    ManufacturersAccountsLanguagesProductCertificationsDeleteResource,
    ManufacturersAccountsLanguagesProductCertificationsDelete (..),
    newManufacturersAccountsLanguagesProductCertificationsDelete,

    -- ** manufacturers.accounts.languages.productCertifications.get
    ManufacturersAccountsLanguagesProductCertificationsGetResource,
    ManufacturersAccountsLanguagesProductCertificationsGet (..),
    newManufacturersAccountsLanguagesProductCertificationsGet,

    -- ** manufacturers.accounts.languages.productCertifications.list
    ManufacturersAccountsLanguagesProductCertificationsListResource,
    ManufacturersAccountsLanguagesProductCertificationsList (..),
    newManufacturersAccountsLanguagesProductCertificationsList,

    -- ** manufacturers.accounts.languages.productCertifications.patch
    ManufacturersAccountsLanguagesProductCertificationsPatchResource,
    ManufacturersAccountsLanguagesProductCertificationsPatch (..),
    newManufacturersAccountsLanguagesProductCertificationsPatch,

    -- ** manufacturers.accounts.products.delete
    ManufacturersAccountsProductsDeleteResource,
    ManufacturersAccountsProductsDelete (..),
    newManufacturersAccountsProductsDelete,

    -- ** manufacturers.accounts.products.get
    ManufacturersAccountsProductsGetResource,
    ManufacturersAccountsProductsGet (..),
    newManufacturersAccountsProductsGet,

    -- ** manufacturers.accounts.products.list
    ManufacturersAccountsProductsListResource,
    ManufacturersAccountsProductsList (..),
    newManufacturersAccountsProductsList,

    -- ** manufacturers.accounts.products.update
    ManufacturersAccountsProductsUpdateResource,
    ManufacturersAccountsProductsUpdate (..),
    newManufacturersAccountsProductsUpdate,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Attributes
    Attributes (..),
    newAttributes,

    -- ** Capacity
    Capacity (..),
    newCapacity,

    -- ** Certification
    Certification (..),
    newCertification,

    -- ** Count
    Count (..),
    newCount,

    -- ** DestinationStatus
    DestinationStatus (..),
    newDestinationStatus,

    -- ** DestinationStatus_Status
    DestinationStatus_Status (..),

    -- ** Empty
    Empty (..),
    newEmpty,

    -- ** FeatureDescription
    FeatureDescription (..),
    newFeatureDescription,

    -- ** FloatUnit
    FloatUnit (..),
    newFloatUnit,

    -- ** GoogleShoppingManufacturersV1ProductCertification
    GoogleShoppingManufacturersV1ProductCertification (..),
    newGoogleShoppingManufacturersV1ProductCertification,

    -- ** Grocery
    Grocery (..),
    newGrocery,

    -- ** Image
    Image (..),
    newImage,

    -- ** Image_Status
    Image_Status (..),

    -- ** Image_Type
    Image_Type (..),

    -- ** Issue
    Issue (..),
    newIssue,

    -- ** Issue_Resolution
    Issue_Resolution (..),

    -- ** Issue_Severity
    Issue_Severity (..),

    -- ** ListProductCertificationsResponse
    ListProductCertificationsResponse (..),
    newListProductCertificationsResponse,

    -- ** ListProductsResponse
    ListProductsResponse (..),
    newListProductsResponse,

    -- ** Nutrition
    Nutrition (..),
    newNutrition,

    -- ** Price
    Price (..),
    newPrice,

    -- ** Product
    Product (..),
    newProduct,

    -- ** ProductCertification
    ProductCertification (..),
    newProductCertification,

    -- ** ProductDetail
    ProductDetail (..),
    newProductDetail,

    -- ** VoluntaryNutritionFact
    VoluntaryNutritionFact (..),
    newVoluntaryNutritionFact,

    -- ** AccountsProductsGetInclude
    AccountsProductsGetInclude (..),

    -- ** AccountsProductsListInclude
    AccountsProductsListInclude (..),
  )
where

import Gogol.Manufacturers.Accounts.Languages.ProductCertifications.Delete
import Gogol.Manufacturers.Accounts.Languages.ProductCertifications.Get
import Gogol.Manufacturers.Accounts.Languages.ProductCertifications.List
import Gogol.Manufacturers.Accounts.Languages.ProductCertifications.Patch
import Gogol.Manufacturers.Accounts.Products.Delete
import Gogol.Manufacturers.Accounts.Products.Get
import Gogol.Manufacturers.Accounts.Products.List
import Gogol.Manufacturers.Accounts.Products.Update
import Gogol.Manufacturers.Types
