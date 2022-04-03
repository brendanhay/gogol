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
-- Module      : Gogol.IdentityToolkit.Relyingparty.GetRecaptchaParam
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get recaptcha secure param.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.getRecaptchaParam@.
module Gogol.IdentityToolkit.Relyingparty.GetRecaptchaParam
  ( -- * Resource
    IdentityToolkitRelyingpartyGetRecaptchaParamResource,

    -- ** Constructing a Request
    IdentityToolkitRelyingpartyGetRecaptchaParam (..),
    newIdentityToolkitRelyingpartyGetRecaptchaParam,
  )
where

import Gogol.IdentityToolkit.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @identitytoolkit.relyingparty.getRecaptchaParam@ method which the
-- 'IdentityToolkitRelyingpartyGetRecaptchaParam' request conforms to.
type IdentityToolkitRelyingpartyGetRecaptchaParamResource =
  "identitytoolkit"
    Core.:> "v3"
    Core.:> "relyingparty"
    Core.:> "getRecaptchaParam"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetRecaptchaParamResponse

-- | Get recaptcha secure param.
--
-- /See:/ 'newIdentityToolkitRelyingpartyGetRecaptchaParam' smart constructor.
data IdentityToolkitRelyingpartyGetRecaptchaParam = IdentityToolkitRelyingpartyGetRecaptchaParam
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'IdentityToolkitRelyingpartyGetRecaptchaParam' with the minimum fields required to make a request.
newIdentityToolkitRelyingpartyGetRecaptchaParam ::
  IdentityToolkitRelyingpartyGetRecaptchaParam
newIdentityToolkitRelyingpartyGetRecaptchaParam =
  IdentityToolkitRelyingpartyGetRecaptchaParam

instance
  Core.GoogleRequest
    IdentityToolkitRelyingpartyGetRecaptchaParam
  where
  type
    Rs IdentityToolkitRelyingpartyGetRecaptchaParam =
      GetRecaptchaParamResponse
  type
    Scopes
      IdentityToolkitRelyingpartyGetRecaptchaParam =
      '[CloudPlatform'FullControl]
  requestClient
    IdentityToolkitRelyingpartyGetRecaptchaParam {} =
      go (Core.Just Core.AltJSON) identityToolkitService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  IdentityToolkitRelyingpartyGetRecaptchaParamResource
            )
            Core.mempty
