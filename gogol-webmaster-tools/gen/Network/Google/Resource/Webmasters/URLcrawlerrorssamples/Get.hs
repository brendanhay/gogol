{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Webmasters.URLcrawlerrorssamples.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details about crawl errors for a site\'s sample URL.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersURLcrawlerrorssamplesGet@.
module Webmasters.URLcrawlerrorssamples.Get
    (
    -- * REST Resource
      UrlcrawlerrorssamplesGetAPI

    -- * Creating a Request
    , uRLcrawlerrorssamplesGet
    , URLcrawlerrorssamplesGet

    -- * Request Lenses
    , ugQuotaUser
    , ugPrettyPrint
    , ugPlatform
    , ugUserIp
    , ugCategory
    , ugSiteUrl
    , ugUrl
    , ugKey
    , ugOauthToken
    , ugFields
    , ugAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLcrawlerrorssamplesGet@ which the
-- 'URLcrawlerrorssamplesGet' request conforms to.
type UrlcrawlerrorssamplesGetAPI =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsSamples" :>
           Capture "url" Text :>
             QueryParam "platform" Text :>
               QueryParam "category" Text :>
                 Get '[JSON] URLCrawlErrorsSample

-- | Retrieves details about crawl errors for a site\'s sample URL.
--
-- /See:/ 'uRLcrawlerrorssamplesGet' smart constructor.
data URLcrawlerrorssamplesGet = URLcrawlerrorssamplesGet
    { _ugQuotaUser   :: !(Maybe Text)
    , _ugPrettyPrint :: !Bool
    , _ugPlatform    :: !Text
    , _ugUserIp      :: !(Maybe Text)
    , _ugCategory    :: !Text
    , _ugSiteUrl     :: !Text
    , _ugUrl         :: !Text
    , _ugKey         :: !(Maybe Text)
    , _ugOauthToken  :: !(Maybe Text)
    , _ugFields      :: !(Maybe Text)
    , _ugAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLcrawlerrorssamplesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ugQuotaUser'
--
-- * 'ugPrettyPrint'
--
-- * 'ugPlatform'
--
-- * 'ugUserIp'
--
-- * 'ugCategory'
--
-- * 'ugSiteUrl'
--
-- * 'ugUrl'
--
-- * 'ugKey'
--
-- * 'ugOauthToken'
--
-- * 'ugFields'
--
-- * 'ugAlt'
uRLcrawlerrorssamplesGet
    :: Text -- ^ 'platform'
    -> Text -- ^ 'category'
    -> Text -- ^ 'siteUrl'
    -> Text -- ^ 'url'
    -> URLcrawlerrorssamplesGet
uRLcrawlerrorssamplesGet pUgPlatform_ pUgCategory_ pUgSiteUrl_ pUgUrl_ =
    URLcrawlerrorssamplesGet
    { _ugQuotaUser = Nothing
    , _ugPrettyPrint = True
    , _ugPlatform = pUgPlatform_
    , _ugUserIp = Nothing
    , _ugCategory = pUgCategory_
    , _ugSiteUrl = pUgSiteUrl_
    , _ugUrl = pUgUrl_
    , _ugKey = Nothing
    , _ugOauthToken = Nothing
    , _ugFields = Nothing
    , _ugAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ugQuotaUser :: Lens' URLcrawlerrorssamplesGet' (Maybe Text)
ugQuotaUser
  = lens _ugQuotaUser (\ s a -> s{_ugQuotaUser = a})

-- | Returns response with indentations and line breaks.
ugPrettyPrint :: Lens' URLcrawlerrorssamplesGet' Bool
ugPrettyPrint
  = lens _ugPrettyPrint
      (\ s a -> s{_ugPrettyPrint = a})

-- | The user agent type (platform) that made the request. For example: web
ugPlatform :: Lens' URLcrawlerrorssamplesGet' Text
ugPlatform
  = lens _ugPlatform (\ s a -> s{_ugPlatform = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugUserIp :: Lens' URLcrawlerrorssamplesGet' (Maybe Text)
ugUserIp = lens _ugUserIp (\ s a -> s{_ugUserIp = a})

-- | The crawl error category. For example: authPermissions
ugCategory :: Lens' URLcrawlerrorssamplesGet' Text
ugCategory
  = lens _ugCategory (\ s a -> s{_ugCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
ugSiteUrl :: Lens' URLcrawlerrorssamplesGet' Text
ugSiteUrl
  = lens _ugSiteUrl (\ s a -> s{_ugSiteUrl = a})

-- | The relative path (without the site) of the sample URL. It must be one
-- of the URLs returned by list(). For example, for the URL
-- https:\/\/www.example.com\/pagename on the site
-- https:\/\/www.example.com\/, the url value is pagename
ugUrl :: Lens' URLcrawlerrorssamplesGet' Text
ugUrl = lens _ugUrl (\ s a -> s{_ugUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugKey :: Lens' URLcrawlerrorssamplesGet' (Maybe Text)
ugKey = lens _ugKey (\ s a -> s{_ugKey = a})

-- | OAuth 2.0 token for the current user.
ugOauthToken :: Lens' URLcrawlerrorssamplesGet' (Maybe Text)
ugOauthToken
  = lens _ugOauthToken (\ s a -> s{_ugOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugFields :: Lens' URLcrawlerrorssamplesGet' (Maybe Text)
ugFields = lens _ugFields (\ s a -> s{_ugFields = a})

-- | Data format for the response.
ugAlt :: Lens' URLcrawlerrorssamplesGet' Text
ugAlt = lens _ugAlt (\ s a -> s{_ugAlt = a})

instance GoogleRequest URLcrawlerrorssamplesGet'
         where
        type Rs URLcrawlerrorssamplesGet' =
             URLCrawlErrorsSample
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u URLcrawlerrorssamplesGet{..}
          = go _ugQuotaUser _ugPrettyPrint (Just _ugPlatform)
              _ugUserIp
              (Just _ugCategory)
              _ugSiteUrl
              _ugUrl
              _ugKey
              _ugOauthToken
              _ugFields
              _ugAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UrlcrawlerrorssamplesGetAPI)
                      r
                      u
