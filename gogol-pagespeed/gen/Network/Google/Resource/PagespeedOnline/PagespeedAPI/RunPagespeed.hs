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
-- | Runs PageSpeed analysis on the page at the specified URL, and returns
-- PageSpeed scores, a list of suggestions to make that page faster, and
-- other information.
--
-- /See:/ <https://developers.google.com/speed/docs/insights/v2/getting-started PageSpeed Insights API Reference> for @PagespeedOnlinePagespeedAPIRunPagespeed@.
module Network.Google.Resource.PagespeedOnline.PagespeedAPI.RunPagespeed
    (
    -- * REST Resource
      PagespeedAPIRunPagespeedResource

    -- * Creating a Request
    , pagespeedAPIRunPagespeed'
    , PagespeedAPIRunPagespeed'

    -- * Request Lenses
    , parpScreenshot
    , parpQuotaUser
    , parpPrettyPrint
    , parpUserIP
    , parpLocale
    , parpURL
    , parpFilterThirdPartyResources
    , parpStrategy
    , parpRule
    , parpKey
    , parpOAuthToken
    , parpFields
    ) where

import           Network.Google.PageSpeed.Types
import           Network.Google.Prelude

-- | A resource alias for @PagespeedOnlinePagespeedAPIRunPagespeed@ which the
-- 'PagespeedAPIRunPagespeed'' request conforms to.
type PagespeedAPIRunPagespeedResource =
     "runPagespeed" :>
       QueryParam "url" Text :>
         QueryParam "screenshot" Bool :>
           QueryParam "locale" Text :>
             QueryParam "filter_third_party_resources" Bool :>
               QueryParam "strategy"
                 PagespeedAPIRunPagespeedStrategy
                 :>
                 QueryParams "rule" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] Result

-- | Runs PageSpeed analysis on the page at the specified URL, and returns
-- PageSpeed scores, a list of suggestions to make that page faster, and
-- other information.
--
-- /See:/ 'pagespeedAPIRunPagespeed'' smart constructor.
data PagespeedAPIRunPagespeed' = PagespeedAPIRunPagespeed'
    { _parpScreenshot                :: !Bool
    , _parpQuotaUser                 :: !(Maybe Text)
    , _parpPrettyPrint               :: !Bool
    , _parpUserIP                    :: !(Maybe Text)
    , _parpLocale                    :: !(Maybe Text)
    , _parpURL                       :: !Text
    , _parpFilterThirdPartyResources :: !Bool
    , _parpStrategy                  :: !(Maybe PagespeedAPIRunPagespeedStrategy)
    , _parpRule                      :: !(Maybe [Text])
    , _parpKey                       :: !(Maybe AuthKey)
    , _parpOAuthToken                :: !(Maybe OAuthToken)
    , _parpFields                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedAPIRunPagespeed'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'parpScreenshot'
--
-- * 'parpQuotaUser'
--
-- * 'parpPrettyPrint'
--
-- * 'parpUserIP'
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
--
-- * 'parpKey'
--
-- * 'parpOAuthToken'
--
-- * 'parpFields'
pagespeedAPIRunPagespeed'
    :: Text -- ^ 'url'
    -> PagespeedAPIRunPagespeed'
pagespeedAPIRunPagespeed' pParpURL_ =
    PagespeedAPIRunPagespeed'
    { _parpScreenshot = False
    , _parpQuotaUser = Nothing
    , _parpPrettyPrint = True
    , _parpUserIP = Nothing
    , _parpLocale = Nothing
    , _parpURL = pParpURL_
    , _parpFilterThirdPartyResources = False
    , _parpStrategy = Nothing
    , _parpRule = Nothing
    , _parpKey = Nothing
    , _parpOAuthToken = Nothing
    , _parpFields = Nothing
    }

-- | Indicates if binary data containing a screenshot should be included
parpScreenshot :: Lens' PagespeedAPIRunPagespeed' Bool
parpScreenshot
  = lens _parpScreenshot
      (\ s a -> s{_parpScreenshot = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
parpQuotaUser :: Lens' PagespeedAPIRunPagespeed' (Maybe Text)
parpQuotaUser
  = lens _parpQuotaUser
      (\ s a -> s{_parpQuotaUser = a})

-- | Returns response with indentations and line breaks.
parpPrettyPrint :: Lens' PagespeedAPIRunPagespeed' Bool
parpPrettyPrint
  = lens _parpPrettyPrint
      (\ s a -> s{_parpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
parpUserIP :: Lens' PagespeedAPIRunPagespeed' (Maybe Text)
parpUserIP
  = lens _parpUserIP (\ s a -> s{_parpUserIP = a})

-- | The locale used to localize formatted results
parpLocale :: Lens' PagespeedAPIRunPagespeed' (Maybe Text)
parpLocale
  = lens _parpLocale (\ s a -> s{_parpLocale = a})

-- | The URL to fetch and analyze
parpURL :: Lens' PagespeedAPIRunPagespeed' Text
parpURL = lens _parpURL (\ s a -> s{_parpURL = a})

-- | Indicates if third party resources should be filtered out before
-- PageSpeed analysis.
parpFilterThirdPartyResources :: Lens' PagespeedAPIRunPagespeed' Bool
parpFilterThirdPartyResources
  = lens _parpFilterThirdPartyResources
      (\ s a -> s{_parpFilterThirdPartyResources = a})

-- | The analysis strategy to use
parpStrategy :: Lens' PagespeedAPIRunPagespeed' (Maybe PagespeedAPIRunPagespeedStrategy)
parpStrategy
  = lens _parpStrategy (\ s a -> s{_parpStrategy = a})

-- | A PageSpeed rule to run; if none are given, all rules are run
parpRule :: Lens' PagespeedAPIRunPagespeed' [Text]
parpRule
  = lens _parpRule (\ s a -> s{_parpRule = a}) .
      _Default
      . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
parpKey :: Lens' PagespeedAPIRunPagespeed' (Maybe AuthKey)
parpKey = lens _parpKey (\ s a -> s{_parpKey = a})

-- | OAuth 2.0 token for the current user.
parpOAuthToken :: Lens' PagespeedAPIRunPagespeed' (Maybe OAuthToken)
parpOAuthToken
  = lens _parpOAuthToken
      (\ s a -> s{_parpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
parpFields :: Lens' PagespeedAPIRunPagespeed' (Maybe Text)
parpFields
  = lens _parpFields (\ s a -> s{_parpFields = a})

instance GoogleAuth PagespeedAPIRunPagespeed' where
        _AuthKey = parpKey . _Just
        _AuthToken = parpOAuthToken . _Just

instance GoogleRequest PagespeedAPIRunPagespeed'
         where
        type Rs PagespeedAPIRunPagespeed' = Result
        request = requestWith pageSpeedRequest
        requestWith rq PagespeedAPIRunPagespeed'{..}
          = go (Just _parpURL) (Just _parpScreenshot)
              _parpLocale
              (Just _parpFilterThirdPartyResources)
              _parpStrategy
              (_parpRule ^. _Default)
              _parpQuotaUser
              (Just _parpPrettyPrint)
              _parpUserIP
              _parpFields
              _parpKey
              _parpOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PagespeedAPIRunPagespeedResource)
                      rq
