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
-- Module      : Gogol.AppState.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.AppState.Types
    (
    -- * Configuration
      appStateService

    -- * OAuth Scopes
    , appStateScope

    -- * Types

    -- ** GetResponse
    , GetResponse (..)
    , newGetResponse

    -- ** ListResponse
    , ListResponse (..)
    , newListResponse

    -- ** UpdateRequest
    , UpdateRequest (..)
    , newUpdateRequest

    -- ** WriteResult
    , WriteResult (..)
    , newWriteResult
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AppState.Internal.Product
import Gogol.AppState.Internal.Sum

-- | Default request referring to version @v1@ of the Google App State API. This contains the host and root path used as a starting point for constructing service requests.
appStateService :: Core.ServiceConfig
appStateService
  = Core.defaultService (Core.ServiceId "appstate:v1")
      "www.googleapis.com"

-- | View and manage your data for this application
appStateScope :: Core.Proxy '["https://www.googleapis.com/auth/appstate"]
appStateScope = Core.Proxy
