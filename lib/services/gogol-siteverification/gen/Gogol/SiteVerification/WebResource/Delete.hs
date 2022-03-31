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
-- Module      : Gogol.SiteVerification.WebResource.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Relinquish ownership of a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.delete@.
module Gogol.SiteVerification.WebResource.Delete
  ( -- * Resource
    SiteVerificationWebResourceDeleteResource,

    -- ** Constructing a Request
    newSiteVerificationWebResourceDelete,
    SiteVerificationWebResourceDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SiteVerification.Types

-- | A resource alias for @siteVerification.webResource.delete@ method which the
-- 'SiteVerificationWebResourceDelete' request conforms to.
type SiteVerificationWebResourceDeleteResource =
  "siteVerification"
    Core.:> "v1"
    Core.:> "webResource"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Relinquish ownership of a website or domain.
--
-- /See:/ 'newSiteVerificationWebResourceDelete' smart constructor.
newtype SiteVerificationWebResourceDelete = SiteVerificationWebResourceDelete
  { -- | The id of a verified site or domain.
    id :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourceDelete' with the minimum fields required to make a request.
newSiteVerificationWebResourceDelete ::
  -- |  The id of a verified site or domain. See 'id'.
  Core.Text ->
  SiteVerificationWebResourceDelete
newSiteVerificationWebResourceDelete id =
  SiteVerificationWebResourceDelete {id = id}

instance
  Core.GoogleRequest
    SiteVerificationWebResourceDelete
  where
  type Rs SiteVerificationWebResourceDelete = ()
  type
    Scopes SiteVerificationWebResourceDelete =
      '[Siteverification'FullControl]
  requestClient SiteVerificationWebResourceDelete {..} =
    go
      id
      (Core.Just Core.AltJSON)
      siteVerificationService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SiteVerificationWebResourceDeleteResource
          )
          Core.mempty
