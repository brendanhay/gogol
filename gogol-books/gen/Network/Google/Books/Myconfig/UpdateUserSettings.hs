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
-- Module      : Network.Google.Books.Myconfig.UpdateUserSettings
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the settings for the user. If a sub-object is specified, it will overwrite the existing sub-object stored in the server. Unspecified sub-objects will retain the existing value.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.myconfig.updateUserSettings@.
module Network.Google.Books.Myconfig.UpdateUserSettings
  ( -- * Resource
    BooksMyconfigUpdateUserSettingsResource,

    -- ** Constructing a Request
    newBooksMyconfigUpdateUserSettings,
    BooksMyconfigUpdateUserSettings,
  )
where

import Network.Google.Books.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @books.myconfig.updateUserSettings@ method which the
-- 'BooksMyconfigUpdateUserSettings' request conforms to.
type BooksMyconfigUpdateUserSettingsResource =
  "books"
    Core.:> "v1"
    Core.:> "myconfig"
    Core.:> "updateUserSettings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] Usersettings
    Core.:> Core.Post '[Core.JSON] Usersettings

-- | Sets the settings for the user. If a sub-object is specified, it will overwrite the existing sub-object stored in the server. Unspecified sub-objects will retain the existing value.
--
-- /See:/ 'newBooksMyconfigUpdateUserSettings' smart constructor.
data BooksMyconfigUpdateUserSettings = BooksMyconfigUpdateUserSettings
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: Usersettings,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'BooksMyconfigUpdateUserSettings' with the minimum fields required to make a request.
newBooksMyconfigUpdateUserSettings ::
  -- |  Multipart request metadata. See 'payload'.
  Usersettings ->
  BooksMyconfigUpdateUserSettings
newBooksMyconfigUpdateUserSettings payload =
  BooksMyconfigUpdateUserSettings
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    BooksMyconfigUpdateUserSettings
  where
  type
    Rs BooksMyconfigUpdateUserSettings =
      Usersettings
  type
    Scopes BooksMyconfigUpdateUserSettings =
      '["https://www.googleapis.com/auth/books"]
  requestClient BooksMyconfigUpdateUserSettings {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      booksService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy BooksMyconfigUpdateUserSettingsResource
          )
          Core.mempty
