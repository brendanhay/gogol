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
-- Module      : Network.Google.Indexing.UrlNotifications.Publish
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notifies that a URL has been updated or deleted.
--
-- /See:/ <https://developers.google.com/search/apis/indexing-api/ Indexing API Reference> for @indexing.urlNotifications.publish@.
module Network.Google.Indexing.UrlNotifications.Publish
  ( -- * Resource
    IndexingUrlNotificationsPublishResource,

    -- ** Constructing a Request
    newIndexingUrlNotificationsPublish,
    IndexingUrlNotificationsPublish,
  )
where

import Network.Google.Indexing.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @indexing.urlNotifications.publish@ method which the
-- 'IndexingUrlNotificationsPublish' request conforms to.
type IndexingUrlNotificationsPublishResource =
  "v3"
    Core.:> "urlNotifications:publish"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] UrlNotification
    Core.:> Core.Post '[Core.JSON] PublishUrlNotificationResponse

-- | Notifies that a URL has been updated or deleted.
--
-- /See:/ 'newIndexingUrlNotificationsPublish' smart constructor.
data IndexingUrlNotificationsPublish = IndexingUrlNotificationsPublish
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: UrlNotification,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IndexingUrlNotificationsPublish' with the minimum fields required to make a request.
newIndexingUrlNotificationsPublish ::
  -- |  Multipart request metadata. See 'payload'.
  UrlNotification ->
  IndexingUrlNotificationsPublish
newIndexingUrlNotificationsPublish payload =
  IndexingUrlNotificationsPublish
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    IndexingUrlNotificationsPublish
  where
  type
    Rs IndexingUrlNotificationsPublish =
      PublishUrlNotificationResponse
  type
    Scopes IndexingUrlNotificationsPublish =
      '["https://www.googleapis.com/auth/indexing"]
  requestClient IndexingUrlNotificationsPublish {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      indexingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy IndexingUrlNotificationsPublishResource
          )
          Core.mempty
