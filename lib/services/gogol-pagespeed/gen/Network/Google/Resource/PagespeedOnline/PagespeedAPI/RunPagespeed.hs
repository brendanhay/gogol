{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.PagespeedOnline.PagespeedAPI.RunPagespeed
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs PageSpeed analysis on the page at the specified URL, and returns
-- PageSpeed scores, a list of suggestions to make that page faster, and
-- other information.
--
-- /See:/ <https://developers.google.com/speed/docs/insights/v5/about PageSpeed Insights API Reference> for @pagespeedonline.pagespeedapi.runpagespeed@.
module Network.Google.Resource.PagespeedOnline.PagespeedAPI.RunPagespeed
    (
    -- * REST Resource
      PagespeedAPIRunPagespeedResource

    -- * Creating a Request
    , pagespeedAPIRunPagespeed
    , PagespeedAPIRunPagespeed

    -- * Request Lenses
    , parpXgafv
    , parpUploadProtocol
    , parpUtmCampaign
    , parpLocale
    , parpCategory
    , parpAccessToken
    , parpURL
    , parpUploadType
    , parpStrategy
    , parpCaptchaToken
    , parpUtmSource
    , parpCallback
    ) where

import Network.Google.PageSpeed.Types
import Network.Google.Prelude

-- | A resource alias for @pagespeedonline.pagespeedapi.runpagespeed@ method which the
-- 'PagespeedAPIRunPagespeed' request conforms to.
type PagespeedAPIRunPagespeedResource =
     "pagespeedonline" :>
       "v5" :>
         "runPagespeed" :>
           QueryParam "url" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "utm_campaign" Text :>
                   QueryParam "locale" Text :>
                     QueryParams "category"
                       PagespeedAPIRunPagespeedCategory
                       :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "strategy"
                             PagespeedAPIRunPagespeedStrategy
                             :>
                             QueryParam "captchaToken" Text :>
                               QueryParam "utm_source" Text :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] PagespeedAPIPagespeedResponseV5

-- | Runs PageSpeed analysis on the page at the specified URL, and returns
-- PageSpeed scores, a list of suggestions to make that page faster, and
-- other information.
--
-- /See:/ 'pagespeedAPIRunPagespeed' smart constructor.
data PagespeedAPIRunPagespeed =
  PagespeedAPIRunPagespeed'
    { _parpXgafv :: !(Maybe Xgafv)
    , _parpUploadProtocol :: !(Maybe Text)
    , _parpUtmCampaign :: !(Maybe Text)
    , _parpLocale :: !(Maybe Text)
    , _parpCategory :: !(Maybe [PagespeedAPIRunPagespeedCategory])
    , _parpAccessToken :: !(Maybe Text)
    , _parpURL :: !Text
    , _parpUploadType :: !(Maybe Text)
    , _parpStrategy :: !(Maybe PagespeedAPIRunPagespeedStrategy)
    , _parpCaptchaToken :: !(Maybe Text)
    , _parpUtmSource :: !(Maybe Text)
    , _parpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PagespeedAPIRunPagespeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parpXgafv'
--
-- * 'parpUploadProtocol'
--
-- * 'parpUtmCampaign'
--
-- * 'parpLocale'
--
-- * 'parpCategory'
--
-- * 'parpAccessToken'
--
-- * 'parpURL'
--
-- * 'parpUploadType'
--
-- * 'parpStrategy'
--
-- * 'parpCaptchaToken'
--
-- * 'parpUtmSource'
--
-- * 'parpCallback'
pagespeedAPIRunPagespeed
    :: Text -- ^ 'parpURL'
    -> PagespeedAPIRunPagespeed
pagespeedAPIRunPagespeed pParpURL_ =
  PagespeedAPIRunPagespeed'
    { _parpXgafv = Nothing
    , _parpUploadProtocol = Nothing
    , _parpUtmCampaign = Nothing
    , _parpLocale = Nothing
    , _parpCategory = Nothing
    , _parpAccessToken = Nothing
    , _parpURL = pParpURL_
    , _parpUploadType = Nothing
    , _parpStrategy = Nothing
    , _parpCaptchaToken = Nothing
    , _parpUtmSource = Nothing
    , _parpCallback = Nothing
    }


-- | V1 error format.
parpXgafv :: Lens' PagespeedAPIRunPagespeed (Maybe Xgafv)
parpXgafv
  = lens _parpXgafv (\ s a -> s{_parpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
parpUploadProtocol :: Lens' PagespeedAPIRunPagespeed (Maybe Text)
parpUploadProtocol
  = lens _parpUploadProtocol
      (\ s a -> s{_parpUploadProtocol = a})

-- | Campaign name for analytics.
parpUtmCampaign :: Lens' PagespeedAPIRunPagespeed (Maybe Text)
parpUtmCampaign
  = lens _parpUtmCampaign
      (\ s a -> s{_parpUtmCampaign = a})

-- | The locale used to localize formatted results
parpLocale :: Lens' PagespeedAPIRunPagespeed (Maybe Text)
parpLocale
  = lens _parpLocale (\ s a -> s{_parpLocale = a})

-- | A Lighthouse category to run; if none are given, only Performance
-- category will be run
parpCategory :: Lens' PagespeedAPIRunPagespeed [PagespeedAPIRunPagespeedCategory]
parpCategory
  = lens _parpCategory (\ s a -> s{_parpCategory = a})
      . _Default
      . _Coerce

-- | OAuth access token.
parpAccessToken :: Lens' PagespeedAPIRunPagespeed (Maybe Text)
parpAccessToken
  = lens _parpAccessToken
      (\ s a -> s{_parpAccessToken = a})

-- | Required. The URL to fetch and analyze
parpURL :: Lens' PagespeedAPIRunPagespeed Text
parpURL = lens _parpURL (\ s a -> s{_parpURL = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
parpUploadType :: Lens' PagespeedAPIRunPagespeed (Maybe Text)
parpUploadType
  = lens _parpUploadType
      (\ s a -> s{_parpUploadType = a})

-- | The analysis strategy (desktop or mobile) to use, and desktop is the
-- default
parpStrategy :: Lens' PagespeedAPIRunPagespeed (Maybe PagespeedAPIRunPagespeedStrategy)
parpStrategy
  = lens _parpStrategy (\ s a -> s{_parpStrategy = a})

-- | The captcha token passed when filling out a captcha.
parpCaptchaToken :: Lens' PagespeedAPIRunPagespeed (Maybe Text)
parpCaptchaToken
  = lens _parpCaptchaToken
      (\ s a -> s{_parpCaptchaToken = a})

-- | Campaign source for analytics.
parpUtmSource :: Lens' PagespeedAPIRunPagespeed (Maybe Text)
parpUtmSource
  = lens _parpUtmSource
      (\ s a -> s{_parpUtmSource = a})

-- | JSONP
parpCallback :: Lens' PagespeedAPIRunPagespeed (Maybe Text)
parpCallback
  = lens _parpCallback (\ s a -> s{_parpCallback = a})

instance GoogleRequest PagespeedAPIRunPagespeed where
        type Rs PagespeedAPIRunPagespeed =
             PagespeedAPIPagespeedResponseV5
        type Scopes PagespeedAPIRunPagespeed = '["openid"]
        requestClient PagespeedAPIRunPagespeed'{..}
          = go (Just _parpURL) _parpXgafv _parpUploadProtocol
              _parpUtmCampaign
              _parpLocale
              (_parpCategory ^. _Default)
              _parpAccessToken
              _parpUploadType
              _parpStrategy
              _parpCaptchaToken
              _parpUtmSource
              _parpCallback
              (Just AltJSON)
              pageSpeedService
          where go
                  = buildClient
                      (Proxy :: Proxy PagespeedAPIRunPagespeedResource)
                      mempty
