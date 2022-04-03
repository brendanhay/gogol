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
-- Module      : Gogol.SiteVerification.WebResource.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the most current data for a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.get@.
module Gogol.SiteVerification.WebResource.Get
  ( -- * Resource
    SiteVerificationWebResourceGetResource,

    -- ** Constructing a Request
    SiteVerificationWebResourceGet (..),
    newSiteVerificationWebResourceGet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SiteVerification.Types

-- | A resource alias for @siteVerification.webResource.get@ method which the
-- 'SiteVerificationWebResourceGet' request conforms to.
type SiteVerificationWebResourceGetResource =
  "siteVerification"
    Core.:> "v1"
    Core.:> "webResource"
    Core.:> Core.Capture "id" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              SiteVerificationWebResourceResource

-- | Get the most current data for a website or domain.
--
-- /See:/ 'newSiteVerificationWebResourceGet' smart constructor.
newtype SiteVerificationWebResourceGet = SiteVerificationWebResourceGet
  { -- | The id of a verified site or domain.
    id :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourceGet' with the minimum fields required to make a request.
newSiteVerificationWebResourceGet ::
  -- |  The id of a verified site or domain. See 'id'.
  Core.Text ->
  SiteVerificationWebResourceGet
newSiteVerificationWebResourceGet id = SiteVerificationWebResourceGet {id = id}

instance
  Core.GoogleRequest
    SiteVerificationWebResourceGet
  where
  type
    Rs SiteVerificationWebResourceGet =
      SiteVerificationWebResourceResource
  type
    Scopes SiteVerificationWebResourceGet =
      '[Siteverification'FullControl]
  requestClient SiteVerificationWebResourceGet {..} =
    go
      id
      (Core.Just Core.AltJSON)
      siteVerificationService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SiteVerificationWebResourceGetResource
          )
          Core.mempty
