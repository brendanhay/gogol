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
-- Module      : Gogol.Books.Mylibrary.Bookshelves.AddVolume
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a volume to a bookshelf.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.addVolume@.
module Gogol.Books.Mylibrary.Bookshelves.AddVolume
    (
    -- * Resource
      BooksMylibraryBookshelvesAddVolumeResource

    -- ** Constructing a Request
    , newBooksMylibraryBookshelvesAddVolume
    , BooksMylibraryBookshelvesAddVolume
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Books.Types

-- | A resource alias for @books.mylibrary.bookshelves.addVolume@ method which the
-- 'BooksMylibraryBookshelvesAddVolume' request conforms to.
type BooksMylibraryBookshelvesAddVolumeResource =
     "books" Core.:>
       "v1" Core.:>
         "mylibrary" Core.:>
           "bookshelves" Core.:>
             Core.Capture "shelf" Core.Text Core.:>
               "addVolume" Core.:>
                 Core.QueryParam "volumeId" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "reason"
                           MylibraryBookshelvesAddVolumeReason
                           Core.:>
                           Core.QueryParam "source" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Post '[Core.JSON] Empty

-- | Adds a volume to a bookshelf.
--
-- /See:/ 'newBooksMylibraryBookshelvesAddVolume' smart constructor.
data BooksMylibraryBookshelvesAddVolume = BooksMylibraryBookshelvesAddVolume
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The reason for which the book is added to the library.
    , reason :: (Core.Maybe MylibraryBookshelvesAddVolumeReason)
      -- | ID of bookshelf to which to add a volume.
    , shelf :: Core.Text
      -- | String to identify the originator of this request.
    , source :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | ID of volume to add.
    , volumeId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryBookshelvesAddVolume' with the minimum fields required to make a request.
newBooksMylibraryBookshelvesAddVolume 
    ::  Core.Text
       -- ^  ID of bookshelf to which to add a volume. See 'shelf'.
    -> Core.Text
       -- ^  ID of volume to add. See 'volumeId'.
    -> BooksMylibraryBookshelvesAddVolume
newBooksMylibraryBookshelvesAddVolume shelf volumeId =
  BooksMylibraryBookshelvesAddVolume
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , reason = Core.Nothing
    , shelf = shelf
    , source = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , volumeId = volumeId
    }

instance Core.GoogleRequest
           BooksMylibraryBookshelvesAddVolume
         where
        type Rs BooksMylibraryBookshelvesAddVolume = Empty
        type Scopes BooksMylibraryBookshelvesAddVolume =
             '["https://www.googleapis.com/auth/books"]
        requestClient BooksMylibraryBookshelvesAddVolume{..}
          = go shelf (Core.Just volumeId) xgafv accessToken
              callback
              reason
              source
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              booksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BooksMylibraryBookshelvesAddVolumeResource)
                      Core.mempty

