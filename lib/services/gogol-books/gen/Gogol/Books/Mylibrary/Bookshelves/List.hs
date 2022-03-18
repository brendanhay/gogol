{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Books.Mylibrary.Bookshelves.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of bookshelves belonging to the authenticated user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.list@.
module Gogol.Books.Mylibrary.Bookshelves.List
    (
    -- * Resource
      BooksMylibraryBookshelvesListResource

    -- ** Constructing a Request
    , newBooksMylibraryBookshelvesList
    , BooksMylibraryBookshelvesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Books.Types

-- | A resource alias for @books.mylibrary.bookshelves.list@ method which the
-- 'BooksMylibraryBookshelvesList' request conforms to.
type BooksMylibraryBookshelvesListResource =
     "books" Core.:>
       "v1" Core.:>
         "mylibrary" Core.:>
           "bookshelves" Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "source" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON] Bookshelves

-- | Retrieves a list of bookshelves belonging to the authenticated user.
--
-- /See:/ 'newBooksMylibraryBookshelvesList' smart constructor.
data BooksMylibraryBookshelvesList = BooksMylibraryBookshelvesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | String to identify the originator of this request.
    , source :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryBookshelvesList' with the minimum fields required to make a request.
newBooksMylibraryBookshelvesList 
    ::  BooksMylibraryBookshelvesList
newBooksMylibraryBookshelvesList =
  BooksMylibraryBookshelvesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , source = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           BooksMylibraryBookshelvesList
         where
        type Rs BooksMylibraryBookshelvesList = Bookshelves
        type Scopes BooksMylibraryBookshelvesList =
             '["https://www.googleapis.com/auth/books"]
        requestClient BooksMylibraryBookshelvesList{..}
          = go xgafv accessToken callback source uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              booksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy BooksMylibraryBookshelvesListResource)
                      Core.mempty

