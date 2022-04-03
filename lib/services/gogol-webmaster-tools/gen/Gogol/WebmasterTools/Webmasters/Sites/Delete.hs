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
-- Module      : Gogol.WebmasterTools.Webmasters.Sites.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a site from the set of the user\'s Search Console sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.sites.delete@.
module Gogol.WebmasterTools.Webmasters.Sites.Delete
  ( -- * Resource
    WebmastersSitesDeleteResource,

    -- ** Constructing a Request
    WebmastersSitesDelete (..),
    newWebmastersSitesDelete,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.WebmasterTools.Types

-- | A resource alias for @webmasters.sites.delete@ method which the
-- 'WebmastersSitesDelete' request conforms to.
type WebmastersSitesDeleteResource =
  "webmasters"
    Core.:> "v3"
    Core.:> "sites"
    Core.:> Core.Capture "siteUrl" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] ()

-- | Removes a site from the set of the user\'s Search Console sites.
--
-- /See:/ 'newWebmastersSitesDelete' smart constructor.
newtype WebmastersSitesDelete = WebmastersSitesDelete
  { -- | The URI of the property as defined in Search Console. Examples: http:\/\/www.example.com\/ or android-app:\/\/com.example\/ Note: for property-sets, use the URI that starts with sc-set: which is used in Search Console URLs.
    siteUrl :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitesDelete' with the minimum fields required to make a request.
newWebmastersSitesDelete ::
  -- |  The URI of the property as defined in Search Console. Examples: http:\/\/www.example.com\/ or android-app:\/\/com.example\/ Note: for property-sets, use the URI that starts with sc-set: which is used in Search Console URLs. See 'siteUrl'.
  Core.Text ->
  WebmastersSitesDelete
newWebmastersSitesDelete siteUrl = WebmastersSitesDelete {siteUrl = siteUrl}

instance Core.GoogleRequest WebmastersSitesDelete where
  type Rs WebmastersSitesDelete = ()
  type
    Scopes WebmastersSitesDelete =
      '[Webmasters'FullControl]
  requestClient WebmastersSitesDelete {..} =
    go
      siteUrl
      (Core.Just Core.AltJSON)
      webmasterToolsService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy WebmastersSitesDeleteResource
          )
          Core.mempty
