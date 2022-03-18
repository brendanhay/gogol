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
-- Module      : Network.Google.AndroidPublisher.Users.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all users with access to a developer account.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Android Developer API Reference> for @androidpublisher.users.list@.
module Network.Google.AndroidPublisher.Users.List
  ( -- * Resource
    AndroidPublisherUsersListResource,

    -- ** Constructing a Request
    newAndroidPublisherUsersList,
    AndroidPublisherUsersList,
  )
where

import Network.Google.AndroidPublisher.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @androidpublisher.users.list@ method which the
-- 'AndroidPublisherUsersList' request conforms to.
type AndroidPublisherUsersListResource =
  "androidpublisher"
    Core.:> "v3"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "users"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListUsersResponse

-- | Lists all users with access to a developer account.
--
-- /See:/ 'newAndroidPublisherUsersList' smart constructor.
data AndroidPublisherUsersList = AndroidPublisherUsersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The maximum number of results to return. This must be set to -1 to disable pagination.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token received from a previous call to this method, in order to retrieve further results.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. The developer account to fetch users from. Format: developers\/{developer}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidPublisherUsersList' with the minimum fields required to make a request.
newAndroidPublisherUsersList ::
  -- |  Required. The developer account to fetch users from. Format: developers\/{developer} See 'parent'.
  Core.Text ->
  AndroidPublisherUsersList
newAndroidPublisherUsersList parent =
  AndroidPublisherUsersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest AndroidPublisherUsersList where
  type Rs AndroidPublisherUsersList = ListUsersResponse
  type
    Scopes AndroidPublisherUsersList =
      '["https://www.googleapis.com/auth/androidpublisher"]
  requestClient AndroidPublisherUsersList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      androidPublisherService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AndroidPublisherUsersListResource
          )
          Core.mempty
