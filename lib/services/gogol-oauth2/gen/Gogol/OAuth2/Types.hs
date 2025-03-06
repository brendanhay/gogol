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
-- Module      : Gogol.OAuth2.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.OAuth2.Types
  ( -- * Configuration
    oAuth2Service,

    -- * OAuth Scopes
    Userinfo'Email,
    Userinfo'Profile,
    OAuth2'OpenID,

    -- * Types

    -- ** Tokeninfo
    Tokeninfo (..),
    newTokeninfo,

    -- ** Userinfo
    Userinfo (..),
    newUserinfo,
  )
where

import Gogol.OAuth2.Internal.Product
import Gogol.OAuth2.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v2@ of the Google OAuth2 API. This contains the host and root path used as a starting point for constructing service requests.
oAuth2Service :: Core.ServiceConfig
oAuth2Service =
  Core.defaultService
    (Core.ServiceId "oauth2:v2")
    "www.googleapis.com"

-- | See your primary Google Account email address
type Userinfo'Email =
  "https://www.googleapis.com/auth/userinfo.email"

-- | See your personal info, including any personal info you\'ve made publicly available
type Userinfo'Profile =
  "https://www.googleapis.com/auth/userinfo.profile"

-- | Associate you with your personal info on Google
type OAuth2'OpenID = "openid"
