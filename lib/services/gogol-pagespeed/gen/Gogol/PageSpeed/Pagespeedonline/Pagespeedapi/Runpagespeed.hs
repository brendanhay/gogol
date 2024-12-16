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
-- Module      : Gogol.PageSpeed.Pagespeedonline.Pagespeedapi.Runpagespeed
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs PageSpeed analysis on the page at the specified URL, and returns PageSpeed scores, a list of suggestions to make that page faster, and other information.
--
-- /See:/ <https://developers.google.com/speed/docs/insights/v5/about PageSpeed Insights API Reference> for @pagespeedonline.pagespeedapi.runpagespeed@.
module Gogol.PageSpeed.Pagespeedonline.Pagespeedapi.Runpagespeed
    (
    -- * Resource
      PagespeedonlinePagespeedapiRunpagespeedResource

    -- ** Constructing a Request
    , PagespeedonlinePagespeedapiRunpagespeed (..)
    , newPagespeedonlinePagespeedapiRunpagespeed
    ) where

import qualified Gogol.Prelude as Core
import Gogol.PageSpeed.Types

-- | A resource alias for @pagespeedonline.pagespeedapi.runpagespeed@ method which the
-- 'PagespeedonlinePagespeedapiRunpagespeed' request conforms to.
type PagespeedonlinePagespeedapiRunpagespeedResource
     =
     "pagespeedonline" Core.:>
       "v5" Core.:>
         "runPagespeed" Core.:>
           Core.QueryParam "url" Core.Text Core.:>
             Core.QueryParam "$.xgafv" Xgafv Core.:>
               Core.QueryParam "access_token" Core.Text Core.:>
                 Core.QueryParam "callback" Core.Text Core.:>
                   Core.QueryParam "captchaToken" Core.Text Core.:>
                     Core.QueryParams "category"
                       PagespeedapiRunpagespeedCategory
                       Core.:>
                       Core.QueryParam "locale" Core.Text Core.:>
                         Core.QueryParam "strategy"
                           PagespeedapiRunpagespeedStrategy
                           Core.:>
                           Core.QueryParam "uploadType" Core.Text Core.:>
                             Core.QueryParam "upload_protocol" Core.Text Core.:>
                               Core.QueryParam "utm_campaign" Core.Text Core.:>
                                 Core.QueryParam "utm_source" Core.Text Core.:>
                                   Core.QueryParam "alt" Core.AltJSON Core.:>
                                     Core.Get '[Core.JSON]
                                       PagespeedApiPagespeedResponseV5

-- | Runs PageSpeed analysis on the page at the specified URL, and returns PageSpeed scores, a list of suggestions to make that page faster, and other information.
--
-- /See:/ 'newPagespeedonlinePagespeedapiRunpagespeed' smart constructor.
data PagespeedonlinePagespeedapiRunpagespeed = PagespeedonlinePagespeedapiRunpagespeed
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The captcha token passed when filling out a captcha.
    , captchaToken :: (Core.Maybe Core.Text)
      -- | A Lighthouse category to run; if none are given, only Performance category will be run
    , category :: (Core.Maybe [PagespeedapiRunpagespeedCategory])
      -- | The locale used to localize formatted results
    , locale :: (Core.Maybe Core.Text)
      -- | The analysis strategy (desktop or mobile) to use, and desktop is the default
    , strategy :: (Core.Maybe PagespeedapiRunpagespeedStrategy)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Required. The URL to fetch and analyze
    , url :: Core.Text
      -- | Campaign name for analytics.
    , utmCampaign :: (Core.Maybe Core.Text)
      -- | Campaign source for analytics.
    , utmSource :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PagespeedonlinePagespeedapiRunpagespeed' with the minimum fields required to make a request.
newPagespeedonlinePagespeedapiRunpagespeed 
    ::  Core.Text
       -- ^  Required. The URL to fetch and analyze See 'url'.
    -> PagespeedonlinePagespeedapiRunpagespeed
newPagespeedonlinePagespeedapiRunpagespeed url =
  PagespeedonlinePagespeedapiRunpagespeed
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , captchaToken = Core.Nothing
    , category = Core.Nothing
    , locale = Core.Nothing
    , strategy = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , url = url
    , utmCampaign = Core.Nothing
    , utmSource = Core.Nothing
    }

instance Core.GoogleRequest
           PagespeedonlinePagespeedapiRunpagespeed
         where
        type Rs PagespeedonlinePagespeedapiRunpagespeed =
             PagespeedApiPagespeedResponseV5
        type Scopes PagespeedonlinePagespeedapiRunpagespeed =
             '[OAuth2'OpenID]
        requestClient
          PagespeedonlinePagespeedapiRunpagespeed{..}
          = go (Core.Just url) xgafv accessToken callback
              captchaToken
              (category Core.^. Core._Default)
              locale
              strategy
              uploadType
              uploadProtocol
              utmCampaign
              utmSource
              (Core.Just Core.AltJSON)
              pageSpeedService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           PagespeedonlinePagespeedapiRunpagespeedResource)
                      Core.mempty

