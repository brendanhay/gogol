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
-- Module      : Network.Google.Resource.Webmasters.Sitemaps.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the sitemaps-entries submitted for this site, or included in the
-- sitemap index file (if sitemapIndex is specified in the request).
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitemapsList@.
module Network.Google.Resource.Webmasters.Sitemaps.List
    (
    -- * REST Resource
      SitemapsListResource

    -- * Creating a Request
    , sitemapsList'
    , SitemapsList'

    -- * Request Lenses
    , sllQuotaUser
    , sllPrettyPrint
    , sllUserIP
    , sllSiteURL
    , sllSitemapIndex
    , sllKey
    , sllOAuthToken
    , sllFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitemapsList@ which the
-- 'SitemapsList'' request conforms to.
type SitemapsListResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "sitemaps" :>
           QueryParam "sitemapIndex" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SitemapsListResponse

-- | Lists the sitemaps-entries submitted for this site, or included in the
-- sitemap index file (if sitemapIndex is specified in the request).
--
-- /See:/ 'sitemapsList'' smart constructor.
data SitemapsList' = SitemapsList'
    { _sllQuotaUser    :: !(Maybe Text)
    , _sllPrettyPrint  :: !Bool
    , _sllUserIP       :: !(Maybe Text)
    , _sllSiteURL      :: !Text
    , _sllSitemapIndex :: !(Maybe Text)
    , _sllKey          :: !(Maybe AuthKey)
    , _sllOAuthToken   :: !(Maybe OAuthToken)
    , _sllFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sllQuotaUser'
--
-- * 'sllPrettyPrint'
--
-- * 'sllUserIP'
--
-- * 'sllSiteURL'
--
-- * 'sllSitemapIndex'
--
-- * 'sllKey'
--
-- * 'sllOAuthToken'
--
-- * 'sllFields'
sitemapsList'
    :: Text -- ^ 'siteUrl'
    -> SitemapsList'
sitemapsList' pSllSiteURL_ =
    SitemapsList'
    { _sllQuotaUser = Nothing
    , _sllPrettyPrint = True
    , _sllUserIP = Nothing
    , _sllSiteURL = pSllSiteURL_
    , _sllSitemapIndex = Nothing
    , _sllKey = Nothing
    , _sllOAuthToken = Nothing
    , _sllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sllQuotaUser :: Lens' SitemapsList' (Maybe Text)
sllQuotaUser
  = lens _sllQuotaUser (\ s a -> s{_sllQuotaUser = a})

-- | Returns response with indentations and line breaks.
sllPrettyPrint :: Lens' SitemapsList' Bool
sllPrettyPrint
  = lens _sllPrettyPrint
      (\ s a -> s{_sllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sllUserIP :: Lens' SitemapsList' (Maybe Text)
sllUserIP
  = lens _sllUserIP (\ s a -> s{_sllUserIP = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sllSiteURL :: Lens' SitemapsList' Text
sllSiteURL
  = lens _sllSiteURL (\ s a -> s{_sllSiteURL = a})

-- | A URL of a site\'s sitemap index. For example:
-- http:\/\/www.example.com\/sitemapindex.xml
sllSitemapIndex :: Lens' SitemapsList' (Maybe Text)
sllSitemapIndex
  = lens _sllSitemapIndex
      (\ s a -> s{_sllSitemapIndex = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sllKey :: Lens' SitemapsList' (Maybe AuthKey)
sllKey = lens _sllKey (\ s a -> s{_sllKey = a})

-- | OAuth 2.0 token for the current user.
sllOAuthToken :: Lens' SitemapsList' (Maybe OAuthToken)
sllOAuthToken
  = lens _sllOAuthToken
      (\ s a -> s{_sllOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sllFields :: Lens' SitemapsList' (Maybe Text)
sllFields
  = lens _sllFields (\ s a -> s{_sllFields = a})

instance GoogleAuth SitemapsList' where
        authKey = sllKey . _Just
        authToken = sllOAuthToken . _Just

instance GoogleRequest SitemapsList' where
        type Rs SitemapsList' = SitemapsListResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitemapsList'{..}
          = go _sllSiteURL _sllSitemapIndex _sllQuotaUser
              (Just _sllPrettyPrint)
              _sllUserIP
              _sllFields
              _sllKey
              _sllOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SitemapsListResource)
                      r
                      u
