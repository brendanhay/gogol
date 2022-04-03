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
-- Module      : Gogol.ShoppingContent.Content.Pubsubnotificationsettings.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Register a Merchant Center account for pubsub notifications. Note that cloud topic name shouldn\'t be provided as part of the request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pubsubnotificationsettings.update@.
module Gogol.ShoppingContent.Content.Pubsubnotificationsettings.Update
  ( -- * Resource
    ContentPubsubnotificationsettingsUpdateResource,

    -- ** Constructing a Request
    ContentPubsubnotificationsettingsUpdate (..),
    newContentPubsubnotificationsettingsUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.pubsubnotificationsettings.update@ method which the
-- 'ContentPubsubnotificationsettingsUpdate' request conforms to.
type ContentPubsubnotificationsettingsUpdateResource =
  "content"
    Core.:> "v2.1"
    Core.:> Core.Capture "merchantId" Core.Word64
    Core.:> "pubsubnotificationsettings"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] PubsubNotificationSettings
    Core.:> Core.Put '[Core.JSON] PubsubNotificationSettings

-- | Register a Merchant Center account for pubsub notifications. Note that cloud topic name shouldn\'t be provided as part of the request.
--
-- /See:/ 'newContentPubsubnotificationsettingsUpdate' smart constructor.
data ContentPubsubnotificationsettingsUpdate = ContentPubsubnotificationsettingsUpdate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the account.
    merchantId :: Core.Word64,
    -- | Multipart request metadata.
    payload :: PubsubNotificationSettings,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentPubsubnotificationsettingsUpdate' with the minimum fields required to make a request.
newContentPubsubnotificationsettingsUpdate ::
  -- |  The ID of the account. See 'merchantId'.
  Core.Word64 ->
  -- |  Multipart request metadata. See 'payload'.
  PubsubNotificationSettings ->
  ContentPubsubnotificationsettingsUpdate
newContentPubsubnotificationsettingsUpdate merchantId payload =
  ContentPubsubnotificationsettingsUpdate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentPubsubnotificationsettingsUpdate
  where
  type
    Rs ContentPubsubnotificationsettingsUpdate =
      PubsubNotificationSettings
  type
    Scopes ContentPubsubnotificationsettingsUpdate =
      '[Content'FullControl]
  requestClient
    ContentPubsubnotificationsettingsUpdate {..} =
      go
        merchantId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        shoppingContentService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContentPubsubnotificationsettingsUpdateResource
            )
            Core.mempty
