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
-- Module      : Gogol.SiteVerification.WebResource.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Get the list of your verified websites and domains.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.list@.
module Gogol.SiteVerification.WebResource.List
  ( -- * Resource
    SiteVerificationWebResourceListResource,

    -- ** Constructing a Request
    newSiteVerificationWebResourceList,
    SiteVerificationWebResourceList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.SiteVerification.Types

-- | A resource alias for @siteVerification.webResource.list@ method which the
-- 'SiteVerificationWebResourceList' request conforms to.
type SiteVerificationWebResourceListResource =
  "siteVerification"
    Core.:> "v1"
    Core.:> "webResource"
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              SiteVerificationWebResourceListResponse

-- | Get the list of your verified websites and domains.
--
-- /See:/ 'newSiteVerificationWebResourceList' smart constructor.
data SiteVerificationWebResourceList = SiteVerificationWebResourceList
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourceList' with the minimum fields required to make a request.
newSiteVerificationWebResourceList ::
  SiteVerificationWebResourceList
newSiteVerificationWebResourceList = SiteVerificationWebResourceList

instance
  Core.GoogleRequest
    SiteVerificationWebResourceList
  where
  type
    Rs SiteVerificationWebResourceList =
      SiteVerificationWebResourceListResponse
  type
    Scopes SiteVerificationWebResourceList =
      '["https://www.googleapis.com/auth/siteverification"]
  requestClient SiteVerificationWebResourceList {} =
    go (Core.Just Core.AltJSON) siteVerificationService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SiteVerificationWebResourceListResource
          )
          Core.mempty
