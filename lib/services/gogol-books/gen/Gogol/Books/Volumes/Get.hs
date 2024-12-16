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
-- Module      : Gogol.Books.Volumes.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets volume information for a single volume.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.volumes.get@.
module Gogol.Books.Volumes.Get
    (
    -- * Resource
      BooksVolumesGetResource

    -- ** Constructing a Request
    , BooksVolumesGet (..)
    , newBooksVolumesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Books.Types

-- | A resource alias for @books.volumes.get@ method which the
-- 'BooksVolumesGet' request conforms to.
type BooksVolumesGetResource =
     "books" Core.:>
       "v1" Core.:>
         "volumes" Core.:>
           Core.Capture "volumeId" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "country" Core.Text Core.:>
                     Core.QueryParam "includeNonComicsSeries" Core.Bool
                       Core.:>
                       Core.QueryParam "partner" Core.Text Core.:>
                         Core.QueryParam "projection" VolumesGetProjection
                           Core.:>
                           Core.QueryParam "source" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "user_library_consistent_read"
                                   Core.Bool
                                   Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON] Volume

-- | Gets volume information for a single volume.
--
-- /See:/ 'newBooksVolumesGet' smart constructor.
data BooksVolumesGet = BooksVolumesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | ISO-3166-1 code to override the IP-based location.
    , country :: (Core.Maybe Core.Text)
      -- | Set to true to include non-comics series. Defaults to false.
    , includeNonComicsSeries :: (Core.Maybe Core.Bool)
      -- | Brand results for partner ID.
    , partner :: (Core.Maybe Core.Text)
      -- | Restrict information returned to a set of selected fields.
    , projection :: (Core.Maybe VolumesGetProjection)
      -- | string to identify the originator of this request.
    , source :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | 
    , userLibraryConsistentRead :: (Core.Maybe Core.Bool)
      -- | ID of volume to retrieve.
    , volumeId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksVolumesGet' with the minimum fields required to make a request.
newBooksVolumesGet 
    ::  Core.Text
       -- ^  ID of volume to retrieve. See 'volumeId'.
    -> BooksVolumesGet
newBooksVolumesGet volumeId =
  BooksVolumesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , country = Core.Nothing
    , includeNonComicsSeries = Core.Nothing
    , partner = Core.Nothing
    , projection = Core.Nothing
    , source = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userLibraryConsistentRead = Core.Nothing
    , volumeId = volumeId
    }

instance Core.GoogleRequest BooksVolumesGet where
        type Rs BooksVolumesGet = Volume
        type Scopes BooksVolumesGet = '[Books'FullControl]
        requestClient BooksVolumesGet{..}
          = go volumeId xgafv accessToken callback country
              includeNonComicsSeries
              partner
              projection
              source
              uploadType
              uploadProtocol
              userLibraryConsistentRead
              (Core.Just Core.AltJSON)
              booksService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy BooksVolumesGetResource)
                      Core.mempty

