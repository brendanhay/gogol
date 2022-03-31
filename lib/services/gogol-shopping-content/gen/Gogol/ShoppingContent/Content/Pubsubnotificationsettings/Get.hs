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
-- Module      : Gogol.ShoppingContent.Content.Pubsubnotificationsettings.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a Merchant Center account\'s pubsub notification settings.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pubsubnotificationsettings.get@.
module Gogol.ShoppingContent.Content.Pubsubnotificationsettings.Get
  ( -- * Resource
    ContentPubsubnotificationsettingsGetResource,

    -- ** Constructing a Request
    newContentPubsubnotificationsettingsGet,
    ContentPubsubnotificationsettingsGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.ShoppingContent.Types

-- | A resource alias for @content.pubsubnotificationsettings.get@ method which the
-- 'ContentPubsubnotificationsettingsGet' request conforms to.
type ContentPubsubnotificationsettingsGetResource =
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
    Core.:> Core.Get '[Core.JSON] PubsubNotificationSettings

-- | Retrieves a Merchant Center account\'s pubsub notification settings.
--
-- /See:/ 'newContentPubsubnotificationsettingsGet' smart constructor.
data ContentPubsubnotificationsettingsGet = ContentPubsubnotificationsettingsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The ID of the account for which to get pubsub notification settings.
    merchantId :: Core.Word64,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ContentPubsubnotificationsettingsGet' with the minimum fields required to make a request.
newContentPubsubnotificationsettingsGet ::
  -- |  The ID of the account for which to get pubsub notification settings. See 'merchantId'.
  Core.Word64 ->
  ContentPubsubnotificationsettingsGet
newContentPubsubnotificationsettingsGet merchantId =
  ContentPubsubnotificationsettingsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      merchantId = merchantId,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ContentPubsubnotificationsettingsGet
  where
  type
    Rs ContentPubsubnotificationsettingsGet =
      PubsubNotificationSettings
  type
    Scopes ContentPubsubnotificationsettingsGet =
      '[Content'FullControl]
  requestClient
    ContentPubsubnotificationsettingsGet {..} =
      go
        merchantId
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        shoppingContentService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ContentPubsubnotificationsettingsGetResource
            )
            Core.mempty
