{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a site\'s sample URLs for the specified crawl error category and
-- platform.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersURLCrawlErrorsSamplesList@.
module Network.Google.Resource.Webmasters.URLCrawlErrorsSamples.List
    (
    -- * REST Resource
      URLCrawlErrorsSamplesListResource

    -- * Creating a Request
    , urlCrawlErrorsSamplesList'
    , URLCrawlErrorsSamplesList'

    -- * Request Lenses
    , uceslQuotaUser
    , uceslPrettyPrint
    , uceslPlatform
    , uceslUserIP
    , uceslCategory
    , uceslSiteURL
    , uceslKey
    , uceslOAuthToken
    , uceslFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersURLCrawlErrorsSamplesList@ which the
-- 'URLCrawlErrorsSamplesList'' request conforms to.
type URLCrawlErrorsSamplesListResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "urlCrawlErrorsSamples" :>
           QueryParam "category" Category :>
             QueryParam "platform" Platform :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] URLCrawlErrorsSamplesListResponse

-- | Lists a site\'s sample URLs for the specified crawl error category and
-- platform.
--
-- /See:/ 'urlCrawlErrorsSamplesList'' smart constructor.
data URLCrawlErrorsSamplesList' = URLCrawlErrorsSamplesList'
    { _uceslQuotaUser   :: !(Maybe Text)
    , _uceslPrettyPrint :: !Bool
    , _uceslPlatform    :: !Platform
    , _uceslUserIP      :: !(Maybe Text)
    , _uceslCategory    :: !Category
    , _uceslSiteURL     :: !Text
    , _uceslKey         :: !(Maybe Key)
    , _uceslOAuthToken  :: !(Maybe OAuthToken)
    , _uceslFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLCrawlErrorsSamplesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uceslQuotaUser'
--
-- * 'uceslPrettyPrint'
--
-- * 'uceslPlatform'
--
-- * 'uceslUserIP'
--
-- * 'uceslCategory'
--
-- * 'uceslSiteURL'
--
-- * 'uceslKey'
--
-- * 'uceslOAuthToken'
--
-- * 'uceslFields'
urlCrawlErrorsSamplesList'
    :: Platform -- ^ 'platform'
    -> Category -- ^ 'category'
    -> Text -- ^ 'siteUrl'
    -> URLCrawlErrorsSamplesList'
urlCrawlErrorsSamplesList' pUceslPlatform_ pUceslCategory_ pUceslSiteURL_ =
    URLCrawlErrorsSamplesList'
    { _uceslQuotaUser = Nothing
    , _uceslPrettyPrint = True
    , _uceslPlatform = pUceslPlatform_
    , _uceslUserIP = Nothing
    , _uceslCategory = pUceslCategory_
    , _uceslSiteURL = pUceslSiteURL_
    , _uceslKey = Nothing
    , _uceslOAuthToken = Nothing
    , _uceslFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
uceslQuotaUser :: Lens' URLCrawlErrorsSamplesList' (Maybe Text)
uceslQuotaUser
  = lens _uceslQuotaUser
      (\ s a -> s{_uceslQuotaUser = a})

-- | Returns response with indentations and line breaks.
uceslPrettyPrint :: Lens' URLCrawlErrorsSamplesList' Bool
uceslPrettyPrint
  = lens _uceslPrettyPrint
      (\ s a -> s{_uceslPrettyPrint = a})

-- | The user agent type (platform) that made the request. For example: web
uceslPlatform :: Lens' URLCrawlErrorsSamplesList' Platform
uceslPlatform
  = lens _uceslPlatform
      (\ s a -> s{_uceslPlatform = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
uceslUserIP :: Lens' URLCrawlErrorsSamplesList' (Maybe Text)
uceslUserIP
  = lens _uceslUserIP (\ s a -> s{_uceslUserIP = a})

-- | The crawl error category. For example: authPermissions
uceslCategory :: Lens' URLCrawlErrorsSamplesList' Category
uceslCategory
  = lens _uceslCategory
      (\ s a -> s{_uceslCategory = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
uceslSiteURL :: Lens' URLCrawlErrorsSamplesList' Text
uceslSiteURL
  = lens _uceslSiteURL (\ s a -> s{_uceslSiteURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
uceslKey :: Lens' URLCrawlErrorsSamplesList' (Maybe Key)
uceslKey = lens _uceslKey (\ s a -> s{_uceslKey = a})

-- | OAuth 2.0 token for the current user.
uceslOAuthToken :: Lens' URLCrawlErrorsSamplesList' (Maybe OAuthToken)
uceslOAuthToken
  = lens _uceslOAuthToken
      (\ s a -> s{_uceslOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
uceslFields :: Lens' URLCrawlErrorsSamplesList' (Maybe Text)
uceslFields
  = lens _uceslFields (\ s a -> s{_uceslFields = a})

instance GoogleAuth URLCrawlErrorsSamplesList' where
        authKey = uceslKey . _Just
        authToken = uceslOAuthToken . _Just

instance GoogleRequest URLCrawlErrorsSamplesList'
         where
        type Rs URLCrawlErrorsSamplesList' =
             URLCrawlErrorsSamplesListResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u URLCrawlErrorsSamplesList'{..}
          = go _uceslSiteURL (Just _uceslCategory)
              (Just _uceslPlatform)
              _uceslQuotaUser
              (Just _uceslPrettyPrint)
              _uceslUserIP
              _uceslFields
              _uceslKey
              _uceslOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy URLCrawlErrorsSamplesListResource)
                      r
                      u
