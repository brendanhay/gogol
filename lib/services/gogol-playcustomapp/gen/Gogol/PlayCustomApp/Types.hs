{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.PlayCustomApp.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.PlayCustomApp.Types
  ( -- * Configuration
    playCustomAppService,

    -- * OAuth Scopes
    Androidpublisher'FullControl,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** CustomApp
    CustomApp (..),
    newCustomApp,

    -- ** Organization
    Organization (..),
    newOrganization,
  )
where

import Gogol.PlayCustomApp.Internal.Product
import Gogol.PlayCustomApp.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v1@ of the Google Play Custom App Publishing API. This contains the host and root path used as a starting point for constructing service requests.
playCustomAppService :: Core.ServiceConfig
playCustomAppService =
  Core.defaultService
    (Core.ServiceId "playcustomapp:v1")
    "playcustomapp.googleapis.com"

-- | View and manage your Google Play Developer account
type Androidpublisher'FullControl =
  "https://www.googleapis.com/auth/androidpublisher"
