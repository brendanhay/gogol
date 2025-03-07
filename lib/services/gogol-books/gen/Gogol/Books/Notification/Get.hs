{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Books.Notification.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns notification details for a given notification id.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.notification.get@.
module Gogol.Books.Notification.Get
  ( -- * Resource
    BooksNotificationGetResource,

    -- ** Constructing a Request
    BooksNotificationGet (..),
    newBooksNotificationGet,
  )
where

import Gogol.Books.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @books.notification.get@ method which the
-- 'BooksNotificationGet' request conforms to.
type BooksNotificationGetResource =
  "books"
    Core.:> "v1"
    Core.:> "notification"
    Core.:> "get"
    Core.:> Core.QueryParam "notification_id" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "locale" Core.Text
    Core.:> Core.QueryParam "source" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Notification

-- | Returns notification details for a given notification id.
--
-- /See:/ 'newBooksNotificationGet' smart constructor.
data BooksNotificationGet = BooksNotificationGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for generating notification title and body.
    locale :: (Core.Maybe Core.Text),
    -- | String to identify the notification.
    notificationId :: Core.Text,
    -- | String to identify the originator of this request.
    source :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksNotificationGet' with the minimum fields required to make a request.
newBooksNotificationGet ::
  -- |  String to identify the notification. See 'notificationId'.
  Core.Text ->
  BooksNotificationGet
newBooksNotificationGet notificationId =
  BooksNotificationGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      locale = Core.Nothing,
      notificationId = notificationId,
      source = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest BooksNotificationGet where
  type Rs BooksNotificationGet = Notification
  type Scopes BooksNotificationGet = '[Books'FullControl]
  requestClient BooksNotificationGet {..} =
    go
      (Core.Just notificationId)
      xgafv
      accessToken
      callback
      locale
      source
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy BooksNotificationGetResource)
          Core.mempty
