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
-- Module      : Network.Google.WebmasterTools.Webmasters.Sites.Add
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a site to the set of the user\'s sites in Search Console.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.sites.add@.
module Network.Google.WebmasterTools.Webmasters.Sites.Add
  ( -- * Resource
    WebmastersSitesAddResource,

    -- ** Constructing a Request
    newWebmastersSitesAdd,
    WebmastersSitesAdd,
  )
where

import qualified Network.Google.Prelude as Core
import Network.Google.WebmasterTools.Types

-- | A resource alias for @webmasters.sites.add@ method which the
-- 'WebmastersSitesAdd' request conforms to.
type WebmastersSitesAddResource =
  "webmasters"
    Core.:> "v3"
    Core.:> "sites"
    Core.:> Core.Capture "siteUrl" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Put '[Core.JSON] ()

-- | Adds a site to the set of the user\'s sites in Search Console.
--
-- /See:/ 'newWebmastersSitesAdd' smart constructor.
newtype WebmastersSitesAdd = WebmastersSitesAdd
  { -- | The URL of the site to add.
    siteUrl :: Core.Text
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitesAdd' with the minimum fields required to make a request.
newWebmastersSitesAdd ::
  -- |  The URL of the site to add. See 'siteUrl'.
  Core.Text ->
  WebmastersSitesAdd
newWebmastersSitesAdd siteUrl = WebmastersSitesAdd {siteUrl = siteUrl}

instance Core.GoogleRequest WebmastersSitesAdd where
  type Rs WebmastersSitesAdd = ()
  type
    Scopes WebmastersSitesAdd =
      '["https://www.googleapis.com/auth/webmasters"]
  requestClient WebmastersSitesAdd {..} =
    go
      siteUrl
      (Core.Just Core.AltJSON)
      webmasterToolsService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy WebmastersSitesAddResource)
          Core.mempty
