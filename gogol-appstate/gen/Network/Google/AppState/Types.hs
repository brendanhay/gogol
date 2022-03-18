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
-- Module      : Network.Google.AppState.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.AppState.Types
  ( -- * Configuration
    appStateService,

    -- * OAuth Scopes
    appStateScope,

    -- * Types

    -- ** GetResponse
    GetResponse (..),
    newGetResponse,

    -- ** ListResponse
    ListResponse (..),
    newListResponse,

    -- ** UpdateRequest
    UpdateRequest (..),
    newUpdateRequest,

    -- ** WriteResult
    WriteResult (..),
    newWriteResult,
  )
where

import Network.Google.AppState.Internal.Product
import Network.Google.AppState.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Google App State API. This contains the host and root path used as a starting point for constructing service requests.
appStateService :: Core.ServiceConfig
appStateService =
  Core.defaultService
    (Core.ServiceId "appstate:v1")
    "www.googleapis.com"

-- | View and manage your data for this application
appStateScope :: Core.Proxy '["https://www.googleapis.com/auth/appstate"]
appStateScope = Core.Proxy
