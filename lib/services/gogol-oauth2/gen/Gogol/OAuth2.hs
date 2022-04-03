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
-- Module      : Gogol.OAuth2
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtains end-user authorization grants for use with other Google APIs.
--
-- /See:/ <https://developers.google.com/identity/protocols/oauth2/ Google OAuth2 API Reference>
module Gogol.OAuth2
  ( -- * Configuration
    oAuth2Service,

    -- * OAuth Scopes
    Userinfo'Email,
    Userinfo'Profile,
    OAuth2'OpenID,

    -- * Resources

    -- ** oauth2.tokeninfo
    OAuth2TokeninfoMethod,
    OAuth2Tokeninfo (..),
    newOAuth2Tokeninfo,

    -- ** oauth2.userinfo.get
    OAuth2UserinfoGetResource,
    OAuth2UserinfoGet (..),
    newOAuth2UserinfoGet,

    -- ** oauth2.userinfo.v2.me.get
    OAuth2UserinfoV2MeGetResource,
    OAuth2UserinfoV2MeGet (..),
    newOAuth2UserinfoV2MeGet,

    -- * Types

    -- ** Tokeninfo
    Tokeninfo (..),
    newTokeninfo,

    -- ** Userinfo
    Userinfo (..),
    newUserinfo,
  )
where

import Gogol.OAuth2.Tokeninfo
import Gogol.OAuth2.Types
import Gogol.OAuth2.Userinfo.Get
import Gogol.OAuth2.Userinfo.V2.Me.Get
