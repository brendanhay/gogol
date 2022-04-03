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
-- Module      : Gogol.Books.Mylibrary.Readingpositions.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves my reading position information for a volume.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.readingpositions.get@.
module Gogol.Books.Mylibrary.Readingpositions.Get
  ( -- * Resource
    BooksMylibraryReadingpositionsGetResource,

    -- ** Constructing a Request
    BooksMylibraryReadingpositionsGet (..),
    newBooksMylibraryReadingpositionsGet,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.mylibrary.readingpositions.get@ method which the
-- 'BooksMylibraryReadingpositionsGet' request conforms to.
type BooksMylibraryReadingpositionsGetResource =
  "books"
    Core.:> "v1"
    Core.:> "mylibrary"
    Core.:> "readingpositions"
    Core.:> Core.Capture "volumeId" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "contentVersion" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ReadingPosition

-- | Retrieves my reading position information for a volume.
--
-- /See:/ 'newBooksMylibraryReadingpositionsGet' smart constructor.
data BooksMylibraryReadingpositionsGet = BooksMylibraryReadingpositionsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Volume content version for which this reading position is requested.
    contentVersion :: (Core.Maybe Core.Text),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | ID of volume for which to retrieve a reading position.
    volumeId :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryReadingpositionsGet' with the minimum fields required to make a request.
newBooksMylibraryReadingpositionsGet ::
  -- |  ID of volume for which to retrieve a reading position. See 'volumeId'.
  Core.Text ->
  BooksMylibraryReadingpositionsGet
newBooksMylibraryReadingpositionsGet volumeId =
  BooksMylibraryReadingpositionsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      contentVersion = Core.Nothing,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = volumeId
    }

instance
  Core.GoogleRequest
    BooksMylibraryReadingpositionsGet
  where
  type
    Rs BooksMylibraryReadingpositionsGet =
      ReadingPosition
  type
    Scopes BooksMylibraryReadingpositionsGet =
      '[Books'FullControl]
  requestClient BooksMylibraryReadingpositionsGet {..} =
    go
      volumeId
      xgafv
      accessToken
      callback
      contentVersion
      source
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksMylibraryReadingpositionsGetResource
          )
          Core.mempty
