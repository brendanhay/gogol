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
-- Module      : Gogol.Indexing.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Indexing.Types
  ( -- * Configuration
    indexingService,

    -- * OAuth Scopes
    Indexing'FullControl,

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

import Gogol.Indexing.Internal.Product
import Gogol.Indexing.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v3@ of the Web Search Indexing API. This contains the host and root path used as a starting point for constructing service requests.
indexingService :: Core.ServiceConfig
indexingService =
  Core.defaultService
    (Core.ServiceId "indexing:v3")
    "indexing.googleapis.com"

-- | Submit data to Google for indexing
type Indexing'FullControl =
  "https://www.googleapis.com/auth/indexing"
