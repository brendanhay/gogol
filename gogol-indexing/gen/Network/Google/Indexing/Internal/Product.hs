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
-- Module      : Network.Google.Indexing.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Indexing.Internal.Product
  ( -- * PublishUrlNotificationResponse
    PublishUrlNotificationResponse (..),
    newPublishUrlNotificationResponse,

    -- * UrlNotification
    UrlNotification (..),
    newUrlNotification,

    -- * UrlNotificationMetadata
    UrlNotificationMetadata (..),
    newUrlNotificationMetadata,
  )
where

import Network.Google.Indexing.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Output for PublishUrlNotification
--
-- /See:/ 'newPublishUrlNotificationResponse' smart constructor.
newtype PublishUrlNotificationResponse = PublishUrlNotificationResponse
  { -- | Description of the notification events received for this URL.
    urlNotificationMetadata :: (Core.Maybe UrlNotificationMetadata)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PublishUrlNotificationResponse' with the minimum fields required to make a request.
newPublishUrlNotificationResponse ::
  PublishUrlNotificationResponse
newPublishUrlNotificationResponse =
  PublishUrlNotificationResponse {urlNotificationMetadata = Core.Nothing}

instance Core.FromJSON PublishUrlNotificationResponse where
  parseJSON =
    Core.withObject
      "PublishUrlNotificationResponse"
      ( \o ->
          PublishUrlNotificationResponse
            Core.<$> (o Core..:? "urlNotificationMetadata")
      )

instance Core.ToJSON PublishUrlNotificationResponse where
  toJSON PublishUrlNotificationResponse {..} =
    Core.object
      ( Core.catMaybes
          [ ("urlNotificationMetadata" Core..=)
              Core.<$> urlNotificationMetadata
          ]
      )

-- | @UrlNotification@ is the resource used in all Indexing API calls. It describes one event in the life cycle of a Web Document.
--
-- /See:/ 'newUrlNotification' smart constructor.
data UrlNotification = UrlNotification
  { -- | Creation timestamp for this notification. Users should /not/ specify it, the field is ignored at the request time.
    notifyTime :: (Core.Maybe Core.DateTime'),
    -- | The URL life cycle event that Google is being notified about.
    type' :: (Core.Maybe UrlNotification_Type),
    -- | The object of this notification. The URL must be owned by the publisher of this notification and, in case of @URL_UPDATED@ notifications, it /must/ be crawlable by Google.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlNotification' with the minimum fields required to make a request.
newUrlNotification ::
  UrlNotification
newUrlNotification =
  UrlNotification
    { notifyTime = Core.Nothing,
      type' = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON UrlNotification where
  parseJSON =
    Core.withObject
      "UrlNotification"
      ( \o ->
          UrlNotification
            Core.<$> (o Core..:? "notifyTime")
            Core.<*> (o Core..:? "type")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON UrlNotification where
  toJSON UrlNotification {..} =
    Core.object
      ( Core.catMaybes
          [ ("notifyTime" Core..=) Core.<$> notifyTime,
            ("type" Core..=) Core.<$> type',
            ("url" Core..=) Core.<$> url
          ]
      )

-- | Summary of the most recent Indexing API notifications successfully received, for a given URL.
--
-- /See:/ 'newUrlNotificationMetadata' smart constructor.
data UrlNotificationMetadata = UrlNotificationMetadata
  { -- | Latest notification received with type @URL_REMOVED@.
    latestRemove :: (Core.Maybe UrlNotification),
    -- | Latest notification received with type @URL_UPDATED@.
    latestUpdate :: (Core.Maybe UrlNotification),
    -- | URL to which this metadata refers.
    url :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'UrlNotificationMetadata' with the minimum fields required to make a request.
newUrlNotificationMetadata ::
  UrlNotificationMetadata
newUrlNotificationMetadata =
  UrlNotificationMetadata
    { latestRemove = Core.Nothing,
      latestUpdate = Core.Nothing,
      url = Core.Nothing
    }

instance Core.FromJSON UrlNotificationMetadata where
  parseJSON =
    Core.withObject
      "UrlNotificationMetadata"
      ( \o ->
          UrlNotificationMetadata
            Core.<$> (o Core..:? "latestRemove")
            Core.<*> (o Core..:? "latestUpdate")
            Core.<*> (o Core..:? "url")
      )

instance Core.ToJSON UrlNotificationMetadata where
  toJSON UrlNotificationMetadata {..} =
    Core.object
      ( Core.catMaybes
          [ ("latestRemove" Core..=) Core.<$> latestRemove,
            ("latestUpdate" Core..=) Core.<$> latestUpdate,
            ("url" Core..=) Core.<$> url
          ]
      )
