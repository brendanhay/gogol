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
-- Module      : Gogol.OAuth2.Tokeninfo
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/identity/protocols/oauth2/ Google OAuth2 API Reference> for @oauth2.tokeninfo@.
module Gogol.OAuth2.Tokeninfo
  ( -- * Resource
    OAuth2TokeninfoMethod,

    -- ** Constructing a Request
    OAuth2Tokeninfo (..),
    newOAuth2Tokeninfo,
  )
where

import Gogol.OAuth2.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @oauth2.tokeninfo@ method which the
-- 'OAuth2Tokeninfo' request conforms to.
type OAuth2TokeninfoMethod =
  "oauth2"
    Core.:> "v2"
    Core.:> "tokeninfo"
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "id_token" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] Tokeninfo

--
-- /See:/ 'newOAuth2Tokeninfo' smart constructor.
data OAuth2Tokeninfo = OAuth2Tokeninfo
  { -- |
    accessToken :: (Core.Maybe Core.Text),
    -- |
    idToken :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'OAuth2Tokeninfo' with the minimum fields required to make a request.
newOAuth2Tokeninfo ::
  OAuth2Tokeninfo
newOAuth2Tokeninfo =
  OAuth2Tokeninfo {accessToken = Core.Nothing, idToken = Core.Nothing}

instance Core.GoogleRequest OAuth2Tokeninfo where
  type Rs OAuth2Tokeninfo = Tokeninfo
  type Scopes OAuth2Tokeninfo = '[]
  requestClient OAuth2Tokeninfo {..} =
    go
      accessToken
      idToken
      (Core.Just Core.AltJSON)
      oAuth2Service
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy OAuth2TokeninfoMethod)
          Core.mempty
