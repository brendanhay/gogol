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
-- Module      : Gogol.Indexing
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notifies Google when your web pages change.
--
-- /See:/ <https://developers.google.com/search/apis/indexing-api/ Indexing API Reference>
module Gogol.Indexing
  ( -- * Configuration
    indexingService,

    -- * OAuth Scopes
    indexingScope,

    -- * Resources

    -- ** indexing.urlNotifications.getMetadata
    IndexingUrlNotificationsGetMetadataResource,
    newIndexingUrlNotificationsGetMetadata,
    IndexingUrlNotificationsGetMetadata,

    -- ** indexing.urlNotifications.publish
    IndexingUrlNotificationsPublishResource,
    newIndexingUrlNotificationsPublish,
    IndexingUrlNotificationsPublish,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** PublishUrlNotificationResponse
    PublishUrlNotificationResponse (..),
    newPublishUrlNotificationResponse,

    -- ** UrlNotification
    UrlNotification (..),
    newUrlNotification,

    -- ** UrlNotification_Type
    UrlNotification_Type (..),

    -- ** UrlNotificationMetadata
    UrlNotificationMetadata (..),
    newUrlNotificationMetadata,
  )
where

import Gogol.Indexing.Types
import Gogol.Indexing.UrlNotifications.GetMetadata
import Gogol.Indexing.UrlNotifications.Publish
