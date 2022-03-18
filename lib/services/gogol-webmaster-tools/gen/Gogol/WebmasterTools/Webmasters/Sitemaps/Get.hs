{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.WebmasterTools.Webmasters.Sitemaps.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a specific sitemap.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Search Console API Reference> for @webmasters.sitemaps.get@.
module Gogol.WebmasterTools.Webmasters.Sitemaps.Get
    (
    -- * Resource
      WebmastersSitemapsGetResource

    -- ** Constructing a Request
    , newWebmastersSitemapsGet
    , WebmastersSitemapsGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.WebmasterTools.Types

-- | A resource alias for @webmasters.sitemaps.get@ method which the
-- 'WebmastersSitemapsGet' request conforms to.
type WebmastersSitemapsGetResource =
     "webmasters" Core.:>
       "v3" Core.:>
         "sites" Core.:>
           Core.Capture "siteUrl" Core.Text Core.:>
             "sitemaps" Core.:>
               Core.Capture "feedpath" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.Get '[Core.JSON] WmxSitemap

-- | Retrieves information about a specific sitemap.
--
-- /See:/ 'newWebmastersSitemapsGet' smart constructor.
data WebmastersSitemapsGet = WebmastersSitemapsGet
    {
      -- | The URL of the actual sitemap. For example: http:\/\/www.example.com\/sitemap.xml
      feedpath :: Core.Text
      -- | The site\'s URL, including protocol. For example: http:\/\/www.example.com\/
    , siteUrl :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'WebmastersSitemapsGet' with the minimum fields required to make a request.
newWebmastersSitemapsGet 
    ::  Core.Text
       -- ^  The URL of the actual sitemap. For example: http:\/\/www.example.com\/sitemap.xml See 'feedpath'.
    -> Core.Text
       -- ^  The site\'s URL, including protocol. For example: http:\/\/www.example.com\/ See 'siteUrl'.
    -> WebmastersSitemapsGet
newWebmastersSitemapsGet feedpath siteUrl =
  WebmastersSitemapsGet {feedpath = feedpath, siteUrl = siteUrl}

instance Core.GoogleRequest WebmastersSitemapsGet
         where
        type Rs WebmastersSitemapsGet = WmxSitemap
        type Scopes WebmastersSitemapsGet =
             '["https://www.googleapis.com/auth/webmasters",
               "https://www.googleapis.com/auth/webmasters.readonly"]
        requestClient WebmastersSitemapsGet{..}
          = go siteUrl feedpath (Core.Just Core.AltJSON)
              webmasterToolsService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy WebmastersSitemapsGetResource)
                      Core.mempty

