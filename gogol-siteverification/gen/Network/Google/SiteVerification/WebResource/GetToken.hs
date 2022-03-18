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
-- Module      : Network.Google.SiteVerification.WebResource.GetToken
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get a verification token for placing on a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.getToken@.
module Network.Google.SiteVerification.WebResource.GetToken
  ( -- * Resource
    SiteVerificationWebResourceGetTokenResource,

    -- ** Constructing a Request
    newSiteVerificationWebResourceGetToken,
    SiteVerificationWebResourceGetToken,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.SiteVerification.Types

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
    Core.:> Core.Post
              '[Core.JSON]
              SiteVerificationWebResourceGettokenResponse

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

instance
  Core.GoogleRequest
    SiteVerificationWebResourceGetToken
  where
  type
    Rs SiteVerificationWebResourceGetToken =
      SiteVerificationWebResourceGettokenResponse
  type
    Scopes SiteVerificationWebResourceGetToken =
      '[ "https://www.googleapis.com/auth/siteverification",
         "https://www.googleapis.com/auth/siteverification.verify_only"
       ]
  requestClient SiteVerificationWebResourceGetToken {..} =
    go
      (Core.Just Core.AltJSON)
      payload
      siteVerificationService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                SiteVerificationWebResourceGetTokenResource
          )
          Core.mempty
