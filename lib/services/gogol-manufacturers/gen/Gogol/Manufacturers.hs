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
-- Module      : Gogol.Manufacturers
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
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

    -- ** ListProductsResponse
    ListProductsResponse (..),
    newListProductsResponse,

    -- ** Price
    Price (..),
    newPrice,

    -- ** Product
    Product (..),
    newProduct,

    -- ** ProductDetail
    ProductDetail (..),
    newProductDetail,

    -- ** AccountsProductsGetInclude
    AccountsProductsGetInclude (..),

    -- ** AccountsProductsListInclude
    AccountsProductsListInclude (..),
  )
where

import Gogol.Manufacturers.Accounts.Products.Delete
import Gogol.Manufacturers.Accounts.Products.Get
import Gogol.Manufacturers.Accounts.Products.List
import Gogol.Manufacturers.Accounts.Products.Update
import Gogol.Manufacturers.Types
