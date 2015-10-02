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
-- Module      : Network.Google.Resource.Webmasters.URLcrawlerrorssamples.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a site\'s sample URLs for the specified crawl error category and
-- platform.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersURLcrawlerrorssamplesList@.
module Network.Google.Resource.Webmasters.URLcrawlerrorssamples.List
    (
    -- * REST Resource
      UrlcrawlerrorssamplesListResource

    -- * Creating a Request
    , uRLcrawlerrorssamplesList'
    , URLcrawlerrorssamplesList'

    -- * Request Lenses
    , ulQuotaUser
    , ulPrettyPrint
    , ulPlatform
    , ulUserIP
    , ulCategory
    , ulSiteURL
    , ulKey
    , ulOAuthToken
    , ulFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLcrawlerrorssamplesList@ which the
-- 'URLcrawlerrorssamplesList'' request conforms to.
type UrlcrawlerrorssamplesListResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsSamples" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "platform"
                 WebmastersURLcrawlerrorssamplesListPlatform
                 :>
                 QueryParam "userIp" Text :>
                   QueryParam "category"
                     WebmastersURLcrawlerrorssamplesListCategory
                     :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] URLCrawlErrorsSamplesListResponse

-- | Lists a site\'s sample URLs for the specified crawl error category and
-- platform.
--
-- /See:/ 'uRLcrawlerrorssamplesList'' smart constructor.
data URLcrawlerrorssamplesList' = URLcrawlerrorssamplesList'
    { _ulQuotaUser   :: !(Maybe Text)
    , _ulPrettyPrint :: !Bool
    , _ulPlatform    :: !WebmastersURLcrawlerrorssamplesListPlatform
    , _ulUserIP      :: !(Maybe Text)
    , _ulCategory    :: !WebmastersURLcrawlerrorssamplesListCategory
    , _ulSiteURL     :: !Text
    , _ulKey         :: !(Maybe Key)
    , _ulOAuthToken  :: !(Maybe OAuthToken)
    , _ulFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLcrawlerrorssamplesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ulQuotaUser'
--
-- * 'ulPrettyPrint'
--
-- * 'ulPlatform'
--
-- * 'ulUserIP'
--
-- * 'ulCategory'
--
-- * 'ulSiteURL'
--
-- * 'ulKey'
--
-- * 'ulOAuthToken'
--
-- * 'ulFields'
uRLcrawlerrorssamplesList'
    :: WebmastersURLcrawlerrorssamplesListPlatform -- ^ 'platform'
    -> WebmastersURLcrawlerrorssamplesListCategory -- ^ 'category'
    -> Text -- ^ 'siteUrl'
    -> URLcrawlerrorssamplesList'
uRLcrawlerrorssamplesList' pUlPlatform_ pUlCategory_ pUlSiteURL_ =
    URLcrawlerrorssamplesList'
    { _ulQuotaUser = Nothing
    , _ulPrettyPrint = True
    , _ulPlatform = pUlPlatform_
    , _ulUserIP = Nothing
    , _ulCategory = pUlCategory_
    , _ulSiteURL = pUlSiteURL_
    , _ulKey = Nothing
    , _ulOAuthToken = Nothing
    , _ulFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ulQuotaUser :: Lens' URLcrawlerrorssamplesList' (Maybe Text)
ulQuotaUser
  = lens _ulQuotaUser (\ s a -> s{_ulQuotaUser = a})

-- | Returns response with indentations and line breaks.
ulPrettyPrint :: Lens' URLcrawlerrorssamplesList' Bool
ulPrettyPrint
  = lens _ulPrettyPrint
      (\ s a -> s{_ulPrettyPrint = a})

-- | The user agent type (platform) that made the request. For example: web
ulPlatform :: Lens' URLcrawlerrorssamplesList' WebmastersURLcrawlerrorssamplesListPlatform
ulPlatform
  = lens _ulPlatform (\ s a -> s{_ulPlatform = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ulUserIP :: Lens' URLcrawlerrorssamplesList' (Maybe Text)
ulUserIP = lens _ulUserIP (\ s a -> s{_ulUserIP = a})

-- | The crawl error category. For example: authPermissions
ulCategory :: Lens' URLcrawlerrorssamplesList' WebmastersURLcrawlerrorssamplesListCategory
ulCategory
  = lens _ulCategory (\ s a -> s{_ulCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
ulSiteURL :: Lens' URLcrawlerrorssamplesList' Text
ulSiteURL
  = lens _ulSiteURL (\ s a -> s{_ulSiteURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ulKey :: Lens' URLcrawlerrorssamplesList' (Maybe Key)
ulKey = lens _ulKey (\ s a -> s{_ulKey = a})

-- | OAuth 2.0 token for the current user.
ulOAuthToken :: Lens' URLcrawlerrorssamplesList' (Maybe OAuthToken)
ulOAuthToken
  = lens _ulOAuthToken (\ s a -> s{_ulOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ulFields :: Lens' URLcrawlerrorssamplesList' (Maybe Text)
ulFields = lens _ulFields (\ s a -> s{_ulFields = a})

instance GoogleAuth URLcrawlerrorssamplesList' where
        authKey = ulKey . _Just
        authToken = ulOAuthToken . _Just

instance GoogleRequest URLcrawlerrorssamplesList'
         where
        type Rs URLcrawlerrorssamplesList' =
             URLCrawlErrorsSamplesListResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u URLcrawlerrorssamplesList'{..}
          = go _ulQuotaUser (Just _ulPrettyPrint)
              (Just _ulPlatform)
              _ulUserIP
              (Just _ulCategory)
              _ulSiteURL
              _ulKey
              _ulOAuthToken
              _ulFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UrlcrawlerrorssamplesListResource)
                      r
                      u
