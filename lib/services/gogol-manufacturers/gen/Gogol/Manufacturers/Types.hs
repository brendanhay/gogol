{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Manufacturers.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Manufacturers.Types
    (
    -- * Configuration
      manufacturersService

    -- * OAuth Scopes
    , Manufacturercenter'FullControl

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** Attributes
    , Attributes (..)
    , newAttributes

    -- ** Capacity
    , Capacity (..)
    , newCapacity

    -- ** Certification
    , Certification (..)
    , newCertification

    -- ** Count
    , Count (..)
    , newCount

    -- ** DestinationStatus
    , DestinationStatus (..)
    , newDestinationStatus

    -- ** DestinationStatus_Status
    , DestinationStatus_Status (..)

    -- ** Empty
    , Empty (..)
    , newEmpty

    -- ** FeatureDescription
    , FeatureDescription (..)
    , newFeatureDescription

    -- ** FloatUnit
    , FloatUnit (..)
    , newFloatUnit

    -- ** GoogleShoppingManufacturersV1ProductCertification
    , GoogleShoppingManufacturersV1ProductCertification (..)
    , newGoogleShoppingManufacturersV1ProductCertification

    -- ** Grocery
    , Grocery (..)
    , newGrocery

    -- ** Image
    , Image (..)
    , newImage

    -- ** Image_Status
    , Image_Status (..)

    -- ** Image_Type
    , Image_Type (..)

    -- ** Issue
    , Issue (..)
    , newIssue

    -- ** Issue_Resolution
    , Issue_Resolution (..)

    -- ** Issue_Severity
    , Issue_Severity (..)

    -- ** ListProductCertificationsResponse
    , ListProductCertificationsResponse (..)
    , newListProductCertificationsResponse

    -- ** ListProductsResponse
    , ListProductsResponse (..)
    , newListProductsResponse

    -- ** Nutrition
    , Nutrition (..)
    , newNutrition

    -- ** Price
    , Price (..)
    , newPrice

    -- ** Product
    , Product (..)
    , newProduct

    -- ** ProductCertification
    , ProductCertification (..)
    , newProductCertification

    -- ** ProductDetail
    , ProductDetail (..)
    , newProductDetail

    -- ** VoluntaryNutritionFact
    , VoluntaryNutritionFact (..)
    , newVoluntaryNutritionFact

    -- ** AccountsProductsGetInclude
    , AccountsProductsGetInclude (..)

    -- ** AccountsProductsListInclude
    , AccountsProductsListInclude (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Manufacturers.Internal.Product
import Gogol.Manufacturers.Internal.Sum

-- | Default request referring to version @v1@ of the Manufacturer Center API. This contains the host and root path used as a starting point for constructing service requests.
manufacturersService :: Core.ServiceConfig
manufacturersService
  = Core.defaultService
      (Core.ServiceId "manufacturers:v1")
      "manufacturers.googleapis.com"

-- | Manage your product listings for Google Manufacturer Center
type Manufacturercenter'FullControl = "https://www.googleapis.com/auth/manufacturercenter"
