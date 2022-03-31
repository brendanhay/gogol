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
-- Module      : Gogol.OAuth2.Userinfo.V2.Me.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/identity/protocols/oauth2/ Google OAuth2 API Reference> for @oauth2.userinfo.v2.me.get@.
module Gogol.OAuth2.Userinfo.V2.Me.Get
  ( -- * Resource
    OAuth2UserinfoV2MeGetResource,

    -- ** Constructing a Request
    newOAuth2UserinfoV2MeGet,
    OAuth2UserinfoV2MeGet,
  )
where

import Gogol.OAuth2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @oauth2.userinfo.v2.me.get@ method which the
-- 'OAuth2UserinfoV2MeGet' request conforms to.
type OAuth2UserinfoV2MeGetResource =
  "userinfo"
    Core.:> "v2"
    Core.:> "me"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Userinfo

--
-- /See:/ 'newOAuth2UserinfoV2MeGet' smart constructor.
data OAuth2UserinfoV2MeGet = OAuth2UserinfoV2MeGet
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OAuth2UserinfoV2MeGet' with the minimum fields required to make a request.
newOAuth2UserinfoV2MeGet ::
  OAuth2UserinfoV2MeGet
newOAuth2UserinfoV2MeGet = OAuth2UserinfoV2MeGet

instance Core.GoogleRequest OAuth2UserinfoV2MeGet where
  type Rs OAuth2UserinfoV2MeGet = Userinfo
  type
    Scopes OAuth2UserinfoV2MeGet =
      '[OAuth2'OpenID, Userinfo'Email, Userinfo'Profile]
  requestClient OAuth2UserinfoV2MeGet {} =
    go (Core.Just Core.AltJSON) oAuth2Service
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy OAuth2UserinfoV2MeGetResource
          )
          Core.mempty
