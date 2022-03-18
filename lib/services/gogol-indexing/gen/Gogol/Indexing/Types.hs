{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Indexing.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Indexing.Types
    (
    -- * Configuration
      indexingService

    -- * OAuth Scopes
    , indexingScope

    -- * Types

    -- ** Xgafv
    , Xgafv (..)

    -- ** PublishUrlNotificationResponse
    , PublishUrlNotificationResponse (..)
    , newPublishUrlNotificationResponse

    -- ** UrlNotification
    , UrlNotification (..)
    , newUrlNotification

    -- ** UrlNotification_Type
    , UrlNotification_Type (..)

    -- ** UrlNotificationMetadata
    , UrlNotificationMetadata (..)
    , newUrlNotificationMetadata
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Indexing.Internal.Product
import Gogol.Indexing.Internal.Sum

-- | Default request referring to version @v3@ of the Indexing API. This contains the host and root path used as a starting point for constructing service requests.
indexingService :: Core.ServiceConfig
indexingService
  = Core.defaultService (Core.ServiceId "indexing:v3")
      "indexing.googleapis.com"

-- | Submit data to Google for indexing
indexingScope :: Core.Proxy '["https://www.googleapis.com/auth/indexing"]
indexingScope = Core.Proxy
