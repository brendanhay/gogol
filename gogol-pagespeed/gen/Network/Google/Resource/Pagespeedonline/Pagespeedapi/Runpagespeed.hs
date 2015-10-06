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
-- Module      : Network.Google.Resource.Pagespeedonline.Pagespeedapi.Runpagespeed
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
-- /See:/ <https://developers.google.com/speed/docs/insights/v2/getting-started PageSpeed Insights API Reference> for @PagespeedonlinePagespeedapiRunpagespeed@.
module Network.Google.Resource.Pagespeedonline.Pagespeedapi.Runpagespeed
    (
    -- * REST Resource
      PagespeedapiRunpagespeedResource

    -- * Creating a Request
    , pagespeedapiRunpagespeed'
    , PagespeedapiRunpagespeed'

    -- * Request Lenses
    , prScreenshot
    , prQuotaUser
    , prPrettyPrint
    , prUserIP
    , prLocale
    , prURL
    , prFilterThirdPartyResources
    , prStrategy
    , prRule
    , prKey
    , prOAuthToken
    , prFields
    ) where

import           Network.Google.PageSpeed.Types
import           Network.Google.Prelude

-- | A resource alias for @PagespeedonlinePagespeedapiRunpagespeed@ which the
-- 'PagespeedapiRunpagespeed'' request conforms to.
type PagespeedapiRunpagespeedResource =
     "runPagespeed" :>
       QueryParam "url" Text :>
         QueryParam "screenshot" Bool :>
           QueryParam "locale" Text :>
             QueryParam "filter_third_party_resources" Bool :>
               QueryParam "strategy"
                 PagespeedapiRunpagespeedStrategy
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
-- /See:/ 'pagespeedapiRunpagespeed'' smart constructor.
data PagespeedapiRunpagespeed' = PagespeedapiRunpagespeed'
    { _prScreenshot                :: !Bool
    , _prQuotaUser                 :: !(Maybe Text)
    , _prPrettyPrint               :: !Bool
    , _prUserIP                    :: !(Maybe Text)
    , _prLocale                    :: !(Maybe Text)
    , _prURL                       :: !Text
    , _prFilterThirdPartyResources :: !Bool
    , _prStrategy                  :: !(Maybe PagespeedapiRunpagespeedStrategy)
    , _prRule                      :: !(Maybe [Text])
    , _prKey                       :: !(Maybe AuthKey)
    , _prOAuthToken                :: !(Maybe OAuthToken)
    , _prFields                    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagespeedapiRunpagespeed'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prScreenshot'
--
-- * 'prQuotaUser'
--
-- * 'prPrettyPrint'
--
-- * 'prUserIP'
--
-- * 'prLocale'
--
-- * 'prURL'
--
-- * 'prFilterThirdPartyResources'
--
-- * 'prStrategy'
--
-- * 'prRule'
--
-- * 'prKey'
--
-- * 'prOAuthToken'
--
-- * 'prFields'
pagespeedapiRunpagespeed'
    :: Text -- ^ 'url'
    -> PagespeedapiRunpagespeed'
pagespeedapiRunpagespeed' pPrURL_ =
    PagespeedapiRunpagespeed'
    { _prScreenshot = False
    , _prQuotaUser = Nothing
    , _prPrettyPrint = True
    , _prUserIP = Nothing
    , _prLocale = Nothing
    , _prURL = pPrURL_
    , _prFilterThirdPartyResources = False
    , _prStrategy = Nothing
    , _prRule = Nothing
    , _prKey = Nothing
    , _prOAuthToken = Nothing
    , _prFields = Nothing
    }

-- | Indicates if binary data containing a screenshot should be included
prScreenshot :: Lens' PagespeedapiRunpagespeed' Bool
prScreenshot
  = lens _prScreenshot (\ s a -> s{_prScreenshot = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
prQuotaUser :: Lens' PagespeedapiRunpagespeed' (Maybe Text)
prQuotaUser
  = lens _prQuotaUser (\ s a -> s{_prQuotaUser = a})

-- | Returns response with indentations and line breaks.
prPrettyPrint :: Lens' PagespeedapiRunpagespeed' Bool
prPrettyPrint
  = lens _prPrettyPrint
      (\ s a -> s{_prPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
prUserIP :: Lens' PagespeedapiRunpagespeed' (Maybe Text)
prUserIP = lens _prUserIP (\ s a -> s{_prUserIP = a})

-- | The locale used to localize formatted results
prLocale :: Lens' PagespeedapiRunpagespeed' (Maybe Text)
prLocale = lens _prLocale (\ s a -> s{_prLocale = a})

-- | The URL to fetch and analyze
prURL :: Lens' PagespeedapiRunpagespeed' Text
prURL = lens _prURL (\ s a -> s{_prURL = a})

-- | Indicates if third party resources should be filtered out before
-- PageSpeed analysis.
prFilterThirdPartyResources :: Lens' PagespeedapiRunpagespeed' Bool
prFilterThirdPartyResources
  = lens _prFilterThirdPartyResources
      (\ s a -> s{_prFilterThirdPartyResources = a})

-- | The analysis strategy to use
prStrategy :: Lens' PagespeedapiRunpagespeed' (Maybe PagespeedapiRunpagespeedStrategy)
prStrategy
  = lens _prStrategy (\ s a -> s{_prStrategy = a})

-- | A PageSpeed rule to run; if none are given, all rules are run
prRule :: Lens' PagespeedapiRunpagespeed' [Text]
prRule
  = lens _prRule (\ s a -> s{_prRule = a}) . _Default .
      _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
prKey :: Lens' PagespeedapiRunpagespeed' (Maybe AuthKey)
prKey = lens _prKey (\ s a -> s{_prKey = a})

-- | OAuth 2.0 token for the current user.
prOAuthToken :: Lens' PagespeedapiRunpagespeed' (Maybe OAuthToken)
prOAuthToken
  = lens _prOAuthToken (\ s a -> s{_prOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
prFields :: Lens' PagespeedapiRunpagespeed' (Maybe Text)
prFields = lens _prFields (\ s a -> s{_prFields = a})

instance GoogleAuth PagespeedapiRunpagespeed' where
        _AuthKey = prKey . _Just
        _AuthToken = prOAuthToken . _Just

instance GoogleRequest PagespeedapiRunpagespeed'
         where
        type Rs PagespeedapiRunpagespeed' = Result
        request = requestWith pageSpeedRequest
        requestWith rq PagespeedapiRunpagespeed'{..}
          = go (Just _prURL) (Just _prScreenshot) _prLocale
              (Just _prFilterThirdPartyResources)
              _prStrategy
              (_prRule ^. _Default)
              _prQuotaUser
              (Just _prPrettyPrint)
              _prUserIP
              _prFields
              _prKey
              _prOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy PagespeedapiRunpagespeedResource)
                      rq
