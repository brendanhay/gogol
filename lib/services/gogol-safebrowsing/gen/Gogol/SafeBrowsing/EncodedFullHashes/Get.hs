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
-- Module      : Gogol.SafeBrowsing.EncodedFullHashes.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- 
--
-- /See:/ <https://developers.google.com/safe-browsing/ Safe Browsing API Reference> for @safebrowsing.encodedFullHashes.get@.
module Gogol.SafeBrowsing.EncodedFullHashes.Get
    (
    -- * Resource
      SafeBrowsingEncodedFullHashesGetResource

    -- ** Constructing a Request
    , SafeBrowsingEncodedFullHashesGet (..)
    , newSafeBrowsingEncodedFullHashesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.SafeBrowsing.Types

-- | A resource alias for @safebrowsing.encodedFullHashes.get@ method which the
-- 'SafeBrowsingEncodedFullHashesGet' request conforms to.
type SafeBrowsingEncodedFullHashesGetResource =
     "v4" Core.:>
       "encodedFullHashes" Core.:>
         Core.Capture "encodedRequest" Core.Base64 Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "clientId" Core.Text Core.:>
                   Core.QueryParam "clientVersion" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Get '[Core.JSON]
                             GoogleSecuritySafebrowsingV4FindFullHashesResponse

-- | 
--
-- /See:/ 'newSafeBrowsingEncodedFullHashesGet' smart constructor.
data SafeBrowsingEncodedFullHashesGet = SafeBrowsingEncodedFullHashesGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | A client ID that (hopefully) uniquely identifies the client implementation of the Safe Browsing API.
    , clientId :: (Core.Maybe Core.Text)
      -- | The version of the client implementation.
    , clientVersion :: (Core.Maybe Core.Text)
      -- | A serialized FindFullHashesRequest proto.
    , encodedRequest :: Core.Base64
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'SafeBrowsingEncodedFullHashesGet' with the minimum fields required to make a request.
newSafeBrowsingEncodedFullHashesGet 
    ::  Core.Base64
       -- ^  A serialized FindFullHashesRequest proto. See 'encodedRequest'.
    -> SafeBrowsingEncodedFullHashesGet
newSafeBrowsingEncodedFullHashesGet encodedRequest =
  SafeBrowsingEncodedFullHashesGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , clientId = Core.Nothing
    , clientVersion = Core.Nothing
    , encodedRequest = encodedRequest
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           SafeBrowsingEncodedFullHashesGet
         where
        type Rs SafeBrowsingEncodedFullHashesGet =
             GoogleSecuritySafebrowsingV4FindFullHashesResponse
        type Scopes SafeBrowsingEncodedFullHashesGet = '[]
        requestClient SafeBrowsingEncodedFullHashesGet{..}
          = go encodedRequest xgafv accessToken callback
              clientId
              clientVersion
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              safeBrowsingService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy SafeBrowsingEncodedFullHashesGetResource)
                      Core.mempty

