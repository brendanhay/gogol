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
-- Module      : Gogol.Books.Mylibrary.Bookshelves.MoveVolume
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves a volume within a bookshelf.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.bookshelves.moveVolume@.
module Gogol.Books.Mylibrary.Bookshelves.MoveVolume
  ( -- * Resource
    BooksMylibraryBookshelvesMoveVolumeResource,

    -- ** Constructing a Request
    newBooksMylibraryBookshelvesMoveVolume,
    BooksMylibraryBookshelvesMoveVolume,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.mylibrary.bookshelves.moveVolume@ method which the
-- 'BooksMylibraryBookshelvesMoveVolume' request conforms to.
type BooksMylibraryBookshelvesMoveVolumeResource =
  "books"
    Core.:> "v1"
    Core.:> "mylibrary"
    Core.:> "bookshelves"
    Core.:> Core.Capture "shelf" Core.Text
    Core.:> "moveVolume"
    Core.:> Core.QueryParam "volumeId" Core.Text
    Core.:> Core.QueryParam "volumePosition" Core.Int32
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Empty

-- | Moves a volume within a bookshelf.
--
-- /See:/ 'newBooksMylibraryBookshelvesMoveVolume' smart constructor.
data BooksMylibraryBookshelvesMoveVolume = BooksMylibraryBookshelvesMoveVolume
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ID of bookshelf with the volume.
    shelf :: Core.Text,
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | ID of volume to move.
    volumeId :: Core.Text,
    -- | Position on shelf to move the item (0 puts the item before the current first item, 1 puts it between the first and the second and so on.)
    volumePosition :: Core.Int32
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryBookshelvesMoveVolume' with the minimum fields required to make a request.
newBooksMylibraryBookshelvesMoveVolume ::
  -- |  ID of bookshelf with the volume. See 'shelf'.
  Core.Text ->
  -- |  ID of volume to move. See 'volumeId'.
  Core.Text ->
  -- |  Position on shelf to move the item (0 puts the item before the current first item, 1 puts it between the first and the second and so on.) See 'volumePosition'.
  Core.Int32 ->
  BooksMylibraryBookshelvesMoveVolume
newBooksMylibraryBookshelvesMoveVolume shelf volumeId volumePosition =
  BooksMylibraryBookshelvesMoveVolume
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      shelf = shelf,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = volumeId,
      volumePosition = volumePosition
    }

instance
  Core.GoogleRequest
    BooksMylibraryBookshelvesMoveVolume
  where
  type Rs BooksMylibraryBookshelvesMoveVolume = Empty
  type
    Scopes BooksMylibraryBookshelvesMoveVolume =
      '[Books'FullControl]
  requestClient BooksMylibraryBookshelvesMoveVolume {..} =
    go
      shelf
      (Core.Just volumeId)
      (Core.Just volumePosition)
      xgafv
      accessToken
      callback
      source
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                BooksMylibraryBookshelvesMoveVolumeResource
          )
          Core.mempty
