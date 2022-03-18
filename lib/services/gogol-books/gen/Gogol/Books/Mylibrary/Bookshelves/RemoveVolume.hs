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
-- Module      : Gogol.Books.Mylibrary.Bookshelves.RemoveVolume
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a volume from a bookshelf.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.removeVolume@.
module Gogol.Books.Mylibrary.Bookshelves.RemoveVolume
    (
    -- * Resource
      BooksMylibraryBookshelvesRemoveVolumeResource

    -- ** Constructing a Request
    , newBooksMylibraryBookshelvesRemoveVolume
    , BooksMylibraryBookshelvesRemoveVolume
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Books.Types

-- | A resource alias for @books.mylibrary.bookshelves.removeVolume@ method which the
-- 'BooksMylibraryBookshelvesRemoveVolume' request conforms to.
type BooksMylibraryBookshelvesRemoveVolumeResource =
     "books" Core.:>
       "v1" Core.:>
         "mylibrary" Core.:>
           "bookshelves" Core.:>
             Core.Capture "shelf" Core.Text Core.:>
               "removeVolume" Core.:>
                 Core.QueryParam "volumeId" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "reason"
                           MylibraryBookshelvesRemoveVolumeReason
                           Core.:>
                           Core.QueryParam "source" Core.Text Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Post '[Core.JSON] Empty

-- | Removes a volume from a bookshelf.
--
-- /See:/ 'newBooksMylibraryBookshelvesRemoveVolume' smart constructor.
data BooksMylibraryBookshelvesRemoveVolume = BooksMylibraryBookshelvesRemoveVolume
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The reason for which the book is removed from the library.
    , reason :: (Core.Maybe MylibraryBookshelvesRemoveVolumeReason)
      -- | ID of bookshelf from which to remove a volume.
    , shelf :: Core.Text
      -- | String to identify the originator of this request.
    , source :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | ID of volume to remove.
    , volumeId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryBookshelvesRemoveVolume' with the minimum fields required to make a request.
newBooksMylibraryBookshelvesRemoveVolume 
    ::  Core.Text
       -- ^  ID of bookshelf from which to remove a volume. See 'shelf'.
    -> Core.Text
       -- ^  ID of volume to remove. See 'volumeId'.
    -> BooksMylibraryBookshelvesRemoveVolume
newBooksMylibraryBookshelvesRemoveVolume shelf volumeId =
  BooksMylibraryBookshelvesRemoveVolume
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
           BooksMylibraryBookshelvesRemoveVolume
         where
        type Rs BooksMylibraryBookshelvesRemoveVolume = Empty
        type Scopes BooksMylibraryBookshelvesRemoveVolume =
             '["https://www.googleapis.com/auth/books"]
        requestClient
          BooksMylibraryBookshelvesRemoveVolume{..}
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
                           BooksMylibraryBookshelvesRemoveVolumeResource)
                      Core.mempty

