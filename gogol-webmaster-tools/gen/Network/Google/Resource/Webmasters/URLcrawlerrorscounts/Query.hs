{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Webmasters.URLcrawlerrorscounts.Query
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a time series of the number of URL crawl errors per error
-- category and platform.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersURLcrawlerrorscountsQuery@.
module Network.Google.Resource.Webmasters.URLcrawlerrorscounts.Query
    (
    -- * REST Resource
      UrlcrawlerrorscountsQueryResource

    -- * Creating a Request
    , uRLcrawlerrorscountsQuery'
    , URLcrawlerrorscountsQuery'

    -- * Request Lenses
    , uqQuotaUser
    , uqPrettyPrint
    , uqPlatform
    , uqUserIP
    , uqCategory
    , uqSiteURL
    , uqKey
    , uqLatestCountsOnly
    , uqOAuthToken
    , uqFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLcrawlerrorscountsQuery@ which the
-- 'URLcrawlerrorscountsQuery'' request conforms to.
type UrlcrawlerrorscountsQueryResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsCounts" :>
           "query" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "platform"
                   WebmastersURLcrawlerrorscountsQueryPlatform
                   :>
                   QueryParam "userIp" Text :>
                     QueryParam "category"
                       WebmastersURLcrawlerrorscountsQueryCategory
                       :>
                       QueryParam "key" Key :>
                         QueryParam "latestCountsOnly" Bool :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] URLCrawlErrorsCountsQueryResponse

-- | Retrieves a time series of the number of URL crawl errors per error
-- category and platform.
--
-- /See:/ 'uRLcrawlerrorscountsQuery'' smart constructor.
data URLcrawlerrorscountsQuery' = URLcrawlerrorscountsQuery'
    { _uqQuotaUser        :: !(Maybe Text)
    , _uqPrettyPrint      :: !Bool
    , _uqPlatform         :: !(Maybe WebmastersURLcrawlerrorscountsQueryPlatform)
    , _uqUserIP           :: !(Maybe Text)
    , _uqCategory         :: !(Maybe WebmastersURLcrawlerrorscountsQueryCategory)
    , _uqSiteURL          :: !Text
    , _uqKey              :: !(Maybe Key)
    , _uqLatestCountsOnly :: !Bool
    , _uqOAuthToken       :: !(Maybe OAuthToken)
    , _uqFields           :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLcrawlerrorscountsQuery'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uqQuotaUser'
--
-- * 'uqPrettyPrint'
--
-- * 'uqPlatform'
--
-- * 'uqUserIP'
--
-- * 'uqCategory'
--
-- * 'uqSiteURL'
--
-- * 'uqKey'
--
-- * 'uqLatestCountsOnly'
--
-- * 'uqOAuthToken'
--
-- * 'uqFields'
uRLcrawlerrorscountsQuery'
    :: Text -- ^ 'siteUrl'
    -> URLcrawlerrorscountsQuery'
uRLcrawlerrorscountsQuery' pUqSiteURL_ =
    URLcrawlerrorscountsQuery'
    { _uqQuotaUser = Nothing
    , _uqPrettyPrint = True
    , _uqPlatform = Nothing
    , _uqUserIP = Nothing
    , _uqCategory = Nothing
    , _uqSiteURL = pUqSiteURL_
    , _uqKey = Nothing
    , _uqLatestCountsOnly = True
    , _uqOAuthToken = Nothing
    , _uqFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uqQuotaUser :: Lens' URLcrawlerrorscountsQuery' (Maybe Text)
uqQuotaUser
  = lens _uqQuotaUser (\ s a -> s{_uqQuotaUser = a})

-- | Returns response with indentations and line breaks.
uqPrettyPrint :: Lens' URLcrawlerrorscountsQuery' Bool
uqPrettyPrint
  = lens _uqPrettyPrint
      (\ s a -> s{_uqPrettyPrint = a})

-- | The user agent type (platform) that made the request. For example: web.
-- If not specified, returns results for all platforms.
uqPlatform :: Lens' URLcrawlerrorscountsQuery' (Maybe WebmastersURLcrawlerrorscountsQueryPlatform)
uqPlatform
  = lens _uqPlatform (\ s a -> s{_uqPlatform = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uqUserIP :: Lens' URLcrawlerrorscountsQuery' (Maybe Text)
uqUserIP = lens _uqUserIP (\ s a -> s{_uqUserIP = a})

-- | The crawl error category. For example: serverError. If not specified,
-- returns results for all categories.
uqCategory :: Lens' URLcrawlerrorscountsQuery' (Maybe WebmastersURLcrawlerrorscountsQueryCategory)
uqCategory
  = lens _uqCategory (\ s a -> s{_uqCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
uqSiteURL :: Lens' URLcrawlerrorscountsQuery' Text
uqSiteURL
  = lens _uqSiteURL (\ s a -> s{_uqSiteURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uqKey :: Lens' URLcrawlerrorscountsQuery' (Maybe Key)
uqKey = lens _uqKey (\ s a -> s{_uqKey = a})

-- | If true, returns only the latest crawl error counts.
uqLatestCountsOnly :: Lens' URLcrawlerrorscountsQuery' Bool
uqLatestCountsOnly
  = lens _uqLatestCountsOnly
      (\ s a -> s{_uqLatestCountsOnly = a})

-- | OAuth 2.0 token for the current user.
uqOAuthToken :: Lens' URLcrawlerrorscountsQuery' (Maybe OAuthToken)
uqOAuthToken
  = lens _uqOAuthToken (\ s a -> s{_uqOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uqFields :: Lens' URLcrawlerrorscountsQuery' (Maybe Text)
uqFields = lens _uqFields (\ s a -> s{_uqFields = a})

instance GoogleAuth URLcrawlerrorscountsQuery' where
        authKey = uqKey . _Just
        authToken = uqOAuthToken . _Just

instance GoogleRequest URLcrawlerrorscountsQuery'
         where
        type Rs URLcrawlerrorscountsQuery' =
             URLCrawlErrorsCountsQueryResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u URLcrawlerrorscountsQuery'{..}
          = go _uqQuotaUser (Just _uqPrettyPrint) _uqPlatform
              _uqUserIP
              _uqCategory
              _uqSiteURL
              _uqKey
              (Just _uqLatestCountsOnly)
              _uqOAuthToken
              _uqFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UrlcrawlerrorscountsQueryResource)
                      r
                      u
