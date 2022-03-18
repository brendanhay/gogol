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
-- Module      : Network.Google.PlayCustomApp.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.PlayCustomApp.Types
  ( -- * Configuration
    playCustomAppService,

    -- * OAuth Scopes
    androidpublisherScope,

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

import Network.Google.PlayCustomApp.Internal.Product
import Network.Google.PlayCustomApp.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Google Play Custom App Publishing API. This contains the host and root path used as a starting point for constructing service requests.
playCustomAppService :: Core.ServiceConfig
playCustomAppService =
  Core.defaultService
    (Core.ServiceId "playcustomapp:v1")
    "playcustomapp.googleapis.com"

-- | View and manage your Google Play Developer account
androidpublisherScope :: Core.Proxy '["https://www.googleapis.com/auth/androidpublisher"]
androidpublisherScope = Core.Proxy
