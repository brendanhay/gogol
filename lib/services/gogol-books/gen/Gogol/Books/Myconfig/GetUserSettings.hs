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
-- Module      : Gogol.Books.Myconfig.GetUserSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the current settings for the user.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.myconfig.getUserSettings@.
module Gogol.Books.Myconfig.GetUserSettings
  ( -- * Resource
    BooksMyconfigGetUserSettingsResource,

    -- ** Constructing a Request
    BooksMyconfigGetUserSettings (..),
    newBooksMyconfigGetUserSettings,
  )
where

import Gogol.Books.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @books.myconfig.getUserSettings@ method which the
-- 'BooksMyconfigGetUserSettings' request conforms to.
type BooksMyconfigGetUserSettingsResource =
  "books"
    Core.:> "v1"
    Core.:> "myconfig"
    Core.:> "getUserSettings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "country" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Usersettings

-- | Gets the current settings for the user.
--
-- /See:/ 'newBooksMyconfigGetUserSettings' smart constructor.
data BooksMyconfigGetUserSettings = BooksMyconfigGetUserSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Unused. Added only to workaround TEX mandatory request template requirement
    country :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMyconfigGetUserSettings' with the minimum fields required to make a request.
newBooksMyconfigGetUserSettings ::
  BooksMyconfigGetUserSettings
newBooksMyconfigGetUserSettings =
  BooksMyconfigGetUserSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      country = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BooksMyconfigGetUserSettings
  where
  type Rs BooksMyconfigGetUserSettings = Usersettings
  type
    Scopes BooksMyconfigGetUserSettings =
      '[Books'FullControl]
  requestClient BooksMyconfigGetUserSettings {..} =
    go
      xgafv
      accessToken
      callback
      country
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksMyconfigGetUserSettingsResource
          )
          Core.mempty
