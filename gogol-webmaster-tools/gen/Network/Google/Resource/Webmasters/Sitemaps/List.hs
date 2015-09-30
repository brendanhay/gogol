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
    , sllUserIp
    , sllSiteUrl
    , sllSitemapIndex
    , sllKey
    , sllOauthToken
    , sllFields
    , sllAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitemapsList@ which the
-- 'SitemapsList'' request conforms to.
type SitemapsListResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "sitemaps" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "sitemapIndex" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] SitemapsListResponse

-- | Lists the sitemaps-entries submitted for this site, or included in the
-- sitemap index file (if sitemapIndex is specified in the request).
--
-- /See:/ 'sitemapsList'' smart constructor.
data SitemapsList' = SitemapsList'
    { _sllQuotaUser    :: !(Maybe Text)
    , _sllPrettyPrint  :: !Bool
    , _sllUserIp       :: !(Maybe Text)
    , _sllSiteUrl      :: !Text
    , _sllSitemapIndex :: !(Maybe Text)
    , _sllKey          :: !(Maybe Text)
    , _sllOauthToken   :: !(Maybe Text)
    , _sllFields       :: !(Maybe Text)
    , _sllAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sllQuotaUser'
--
-- * 'sllPrettyPrint'
--
-- * 'sllUserIp'
--
-- * 'sllSiteUrl'
--
-- * 'sllSitemapIndex'
--
-- * 'sllKey'
--
-- * 'sllOauthToken'
--
-- * 'sllFields'
--
-- * 'sllAlt'
sitemapsList'
    :: Text -- ^ 'siteUrl'
    -> SitemapsList'
sitemapsList' pSllSiteUrl_ =
    SitemapsList'
    { _sllQuotaUser = Nothing
    , _sllPrettyPrint = True
    , _sllUserIp = Nothing
    , _sllSiteUrl = pSllSiteUrl_
    , _sllSitemapIndex = Nothing
    , _sllKey = Nothing
    , _sllOauthToken = Nothing
    , _sllFields = Nothing
    , _sllAlt = JSON
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
sllUserIp :: Lens' SitemapsList' (Maybe Text)
sllUserIp
  = lens _sllUserIp (\ s a -> s{_sllUserIp = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sllSiteUrl :: Lens' SitemapsList' Text
sllSiteUrl
  = lens _sllSiteUrl (\ s a -> s{_sllSiteUrl = a})

-- | A URL of a site\'s sitemap index. For example:
-- http:\/\/www.example.com\/sitemapindex.xml
sllSitemapIndex :: Lens' SitemapsList' (Maybe Text)
sllSitemapIndex
  = lens _sllSitemapIndex
      (\ s a -> s{_sllSitemapIndex = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sllKey :: Lens' SitemapsList' (Maybe Text)
sllKey = lens _sllKey (\ s a -> s{_sllKey = a})

-- | OAuth 2.0 token for the current user.
sllOauthToken :: Lens' SitemapsList' (Maybe Text)
sllOauthToken
  = lens _sllOauthToken
      (\ s a -> s{_sllOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sllFields :: Lens' SitemapsList' (Maybe Text)
sllFields
  = lens _sllFields (\ s a -> s{_sllFields = a})

-- | Data format for the response.
sllAlt :: Lens' SitemapsList' Alt
sllAlt = lens _sllAlt (\ s a -> s{_sllAlt = a})

instance GoogleRequest SitemapsList' where
        type Rs SitemapsList' = SitemapsListResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitemapsList'{..}
          = go _sllQuotaUser (Just _sllPrettyPrint) _sllUserIp
              _sllSiteUrl
              _sllSitemapIndex
              _sllKey
              _sllOauthToken
              _sllFields
              (Just _sllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SitemapsListResource)
                      r
                      u
