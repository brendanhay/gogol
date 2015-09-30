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
    , uqUserIp
    , uqCategory
    , uqSiteUrl
    , uqKey
    , uqLatestCountsOnly
    , uqOauthToken
    , uqFields
    , uqAlt
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
                       QueryParam "key" Text :>
                         QueryParam "latestCountsOnly" Bool :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :>
                                 Get '[JSON] URLCrawlErrorsCountsQueryResponse

-- | Retrieves a time series of the number of URL crawl errors per error
-- category and platform.
--
-- /See:/ 'uRLcrawlerrorscountsQuery'' smart constructor.
data URLcrawlerrorscountsQuery' = URLcrawlerrorscountsQuery'
    { _uqQuotaUser        :: !(Maybe Text)
    , _uqPrettyPrint      :: !Bool
    , _uqPlatform         :: !(Maybe WebmastersURLcrawlerrorscountsQueryPlatform)
    , _uqUserIp           :: !(Maybe Text)
    , _uqCategory         :: !(Maybe WebmastersURLcrawlerrorscountsQueryCategory)
    , _uqSiteUrl          :: !Text
    , _uqKey              :: !(Maybe Text)
    , _uqLatestCountsOnly :: !Bool
    , _uqOauthToken       :: !(Maybe Text)
    , _uqFields           :: !(Maybe Text)
    , _uqAlt              :: !Alt
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
-- * 'uqUserIp'
--
-- * 'uqCategory'
--
-- * 'uqSiteUrl'
--
-- * 'uqKey'
--
-- * 'uqLatestCountsOnly'
--
-- * 'uqOauthToken'
--
-- * 'uqFields'
--
-- * 'uqAlt'
uRLcrawlerrorscountsQuery'
    :: Text -- ^ 'siteUrl'
    -> URLcrawlerrorscountsQuery'
uRLcrawlerrorscountsQuery' pUqSiteUrl_ =
    URLcrawlerrorscountsQuery'
    { _uqQuotaUser = Nothing
    , _uqPrettyPrint = True
    , _uqPlatform = Nothing
    , _uqUserIp = Nothing
    , _uqCategory = Nothing
    , _uqSiteUrl = pUqSiteUrl_
    , _uqKey = Nothing
    , _uqLatestCountsOnly = True
    , _uqOauthToken = Nothing
    , _uqFields = Nothing
    , _uqAlt = JSON
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
uqUserIp :: Lens' URLcrawlerrorscountsQuery' (Maybe Text)
uqUserIp = lens _uqUserIp (\ s a -> s{_uqUserIp = a})

-- | The crawl error category. For example: serverError. If not specified,
-- returns results for all categories.
uqCategory :: Lens' URLcrawlerrorscountsQuery' (Maybe WebmastersURLcrawlerrorscountsQueryCategory)
uqCategory
  = lens _uqCategory (\ s a -> s{_uqCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
uqSiteUrl :: Lens' URLcrawlerrorscountsQuery' Text
uqSiteUrl
  = lens _uqSiteUrl (\ s a -> s{_uqSiteUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uqKey :: Lens' URLcrawlerrorscountsQuery' (Maybe Text)
uqKey = lens _uqKey (\ s a -> s{_uqKey = a})

-- | If true, returns only the latest crawl error counts.
uqLatestCountsOnly :: Lens' URLcrawlerrorscountsQuery' Bool
uqLatestCountsOnly
  = lens _uqLatestCountsOnly
      (\ s a -> s{_uqLatestCountsOnly = a})

-- | OAuth 2.0 token for the current user.
uqOauthToken :: Lens' URLcrawlerrorscountsQuery' (Maybe Text)
uqOauthToken
  = lens _uqOauthToken (\ s a -> s{_uqOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
uqFields :: Lens' URLcrawlerrorscountsQuery' (Maybe Text)
uqFields = lens _uqFields (\ s a -> s{_uqFields = a})

-- | Data format for the response.
uqAlt :: Lens' URLcrawlerrorscountsQuery' Alt
uqAlt = lens _uqAlt (\ s a -> s{_uqAlt = a})

instance GoogleRequest URLcrawlerrorscountsQuery'
         where
        type Rs URLcrawlerrorscountsQuery' =
             URLCrawlErrorsCountsQueryResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u URLcrawlerrorscountsQuery'{..}
          = go _uqQuotaUser (Just _uqPrettyPrint) _uqPlatform
              _uqUserIp
              _uqCategory
              _uqSiteUrl
              _uqKey
              (Just _uqLatestCountsOnly)
              _uqOauthToken
              _uqFields
              (Just _uqAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UrlcrawlerrorscountsQueryResource)
                      r
                      u
