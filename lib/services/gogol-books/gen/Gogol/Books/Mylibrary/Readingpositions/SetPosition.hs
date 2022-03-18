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
-- Module      : Gogol.Books.Mylibrary.Readingpositions.SetPosition
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets my reading position information for a volume.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.mylibrary.readingpositions.setPosition@.
module Gogol.Books.Mylibrary.Readingpositions.SetPosition
    (
    -- * Resource
      BooksMylibraryReadingpositionsSetPositionResource

    -- ** Constructing a Request
    , newBooksMylibraryReadingpositionsSetPosition
    , BooksMylibraryReadingpositionsSetPosition
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Books.Types

-- | A resource alias for @books.mylibrary.readingpositions.setPosition@ method which the
-- 'BooksMylibraryReadingpositionsSetPosition' request conforms to.
type BooksMylibraryReadingpositionsSetPositionResource
     =
     "books" Core.:>
       "v1" Core.:>
         "mylibrary" Core.:>
           "readingpositions" Core.:>
             Core.Capture "volumeId" Core.Text Core.:>
               "setPosition" Core.:>
                 Core.QueryParam "position" Core.Text Core.:>
                   Core.QueryParam "timestamp" Core.Text Core.:>
                     Core.QueryParam "$.xgafv" Xgafv Core.:>
                       Core.QueryParam "access_token" Core.Text Core.:>
                         Core.QueryParam "action"
                           MylibraryReadingpositionsSetPositionAction
                           Core.:>
                           Core.QueryParam "callback" Core.Text Core.:>
                             Core.QueryParam "contentVersion" Core.Text Core.:>
                               Core.QueryParam "deviceCookie" Core.Text Core.:>
                                 Core.QueryParam "source" Core.Text Core.:>
                                   Core.QueryParam "uploadType" Core.Text
                                     Core.:>
                                     Core.QueryParam "upload_protocol" Core.Text
                                       Core.:>
                                       Core.QueryParam "alt" Core.AltJSON
                                         Core.:> Core.Post '[Core.JSON] Empty

-- | Sets my reading position information for a volume.
--
-- /See:/ 'newBooksMylibraryReadingpositionsSetPosition' smart constructor.
data BooksMylibraryReadingpositionsSetPosition = BooksMylibraryReadingpositionsSetPosition
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | Action that caused this reading position to be set.
    , action :: (Core.Maybe MylibraryReadingpositionsSetPositionAction)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Volume content version for which this reading position applies.
    , contentVersion :: (Core.Maybe Core.Text)
      -- | Random persistent device cookie optional on set position.
    , deviceCookie :: (Core.Maybe Core.Text)
      -- | Position string for the new volume reading position.
    , position :: Core.Text
      -- | String to identify the originator of this request.
    , source :: (Core.Maybe Core.Text)
      -- | RFC 3339 UTC format timestamp associated with this reading position.
    , timestamp :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | ID of volume for which to update the reading position.
    , volumeId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMylibraryReadingpositionsSetPosition' with the minimum fields required to make a request.
newBooksMylibraryReadingpositionsSetPosition 
    ::  Core.Text
       -- ^  Position string for the new volume reading position. See 'position'.
    -> Core.Text
       -- ^  RFC 3339 UTC format timestamp associated with this reading position. See 'timestamp'.
    -> Core.Text
       -- ^  ID of volume for which to update the reading position. See 'volumeId'.
    -> BooksMylibraryReadingpositionsSetPosition
newBooksMylibraryReadingpositionsSetPosition position timestamp volumeId =
  BooksMylibraryReadingpositionsSetPosition
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , action = Core.Nothing
    , callback = Core.Nothing
    , contentVersion = Core.Nothing
    , deviceCookie = Core.Nothing
    , position = position
    , source = Core.Nothing
    , timestamp = timestamp
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , volumeId = volumeId
    }

instance Core.GoogleRequest
           BooksMylibraryReadingpositionsSetPosition
         where
        type Rs BooksMylibraryReadingpositionsSetPosition =
             Empty
        type Scopes BooksMylibraryReadingpositionsSetPosition
             = '["https://www.googleapis.com/auth/books"]
        requestClient
          BooksMylibraryReadingpositionsSetPosition{..}
          = go volumeId (Core.Just position)
              (Core.Just timestamp)
              xgafv
              accessToken
              action
              callback
              contentVersion
              deviceCookie
              source
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              booksService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           BooksMylibraryReadingpositionsSetPositionResource)
                      Core.mempty

