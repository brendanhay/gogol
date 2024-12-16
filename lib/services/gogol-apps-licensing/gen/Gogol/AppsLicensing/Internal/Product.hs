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
-- Module      : Gogol.AppsLicensing.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AppsLicensing.Internal.Product
  (

    -- * Empty
    Empty (..),
    newEmpty,

    -- * LicenseAssignment
    LicenseAssignment (..),
    newLicenseAssignment,

    -- * LicenseAssignmentInsert
    LicenseAssignmentInsert (..),
    newLicenseAssignmentInsert,

    -- * LicenseAssignmentList
    LicenseAssignmentList (..),
    newLicenseAssignmentList,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.AppsLicensing.Internal.Sum

-- | A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
--
-- /See:/ 'newEmpty' smart constructor.
data Empty = Empty
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
newEmpty 
    ::  Empty
newEmpty = Empty

instance Core.FromJSON Empty where
        parseJSON
          = Core.withObject "Empty" (\ o -> Core.pure Empty)

instance Core.ToJSON Empty where
        toJSON = Core.const Core.emptyObject


-- | Representation of a license assignment.
--
-- /See:/ 'newLicenseAssignment' smart constructor.
data LicenseAssignment = LicenseAssignment
    {
      -- | ETag of the resource.
      etags :: (Core.Maybe Core.Text)
      -- | Identifies the resource as a LicenseAssignment, which is @licensing#licenseAssignment@.
    , kind :: Core.Text
      -- | A product\'s unique identifier. For more information about products in this version of the API, see Product and SKU IDs.
    , productId :: (Core.Maybe Core.Text)
      -- | Display Name of the product.
    , productName :: (Core.Maybe Core.Text)
      -- | Link to this page.
    , selfLink :: (Core.Maybe Core.Text)
      -- | A product SKU\'s unique identifier. For more information about available SKUs in this version of the API, see Products and SKUs.
    , skuId :: (Core.Maybe Core.Text)
      -- | Display Name of the sku of the product.
    , skuName :: (Core.Maybe Core.Text)
      -- | The user\'s current primary email address. If the user\'s email address changes, use the new email address in your API requests. Since a @userId@ is subject to change, do not use a @userId@ value as a key for persistent data. This key could break if the current user\'s email address changes. If the @userId@ is suspended, the license status changes.
    , userId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LicenseAssignment' with the minimum fields required to make a request.
newLicenseAssignment 
    ::  LicenseAssignment
newLicenseAssignment =
  LicenseAssignment
    { etags = Core.Nothing
    , kind = "licensing#licenseAssignment"
    , productId = Core.Nothing
    , productName = Core.Nothing
    , selfLink = Core.Nothing
    , skuId = Core.Nothing
    , skuName = Core.Nothing
    , userId = Core.Nothing
    }

instance Core.FromJSON LicenseAssignment where
        parseJSON
          = Core.withObject "LicenseAssignment"
              (\ o ->
                 LicenseAssignment Core.<$>
                   (o Core..:? "etags") Core.<*>
                     (o Core..:? "kind" Core..!=
                        "licensing#licenseAssignment")
                     Core.<*> (o Core..:? "productId")
                     Core.<*> (o Core..:? "productName")
                     Core.<*> (o Core..:? "selfLink")
                     Core.<*> (o Core..:? "skuId")
                     Core.<*> (o Core..:? "skuName")
                     Core.<*> (o Core..:? "userId"))

instance Core.ToJSON LicenseAssignment where
        toJSON LicenseAssignment{..}
          = Core.object
              (Core.catMaybes
                 [("etags" Core..=) Core.<$> etags,
                  Core.Just ("kind" Core..= kind),
                  ("productId" Core..=) Core.<$> productId,
                  ("productName" Core..=) Core.<$> productName,
                  ("selfLink" Core..=) Core.<$> selfLink,
                  ("skuId" Core..=) Core.<$> skuId,
                  ("skuName" Core..=) Core.<$> skuName,
                  ("userId" Core..=) Core.<$> userId])


-- | Representation of a license assignment.
--
-- /See:/ 'newLicenseAssignmentInsert' smart constructor.
newtype LicenseAssignmentInsert = LicenseAssignmentInsert
    {
      -- | Email id of the user
      userId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LicenseAssignmentInsert' with the minimum fields required to make a request.
newLicenseAssignmentInsert 
    ::  LicenseAssignmentInsert
newLicenseAssignmentInsert = LicenseAssignmentInsert {userId = Core.Nothing}

instance Core.FromJSON LicenseAssignmentInsert where
        parseJSON
          = Core.withObject "LicenseAssignmentInsert"
              (\ o ->
                 LicenseAssignmentInsert Core.<$>
                   (o Core..:? "userId"))

instance Core.ToJSON LicenseAssignmentInsert where
        toJSON LicenseAssignmentInsert{..}
          = Core.object
              (Core.catMaybes [("userId" Core..=) Core.<$> userId])


--
-- /See:/ 'newLicenseAssignmentList' smart constructor.
data LicenseAssignmentList = LicenseAssignmentList
    {
      -- | ETag of the resource.
      etag :: (Core.Maybe Core.Text)
      -- | The LicenseAssignments in this page of results.
    , items :: (Core.Maybe [LicenseAssignment])
      -- | Identifies the resource as a collection of LicenseAssignments.
    , kind :: Core.Text
      -- | The token that you must submit in a subsequent request to retrieve additional license results matching your query parameters. The @maxResults@ query string is related to the @nextPageToken@ since @maxResults@ determines how many entries are returned on each next page.
    , nextPageToken :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LicenseAssignmentList' with the minimum fields required to make a request.
newLicenseAssignmentList 
    ::  LicenseAssignmentList
newLicenseAssignmentList =
  LicenseAssignmentList
    { etag = Core.Nothing
    , items = Core.Nothing
    , kind = "licensing#licenseAssignmentList"
    , nextPageToken = Core.Nothing
    }

instance Core.FromJSON LicenseAssignmentList where
        parseJSON
          = Core.withObject "LicenseAssignmentList"
              (\ o ->
                 LicenseAssignmentList Core.<$>
                   (o Core..:? "etag") Core.<*> (o Core..:? "items")
                     Core.<*>
                     (o Core..:? "kind" Core..!=
                        "licensing#licenseAssignmentList")
                     Core.<*> (o Core..:? "nextPageToken"))

instance Core.ToJSON LicenseAssignmentList where
        toJSON LicenseAssignmentList{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("items" Core..=) Core.<$> items,
                  Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken])

