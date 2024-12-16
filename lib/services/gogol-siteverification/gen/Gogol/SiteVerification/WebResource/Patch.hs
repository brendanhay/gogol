{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.SiteVerification.WebResource.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modify the list of owners for your website or domain. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/site-verification/ Google Site Verification API Reference> for @siteVerification.webResource.patch@.
module Gogol.SiteVerification.WebResource.Patch
    (
    -- * Resource
      SiteVerificationWebResourcePatchResource

    -- ** Constructing a Request
    , SiteVerificationWebResourcePatch (..)
    , newSiteVerificationWebResourcePatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SiteVerification.Types

-- | A resource alias for @siteVerification.webResource.patch@ method which the
-- 'SiteVerificationWebResourcePatch' request conforms to.
type SiteVerificationWebResourcePatchResource =
     "siteVerification" Core.:>
       "v1" Core.:>
         "webResource" Core.:>
           Core.Capture "id" Core.Text Core.:>
             Core.QueryParam "alt" Core.AltJSON Core.:>
               Core.ReqBody '[Core.JSON]
                 SiteVerificationWebResourceResource
                 Core.:>
                 Core.Patch '[Core.JSON]
                   SiteVerificationWebResourceResource

-- | Modify the list of owners for your website or domain. This method supports patch semantics.
--
-- /See:/ 'newSiteVerificationWebResourcePatch' smart constructor.
data SiteVerificationWebResourcePatch = SiteVerificationWebResourcePatch
    {
      -- | The id of a verified site or domain.
      id :: Core.Text
      -- | Multipart request metadata.
    , payload :: SiteVerificationWebResourceResource
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SiteVerificationWebResourcePatch' with the minimum fields required to make a request.
newSiteVerificationWebResourcePatch 
    ::  Core.Text
       -- ^  The id of a verified site or domain. See 'id'.
    -> SiteVerificationWebResourceResource
       -- ^  Multipart request metadata. See 'payload'.
    -> SiteVerificationWebResourcePatch
newSiteVerificationWebResourcePatch id payload =
  SiteVerificationWebResourcePatch {id = id, payload = payload}

instance Core.GoogleRequest
           SiteVerificationWebResourcePatch
         where
        type Rs SiteVerificationWebResourcePatch =
             SiteVerificationWebResourceResource
        type Scopes SiteVerificationWebResourcePatch =
             '[Siteverification'FullControl]
        requestClient SiteVerificationWebResourcePatch{..}
          = go id (Core.Just Core.AltJSON) payload
              siteVerificationService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SiteVerificationWebResourcePatchResource)
                      Core.mempty

