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
-- Module      : Gogol.Books.Mylibrary.Bookshelves.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves metadata for a specific bookshelf belonging to the authenticated user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.get@.
module Gogol.Books.Mylibrary.Bookshelves.Get
    (
    -- * Resource
      BooksMylibraryBookshelvesGetResource

    -- ** Constructing a Request
    , BooksMylibraryBookshelvesGet (..)
    , newBooksMylibraryBookshelvesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Books.Types

-- | A resource alias for @books.mylibrary.bookshelves.get@ method which the
-- 'BooksMylibraryBookshelvesGet' request conforms to.
type BooksMylibraryBookshelvesGetResource =
     "books" Core.:>
       "v1" Core.:>
         "mylibrary" Core.:>
           "bookshelves" Core.:>
             Core.Capture "shelf" Core.Text Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "source" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] Bookshelf

-- | Retrieves metadata for a specific bookshelf belonging to the authenticated user.
--
-- /See:/ 'newBooksMylibraryBookshelvesGet' smart constructor.
data BooksMylibraryBookshelvesGet = BooksMylibraryBookshelvesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | ID of bookshelf to retrieve.
    , shelf :: Core.Text
      -- | String to identify the originator of this request.
    , source :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryBookshelvesGet' with the minimum fields required to make a request.
newBooksMylibraryBookshelvesGet 
    ::  Core.Text
       -- ^  ID of bookshelf to retrieve. See 'shelf'.
    -> BooksMylibraryBookshelvesGet
newBooksMylibraryBookshelvesGet shelf =
  BooksMylibraryBookshelvesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , shelf = shelf
    , source = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BooksMylibraryBookshelvesGet
         where
        type Rs BooksMylibraryBookshelvesGet = Bookshelf
        type Scopes BooksMylibraryBookshelvesGet =
             '[Books'FullControl]
        requestClient BooksMylibraryBookshelvesGet{..}
          = go shelf xgafv accessToken callback source
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              booksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BooksMylibraryBookshelvesGetResource)
                      Core.mempty

