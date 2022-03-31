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
-- Module      : Gogol.Books.Familysharing.Unshare
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates revoking content that has already been shared with the user\'s family. Empty response indicates success.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.familysharing.unshare@.
module Gogol.Books.Familysharing.Unshare
  ( -- * Resource
    BooksFamilysharingUnshareResource,

    -- ** Constructing a Request
    newBooksFamilysharingUnshare,
    BooksFamilysharingUnshare,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.familysharing.unshare@ method which the
-- 'BooksFamilysharingUnshare' request conforms to.
type BooksFamilysharingUnshareResource =
  "books"
    Core.:> "v1"
    Core.:> "familysharing"
    Core.:> "unshare"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "docId" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "volumeId" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Empty

-- | Initiates revoking content that has already been shared with the user\'s family. Empty response indicates success.
--
-- /See:/ 'newBooksFamilysharingUnshare' smart constructor.
data BooksFamilysharingUnshare = BooksFamilysharingUnshare
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The docid to unshare.
    docId :: (Core.Maybe Core.Text),
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | The volume to unshare.
    volumeId :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksFamilysharingUnshare' with the minimum fields required to make a request.
newBooksFamilysharingUnshare ::
  BooksFamilysharingUnshare
newBooksFamilysharingUnshare =
  BooksFamilysharingUnshare
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      docId = Core.Nothing,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      volumeId = Core.Nothing
    }

instance Core.GoogleRequest BooksFamilysharingUnshare where
  type Rs BooksFamilysharingUnshare = Empty
  type
    Scopes BooksFamilysharingUnshare =
      '[Books'FullControl]
  requestClient BooksFamilysharingUnshare {..} =
    go
      xgafv
      accessToken
      callback
      docId
      source
      uploadType
      uploadProtocol
      volumeId
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksFamilysharingUnshareResource
          )
          Core.mempty
