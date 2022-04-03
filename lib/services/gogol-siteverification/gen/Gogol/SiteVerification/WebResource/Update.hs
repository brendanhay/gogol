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
-- Module      : Gogol.SiteVerification.WebResource.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify the list of owners for your website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.update@.
module Gogol.SiteVerification.WebResource.Update
  ( -- * Resource
    SiteVerificationWebResourceUpdateResource,

    -- ** Constructing a Request
    SiteVerificationWebResourceUpdate (..),
    newSiteVerificationWebResourceUpdate,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SiteVerification.Types

-- | A resource alias for @siteVerification.webResource.update@ method which the
-- 'SiteVerificationWebResourceUpdate' request conforms to.
type SiteVerificationWebResourceUpdateResource =
  "siteVerification"
    Core.:> "v1"
    Core.:> "webResource"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              SiteVerificationWebResourceResource
    Core.:> Core.Put
              '[Core.JSON]
              SiteVerificationWebResourceResource

-- | Modify the list of owners for your website or domain.
--
-- /See:/ 'newSiteVerificationWebResourceUpdate' smart constructor.
data SiteVerificationWebResourceUpdate = SiteVerificationWebResourceUpdate
  { -- | The id of a verified site or domain.
    id :: Core.Text,
    -- | Multipart request metadata.
    payload :: SiteVerificationWebResourceResource
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourceUpdate' with the minimum fields required to make a request.
newSiteVerificationWebResourceUpdate ::
  -- |  The id of a verified site or domain. See 'id'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  SiteVerificationWebResourceResource ->
  SiteVerificationWebResourceUpdate
newSiteVerificationWebResourceUpdate id payload =
  SiteVerificationWebResourceUpdate {id = id, payload = payload}

instance
  Core.GoogleRequest
    SiteVerificationWebResourceUpdate
  where
  type
    Rs SiteVerificationWebResourceUpdate =
      SiteVerificationWebResourceResource
  type
    Scopes SiteVerificationWebResourceUpdate =
      '[Siteverification'FullControl]
  requestClient SiteVerificationWebResourceUpdate {..} =
    go
      id
      (Core.Just Core.AltJSON)
      payload
      siteVerificationService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SiteVerificationWebResourceUpdateResource
          )
          Core.mempty
