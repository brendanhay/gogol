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
-- Module      : Gogol.SiteVerification.WebResource.GetToken
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a verification token for placing on a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.getToken@.
module Gogol.SiteVerification.WebResource.GetToken
  ( -- * Resource
    SiteVerificationWebResourceGetTokenResource,

    -- ** Constructing a Request
    SiteVerificationWebResourceGetToken (..),
    newSiteVerificationWebResourceGetToken,
  )
where

import Gogol.Prelude qualified as Core
import Gogol.SiteVerification.Types

-- | A resource alias for @siteVerification.webResource.getToken@ method which the
-- 'SiteVerificationWebResourceGetToken' request conforms to.
type SiteVerificationWebResourceGetTokenResource =
  "siteVerification"
    Core.:> "v1"
    Core.:> "token"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              SiteVerificationWebResourceGettokenRequest
    Core.:> Core.Post '[Core.JSON] SiteVerificationWebResourceGettokenResponse

-- | Get a verification token for placing on a website or domain.
--
-- /See:/ 'newSiteVerificationWebResourceGetToken' smart constructor.
newtype SiteVerificationWebResourceGetToken = SiteVerificationWebResourceGetToken
  { -- | Multipart request metadata.
    payload :: SiteVerificationWebResourceGettokenRequest
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourceGetToken' with the minimum fields required to make a request.
newSiteVerificationWebResourceGetToken ::
  -- |  Multipart request metadata. See 'payload'.
  SiteVerificationWebResourceGettokenRequest ->
  SiteVerificationWebResourceGetToken
newSiteVerificationWebResourceGetToken payload =
  SiteVerificationWebResourceGetToken {payload = payload}

instance Core.GoogleRequest SiteVerificationWebResourceGetToken where
  type
    Rs SiteVerificationWebResourceGetToken =
      SiteVerificationWebResourceGettokenResponse
  type
    Scopes SiteVerificationWebResourceGetToken =
      '[Siteverification'FullControl, Siteverification'VerifyOnly]
  requestClient SiteVerificationWebResourceGetToken {..} =
    go (Core.Just Core.AltJSON) payload siteVerificationService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SiteVerificationWebResourceGetTokenResource
          )
          Core.mempty
