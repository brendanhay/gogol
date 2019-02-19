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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs PageSpeed analysis on the page at the specified URL, and returns
-- PageSpeed scores, a list of suggestions to make that page faster, and
-- other information.
--
-- /See:/ <https://developers.google.com/speed/docs/insights/v5/get-started PageSpeed Insights API Reference> for @pagespeedonline.pagespeedapi.runpagespeed@.
module Network.Google.Resource.PagespeedOnline.PagespeedAPI.RunPagespeed
    (
    -- * REST Resource
      PagespeedAPIRunPagespeedResource

    -- * Creating a Request
    , pagespeedAPIRunPagespeed
    , PagespeedAPIRunPagespeed

    -- * Request Lenses
    , parpUtmCampaign
    , parpLocale
    , parpCategory
    , parpURL
    , parpStrategy
    , parpUtmSource
    ) where

import           Network.Google.PageSpeed.Types
import           Network.Google.Prelude

-- | A resource alias for @pagespeedonline.pagespeedapi.runpagespeed@ method which the
-- 'PagespeedAPIRunPagespeed' request conforms to.
type PagespeedAPIRunPagespeedResource =
     "pagespeedonline" :>
       "v5" :>
         "runPagespeed" :>
           QueryParam "url" Text :>
             QueryParam "utm_campaign" Text :>
               QueryParam "locale" Text :>
                 QueryParams "category"
                   PagespeedAPIRunPagespeedCategory
                   :>
                   QueryParam "strategy"
                     PagespeedAPIRunPagespeedStrategy
                     :>
                     QueryParam "utm_source" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PagespeedAPIPagespeedResponseV5

-- | Runs PageSpeed analysis on the page at the specified URL, and returns
-- PageSpeed scores, a list of suggestions to make that page faster, and
-- other information.
--
-- /See:/ 'pagespeedAPIRunPagespeed' smart constructor.
data PagespeedAPIRunPagespeed =
  PagespeedAPIRunPagespeed'
    { _parpUtmCampaign :: !(Maybe Text)
    , _parpLocale      :: !(Maybe Text)
    , _parpCategory    :: !(Maybe [PagespeedAPIRunPagespeedCategory])
    , _parpURL         :: !Text
    , _parpStrategy    :: !(Maybe PagespeedAPIRunPagespeedStrategy)
    , _parpUtmSource   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PagespeedAPIRunPagespeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parpUtmCampaign'
--
-- * 'parpLocale'
--
-- * 'parpCategory'
--
-- * 'parpURL'
--
-- * 'parpStrategy'
--
-- * 'parpUtmSource'
pagespeedAPIRunPagespeed
    :: Text -- ^ 'parpURL'
    -> PagespeedAPIRunPagespeed
pagespeedAPIRunPagespeed pParpURL_ =
  PagespeedAPIRunPagespeed'
    { _parpUtmCampaign = Nothing
    , _parpLocale = Nothing
    , _parpCategory = Nothing
    , _parpURL = pParpURL_
    , _parpStrategy = Nothing
    , _parpUtmSource = Nothing
    }

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

-- | The URL to fetch and analyze
parpURL :: Lens' PagespeedAPIRunPagespeed Text
parpURL = lens _parpURL (\ s a -> s{_parpURL = a})

-- | The analysis strategy (desktop or mobile) to use, and desktop is the
-- default
parpStrategy :: Lens' PagespeedAPIRunPagespeed (Maybe PagespeedAPIRunPagespeedStrategy)
parpStrategy
  = lens _parpStrategy (\ s a -> s{_parpStrategy = a})

-- | Campaign source for analytics.
parpUtmSource :: Lens' PagespeedAPIRunPagespeed (Maybe Text)
parpUtmSource
  = lens _parpUtmSource
      (\ s a -> s{_parpUtmSource = a})

instance GoogleRequest PagespeedAPIRunPagespeed where
        type Rs PagespeedAPIRunPagespeed =
             PagespeedAPIPagespeedResponseV5
        type Scopes PagespeedAPIRunPagespeed = '[]
        requestClient PagespeedAPIRunPagespeed'{..}
          = go (Just _parpURL) _parpUtmCampaign _parpLocale
              (_parpCategory ^. _Default)
              _parpStrategy
              _parpUtmSource
              (Just AltJSON)
              pageSpeedService
          where go
                  = buildClient
                      (Proxy :: Proxy PagespeedAPIRunPagespeedResource)
                      mempty
