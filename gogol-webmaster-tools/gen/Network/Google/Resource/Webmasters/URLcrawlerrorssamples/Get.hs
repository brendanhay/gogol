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
module Network.Google.Resource.Webmasters.URLcrawlerrorssamples.Get
    (
    -- * REST Resource
      UrlcrawlerrorssamplesGetResource

    -- * Creating a Request
    , uRLcrawlerrorssamplesGet'
    , URLcrawlerrorssamplesGet'

    -- * Request Lenses
    , ugQuotaUser
    , ugPrettyPrint
    , ugPlatform
    , ugUserIP
    , ugCategory
    , ugSiteURL
    , ugURL
    , ugKey
    , ugOAuthToken
    , ugFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLcrawlerrorssamplesGet@ which the
-- 'URLcrawlerrorssamplesGet'' request conforms to.
type UrlcrawlerrorssamplesGetResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsSamples" :>
           Capture "url" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "platform"
                   WebmastersURLcrawlerrorssamplesGetPlatform
                   :>
                   QueryParam "userIp" Text :>
                     QueryParam "category"
                       WebmastersURLcrawlerrorssamplesGetCategory
                       :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] URLCrawlErrorsSample

-- | Retrieves details about crawl errors for a site\'s sample URL.
--
-- /See:/ 'uRLcrawlerrorssamplesGet'' smart constructor.
data URLcrawlerrorssamplesGet' = URLcrawlerrorssamplesGet'
    { _ugQuotaUser   :: !(Maybe Text)
    , _ugPrettyPrint :: !Bool
    , _ugPlatform    :: !WebmastersURLcrawlerrorssamplesGetPlatform
    , _ugUserIP      :: !(Maybe Text)
    , _ugCategory    :: !WebmastersURLcrawlerrorssamplesGetCategory
    , _ugSiteURL     :: !Text
    , _ugURL         :: !Text
    , _ugKey         :: !(Maybe Key)
    , _ugOAuthToken  :: !(Maybe OAuthToken)
    , _ugFields      :: !(Maybe Text)
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
-- * 'ugUserIP'
--
-- * 'ugCategory'
--
-- * 'ugSiteURL'
--
-- * 'ugURL'
--
-- * 'ugKey'
--
-- * 'ugOAuthToken'
--
-- * 'ugFields'
uRLcrawlerrorssamplesGet'
    :: WebmastersURLcrawlerrorssamplesGetPlatform -- ^ 'platform'
    -> WebmastersURLcrawlerrorssamplesGetCategory -- ^ 'category'
    -> Text -- ^ 'siteUrl'
    -> Text -- ^ 'url'
    -> URLcrawlerrorssamplesGet'
uRLcrawlerrorssamplesGet' pUgPlatform_ pUgCategory_ pUgSiteURL_ pUgURL_ =
    URLcrawlerrorssamplesGet'
    { _ugQuotaUser = Nothing
    , _ugPrettyPrint = True
    , _ugPlatform = pUgPlatform_
    , _ugUserIP = Nothing
    , _ugCategory = pUgCategory_
    , _ugSiteURL = pUgSiteURL_
    , _ugURL = pUgURL_
    , _ugKey = Nothing
    , _ugOAuthToken = Nothing
    , _ugFields = Nothing
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
ugPlatform :: Lens' URLcrawlerrorssamplesGet' WebmastersURLcrawlerrorssamplesGetPlatform
ugPlatform
  = lens _ugPlatform (\ s a -> s{_ugPlatform = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ugUserIP :: Lens' URLcrawlerrorssamplesGet' (Maybe Text)
ugUserIP = lens _ugUserIP (\ s a -> s{_ugUserIP = a})

-- | The crawl error category. For example: authPermissions
ugCategory :: Lens' URLcrawlerrorssamplesGet' WebmastersURLcrawlerrorssamplesGetCategory
ugCategory
  = lens _ugCategory (\ s a -> s{_ugCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
ugSiteURL :: Lens' URLcrawlerrorssamplesGet' Text
ugSiteURL
  = lens _ugSiteURL (\ s a -> s{_ugSiteURL = a})

-- | The relative path (without the site) of the sample URL. It must be one
-- of the URLs returned by list(). For example, for the URL
-- https:\/\/www.example.com\/pagename on the site
-- https:\/\/www.example.com\/, the url value is pagename
ugURL :: Lens' URLcrawlerrorssamplesGet' Text
ugURL = lens _ugURL (\ s a -> s{_ugURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ugKey :: Lens' URLcrawlerrorssamplesGet' (Maybe Key)
ugKey = lens _ugKey (\ s a -> s{_ugKey = a})

-- | OAuth 2.0 token for the current user.
ugOAuthToken :: Lens' URLcrawlerrorssamplesGet' (Maybe OAuthToken)
ugOAuthToken
  = lens _ugOAuthToken (\ s a -> s{_ugOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ugFields :: Lens' URLcrawlerrorssamplesGet' (Maybe Text)
ugFields = lens _ugFields (\ s a -> s{_ugFields = a})

instance GoogleAuth URLcrawlerrorssamplesGet' where
        authKey = ugKey . _Just
        authToken = ugOAuthToken . _Just

instance GoogleRequest URLcrawlerrorssamplesGet'
         where
        type Rs URLcrawlerrorssamplesGet' =
             URLCrawlErrorsSample
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u URLcrawlerrorssamplesGet'{..}
          = go _ugQuotaUser (Just _ugPrettyPrint)
              (Just _ugPlatform)
              _ugUserIP
              (Just _ugCategory)
              _ugSiteURL
              _ugURL
              _ugKey
              _ugOAuthToken
              _ugFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UrlcrawlerrorssamplesGetResource)
                      r
                      u
