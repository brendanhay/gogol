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
-- Module      : Gogol.Indexing.UrlNotifications.GetMetadata
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets metadata about a Web Document. This method can /only/ be used to query URLs that were previously seen in successful Indexing API notifications. Includes the latest @UrlNotification@ received via this API.
--
-- /See:/ <https://developers.google.com/search/apis/indexing-api/ Indexing API Reference> for @indexing.urlNotifications.getMetadata@.
module Gogol.Indexing.UrlNotifications.GetMetadata
  ( -- * Resource
    IndexingUrlNotificationsGetMetadataResource,

    -- ** Constructing a Request
    newIndexingUrlNotificationsGetMetadata,
    IndexingUrlNotificationsGetMetadata,
  )
where

import Gogol.Indexing.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @indexing.urlNotifications.getMetadata@ method which the
-- 'IndexingUrlNotificationsGetMetadata' request conforms to.
type IndexingUrlNotificationsGetMetadataResource =
  "v3"
    Core.:> "urlNotifications"
    Core.:> "metadata"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "url" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] UrlNotificationMetadata

-- | Gets metadata about a Web Document. This method can /only/ be used to query URLs that were previously seen in successful Indexing API notifications. Includes the latest @UrlNotification@ received via this API.
--
-- /See:/ 'newIndexingUrlNotificationsGetMetadata' smart constructor.
data IndexingUrlNotificationsGetMetadata = IndexingUrlNotificationsGetMetadata
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text),
    -- | URL that is being queried.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IndexingUrlNotificationsGetMetadata' with the minimum fields required to make a request.
newIndexingUrlNotificationsGetMetadata ::
  IndexingUrlNotificationsGetMetadata
newIndexingUrlNotificationsGetMetadata =
  IndexingUrlNotificationsGetMetadata
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing,
      url = Core.Nothing
    }

instance
  Core.GoogleRequest
    IndexingUrlNotificationsGetMetadata
  where
  type
    Rs IndexingUrlNotificationsGetMetadata =
      UrlNotificationMetadata
  type
    Scopes IndexingUrlNotificationsGetMetadata =
      '["https://www.googleapis.com/auth/indexing"]
  requestClient IndexingUrlNotificationsGetMetadata {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      url
      (Core.Just Core.AltJSON)
      indexingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                IndexingUrlNotificationsGetMetadataResource
          )
          Core.mempty
