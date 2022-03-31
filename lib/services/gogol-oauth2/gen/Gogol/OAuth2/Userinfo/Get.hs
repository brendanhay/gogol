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
-- Module      : Gogol.OAuth2.Userinfo.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/identity/protocols/oauth2/ Google OAuth2 API Reference> for @oauth2.userinfo.get@.
module Gogol.OAuth2.Userinfo.Get
  ( -- * Resource
    OAuth2UserinfoGetResource,

    -- ** Constructing a Request
    newOAuth2UserinfoGet,
    OAuth2UserinfoGet,
  )
where

import Gogol.OAuth2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @oauth2.userinfo.get@ method which the
-- 'OAuth2UserinfoGet' request conforms to.
type OAuth2UserinfoGetResource =
  "oauth2"
    Core.:> "v2"
    Core.:> "userinfo"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Userinfo

--
-- /See:/ 'newOAuth2UserinfoGet' smart constructor.
data OAuth2UserinfoGet = OAuth2UserinfoGet
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OAuth2UserinfoGet' with the minimum fields required to make a request.
newOAuth2UserinfoGet ::
  OAuth2UserinfoGet
newOAuth2UserinfoGet = OAuth2UserinfoGet

instance Core.GoogleRequest OAuth2UserinfoGet where
  type Rs OAuth2UserinfoGet = Userinfo
  type
    Scopes OAuth2UserinfoGet =
      '[OAuth2'OpenID, Userinfo'Email, Userinfo'Profile]
  requestClient OAuth2UserinfoGet {} =
    go (Core.Just Core.AltJSON) oAuth2Service
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy OAuth2UserinfoGetResource)
          Core.mempty
