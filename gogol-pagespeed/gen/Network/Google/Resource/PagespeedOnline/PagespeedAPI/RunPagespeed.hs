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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Runs PageSpeed analysis on the page at the specified URL, and returns
-- PageSpeed scores, a list of suggestions to make that page faster, and
-- other information.
--
-- /See:/ <https://developers.google.com/speed/docs/insights/v2/getting-started PageSpeed Insights API Reference> for @pagespeedonline.pagespeedapi.runpagespeed@.
module Network.Google.Resource.PagespeedOnline.PagespeedAPI.RunPagespeed
    (
    -- * REST Resource
      PagespeedAPIRunPagespeedResource

    -- * Creating a Request
    , pagespeedAPIRunPagespeed
    , PagespeedAPIRunPagespeed

    -- * Request Lenses
    , parpScreenshot
    , parpLocale
    , parpURL
    , parpFilterThirdPartyResources
    , parpStrategy
    , parpRule
    ) where

import           Network.Google.PageSpeed.Types
import           Network.Google.Prelude

-- | A resource alias for @pagespeedonline.pagespeedapi.runpagespeed@ method which the
-- 'PagespeedAPIRunPagespeed' request conforms to.
type PagespeedAPIRunPagespeedResource =
     "pagespeedonline" :>
       "v2" :>
         "runPagespeed" :>
           QueryParam "url" Text :>
             QueryParam "screenshot" Bool :>
               QueryParam "locale" Text :>
                 QueryParam "filter_third_party_resources" Bool :>
                   QueryParam "strategy"
                     PagespeedAPIRunPagespeedStrategy
                     :>
                     QueryParams "rule" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Result

-- | Runs PageSpeed analysis on the page at the specified URL, and returns
-- PageSpeed scores, a list of suggestions to make that page faster, and
-- other information.
--
-- /See:/ 'pagespeedAPIRunPagespeed' smart constructor.
data PagespeedAPIRunPagespeed = PagespeedAPIRunPagespeed
    { _parpScreenshot                :: !Bool
    , _parpLocale                    :: !(Maybe Text)
    , _parpURL                       :: !Text
    , _parpFilterThirdPartyResources :: !Bool
    , _parpStrategy                  :: !(Maybe PagespeedAPIRunPagespeedStrategy)
    , _parpRule                      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPIRunPagespeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parpScreenshot'
--
-- * 'parpLocale'
--
-- * 'parpURL'
--
-- * 'parpFilterThirdPartyResources'
--
-- * 'parpStrategy'
--
-- * 'parpRule'
pagespeedAPIRunPagespeed
    :: Text -- ^ 'parpURL'
    -> PagespeedAPIRunPagespeed
pagespeedAPIRunPagespeed pParpURL_ =
    PagespeedAPIRunPagespeed
    { _parpScreenshot = False
    , _parpLocale = Nothing
    , _parpURL = pParpURL_
    , _parpFilterThirdPartyResources = False
    , _parpStrategy = Nothing
    , _parpRule = Nothing
    }

-- | Indicates if binary data containing a screenshot should be included
parpScreenshot :: Lens' PagespeedAPIRunPagespeed Bool
parpScreenshot
  = lens _parpScreenshot
      (\ s a -> s{_parpScreenshot = a})

-- | The locale used to localize formatted results
parpLocale :: Lens' PagespeedAPIRunPagespeed (Maybe Text)
parpLocale
  = lens _parpLocale (\ s a -> s{_parpLocale = a})

-- | The URL to fetch and analyze
parpURL :: Lens' PagespeedAPIRunPagespeed Text
parpURL = lens _parpURL (\ s a -> s{_parpURL = a})

-- | Indicates if third party resources should be filtered out before
-- PageSpeed analysis.
parpFilterThirdPartyResources :: Lens' PagespeedAPIRunPagespeed Bool
parpFilterThirdPartyResources
  = lens _parpFilterThirdPartyResources
      (\ s a -> s{_parpFilterThirdPartyResources = a})

-- | The analysis strategy to use
parpStrategy :: Lens' PagespeedAPIRunPagespeed (Maybe PagespeedAPIRunPagespeedStrategy)
parpStrategy
  = lens _parpStrategy (\ s a -> s{_parpStrategy = a})

-- | A PageSpeed rule to run; if none are given, all rules are run
parpRule :: Lens' PagespeedAPIRunPagespeed [Text]
parpRule
  = lens _parpRule (\ s a -> s{_parpRule = a}) .
      _Default
      . _Coerce

instance GoogleRequest PagespeedAPIRunPagespeed where
        type Rs PagespeedAPIRunPagespeed = Result
        requestClient PagespeedAPIRunPagespeed{..}
          = go (Just _parpURL) (Just _parpScreenshot)
              _parpLocale
              (Just _parpFilterThirdPartyResources)
              _parpStrategy
              (_parpRule ^. _Default)
              (Just AltJSON)
              pageSpeedService
          where go
                  = buildClient
                      (Proxy :: Proxy PagespeedAPIRunPagespeedResource)
                      mempty
