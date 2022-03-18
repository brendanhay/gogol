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
-- Module      : Gogol.OAuth2.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.OAuth2.Types
    (
    -- * Configuration
      oAuth2Service

    -- * OAuth Scopes
    , userinfoEmailScope
    , userinfoProfileScope
    , openidScope

    -- * Types

    -- ** Tokeninfo
    , Tokeninfo (..)
    , newTokeninfo

    -- ** Userinfo
    , Userinfo (..)
    , newUserinfo
    ) where

import qualified Gogol.Prelude as Core
import Gogol.OAuth2.Internal.Product
import Gogol.OAuth2.Internal.Sum

-- | Default request referring to version @v2@ of the Google OAuth2 API. This contains the host and root path used as a starting point for constructing service requests.
oAuth2Service :: Core.ServiceConfig
oAuth2Service
  = Core.defaultService (Core.ServiceId "oauth2:v2")
      "www.googleapis.com"

-- | View your email address
userinfoEmailScope :: Core.Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userinfoEmailScope = Core.Proxy

-- | See your personal info, including any personal info you\'ve made publicly available
userinfoProfileScope :: Core.Proxy '["https://www.googleapis.com/auth/userinfo.profile"]
userinfoProfileScope = Core.Proxy

-- | Associate you with your personal info on Google
openidScope :: Core.Proxy '["openid"]
openidScope = Core.Proxy
