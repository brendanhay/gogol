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
-- Module      : Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves details about crawl errors for a site\'s sample URL.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersURLCrawlErrorsSamplesGet@.
module Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.Get
    (
    -- * REST Resource
      URLCrawlErrorsSamplesGetResource

    -- * Creating a Request
    , urlCrawlErrorsSamplesGet'
    , URLCrawlErrorsSamplesGet'

    -- * Request Lenses
    , ucesgQuotaUser
    , ucesgPrettyPrint
    , ucesgPlatform
    , ucesgUserIP
    , ucesgCategory
    , ucesgSiteURL
    , ucesgURL
    , ucesgKey
    , ucesgOAuthToken
    , ucesgFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLCrawlErrorsSamplesGet@ method which the
-- 'URLCrawlErrorsSamplesGet'' request conforms to.
type URLCrawlErrorsSamplesGetResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsSamples" :>
           Capture "url" Text :>
             QueryParam "category"
               URLCrawlErrorsSamplesGetCategory
               :>
               QueryParam "platform"
                 URLCrawlErrorsSamplesGetPlatform
                 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] URLCrawlErrorsSample

-- | Retrieves details about crawl errors for a site\'s sample URL.
--
-- /See:/ 'urlCrawlErrorsSamplesGet'' smart constructor.
data URLCrawlErrorsSamplesGet' = URLCrawlErrorsSamplesGet'
    { _ucesgQuotaUser   :: !(Maybe Text)
    , _ucesgPrettyPrint :: !Bool
    , _ucesgPlatform    :: !URLCrawlErrorsSamplesGetPlatform
    , _ucesgUserIP      :: !(Maybe Text)
    , _ucesgCategory    :: !URLCrawlErrorsSamplesGetCategory
    , _ucesgSiteURL     :: !Text
    , _ucesgURL         :: !Text
    , _ucesgKey         :: !(Maybe AuthKey)
    , _ucesgOAuthToken  :: !(Maybe OAuthToken)
    , _ucesgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorsSamplesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ucesgQuotaUser'
--
-- * 'ucesgPrettyPrint'
--
-- * 'ucesgPlatform'
--
-- * 'ucesgUserIP'
--
-- * 'ucesgCategory'
--
-- * 'ucesgSiteURL'
--
-- * 'ucesgURL'
--
-- * 'ucesgKey'
--
-- * 'ucesgOAuthToken'
--
-- * 'ucesgFields'
urlCrawlErrorsSamplesGet'
    :: URLCrawlErrorsSamplesGetPlatform -- ^ 'platform'
    -> URLCrawlErrorsSamplesGetCategory -- ^ 'category'
    -> Text -- ^ 'siteUrl'
    -> Text -- ^ 'url'
    -> URLCrawlErrorsSamplesGet'
urlCrawlErrorsSamplesGet' pUcesgPlatform_ pUcesgCategory_ pUcesgSiteURL_ pUcesgURL_ =
    URLCrawlErrorsSamplesGet'
    { _ucesgQuotaUser = Nothing
    , _ucesgPrettyPrint = True
    , _ucesgPlatform = pUcesgPlatform_
    , _ucesgUserIP = Nothing
    , _ucesgCategory = pUcesgCategory_
    , _ucesgSiteURL = pUcesgSiteURL_
    , _ucesgURL = pUcesgURL_
    , _ucesgKey = Nothing
    , _ucesgOAuthToken = Nothing
    , _ucesgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ucesgQuotaUser :: Lens' URLCrawlErrorsSamplesGet' (Maybe Text)
ucesgQuotaUser
  = lens _ucesgQuotaUser
      (\ s a -> s{_ucesgQuotaUser = a})

-- | Returns response with indentations and line breaks.
ucesgPrettyPrint :: Lens' URLCrawlErrorsSamplesGet' Bool
ucesgPrettyPrint
  = lens _ucesgPrettyPrint
      (\ s a -> s{_ucesgPrettyPrint = a})

-- | The user agent type (platform) that made the request. For example: web
ucesgPlatform :: Lens' URLCrawlErrorsSamplesGet' URLCrawlErrorsSamplesGetPlatform
ucesgPlatform
  = lens _ucesgPlatform
      (\ s a -> s{_ucesgPlatform = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ucesgUserIP :: Lens' URLCrawlErrorsSamplesGet' (Maybe Text)
ucesgUserIP
  = lens _ucesgUserIP (\ s a -> s{_ucesgUserIP = a})

-- | The crawl error category. For example: authPermissions
ucesgCategory :: Lens' URLCrawlErrorsSamplesGet' URLCrawlErrorsSamplesGetCategory
ucesgCategory
  = lens _ucesgCategory
      (\ s a -> s{_ucesgCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
ucesgSiteURL :: Lens' URLCrawlErrorsSamplesGet' Text
ucesgSiteURL
  = lens _ucesgSiteURL (\ s a -> s{_ucesgSiteURL = a})

-- | The relative path (without the site) of the sample URL. It must be one
-- of the URLs returned by list(). For example, for the URL
-- https:\/\/www.example.com\/pagename on the site
-- https:\/\/www.example.com\/, the url value is pagename
ucesgURL :: Lens' URLCrawlErrorsSamplesGet' Text
ucesgURL = lens _ucesgURL (\ s a -> s{_ucesgURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ucesgKey :: Lens' URLCrawlErrorsSamplesGet' (Maybe AuthKey)
ucesgKey = lens _ucesgKey (\ s a -> s{_ucesgKey = a})

-- | OAuth 2.0 token for the current user.
ucesgOAuthToken :: Lens' URLCrawlErrorsSamplesGet' (Maybe OAuthToken)
ucesgOAuthToken
  = lens _ucesgOAuthToken
      (\ s a -> s{_ucesgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ucesgFields :: Lens' URLCrawlErrorsSamplesGet' (Maybe Text)
ucesgFields
  = lens _ucesgFields (\ s a -> s{_ucesgFields = a})

instance GoogleAuth URLCrawlErrorsSamplesGet' where
        _AuthKey = ucesgKey . _Just
        _AuthToken = ucesgOAuthToken . _Just

instance GoogleRequest URLCrawlErrorsSamplesGet'
         where
        type Rs URLCrawlErrorsSamplesGet' =
             URLCrawlErrorsSample
        request = requestWith webmasterToolsRequest
        requestWith rq URLCrawlErrorsSamplesGet'{..}
          = go _ucesgSiteURL _ucesgURL (Just _ucesgCategory)
              (Just _ucesgPlatform)
              _ucesgQuotaUser
              (Just _ucesgPrettyPrint)
              _ucesgUserIP
              _ucesgFields
              _ucesgKey
              _ucesgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy URLCrawlErrorsSamplesGetResource)
                      rq
