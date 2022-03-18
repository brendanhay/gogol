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
-- Module      : Network.Google.SiteVerification.WebResource.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attempt verification of a website or domain.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.insert@.
module Network.Google.SiteVerification.WebResource.Insert
  ( -- * Resource
    SiteVerificationWebResourceInsertResource,

    -- ** Constructing a Request
    newSiteVerificationWebResourceInsert,
    SiteVerificationWebResourceInsert,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.SiteVerification.Types

-- | A resource alias for @siteVerification.webResource.insert@ method which the
-- 'SiteVerificationWebResourceInsert' request conforms to.
type SiteVerificationWebResourceInsertResource =
  "siteVerification"
    Core.:> "v1"
    Core.:> "webResource"
    Core.:> Core.QueryParam "verificationMethod" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              SiteVerificationWebResourceResource
    Core.:> Core.Post
              '[Core.JSON]
              SiteVerificationWebResourceResource

-- | Attempt verification of a website or domain.
--
-- /See:/ 'newSiteVerificationWebResourceInsert' smart constructor.
data SiteVerificationWebResourceInsert = SiteVerificationWebResourceInsert
  { -- | Multipart request metadata.
    payload :: SiteVerificationWebResourceResource,
    -- | The method to use for verifying a site or domain.
    verificationMethod :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourceInsert' with the minimum fields required to make a request.
newSiteVerificationWebResourceInsert ::
  -- |  Multipart request metadata. See 'payload'.
  SiteVerificationWebResourceResource ->
  -- |  The method to use for verifying a site or domain. See 'verificationMethod'.
  Core.Text ->
  SiteVerificationWebResourceInsert
newSiteVerificationWebResourceInsert payload verificationMethod =
  SiteVerificationWebResourceInsert
    { payload = payload,
      verificationMethod = verificationMethod
    }

instance
  Core.GoogleRequest
    SiteVerificationWebResourceInsert
  where
  type
    Rs SiteVerificationWebResourceInsert =
      SiteVerificationWebResourceResource
  type
    Scopes SiteVerificationWebResourceInsert =
      '[ "https://www.googleapis.com/auth/siteverification",
         "https://www.googleapis.com/auth/siteverification.verify_only"
       ]
  requestClient SiteVerificationWebResourceInsert {..} =
    go
      (Core.Just verificationMethod)
      (Core.Just Core.AltJSON)
      payload
      siteVerificationService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy SiteVerificationWebResourceInsertResource
          )
          Core.mempty
