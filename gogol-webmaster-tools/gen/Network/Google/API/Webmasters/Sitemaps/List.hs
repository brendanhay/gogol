{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Webmasters.Sitemaps.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the sitemaps-entries submitted for this site, or included in the
-- sitemap index file (if sitemapIndex is specified in the request).
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @webmasters.sitemaps.list@.
module Network.Google.API.Webmasters.Sitemaps.List
    (
    -- * REST Resource
      SitemapsListAPI

    -- * Creating a Request
    , sitemapsList'
    , SitemapsList'

    -- * Request Lenses
    , sQuotaUser
    , sPrettyPrint
    , sUserIp
    , sSiteUrl
    , sSitemapIndex
    , sKey
    , sOauthToken
    , sFields
    , sAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Webmaster.Tools.Types

-- | A resource alias for webmasters.sitemaps.list which the
-- 'SitemapsList'' request conforms to.
type SitemapsListAPI =
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
    { _sQuotaUser    :: !(Maybe Text)
    , _sPrettyPrint  :: !Bool
    , _sUserIp       :: !(Maybe Text)
    , _sSiteUrl      :: !Text
    , _sSitemapIndex :: !(Maybe Text)
    , _sKey          :: !(Maybe Text)
    , _sOauthToken   :: !(Maybe Text)
    , _sFields       :: !(Maybe Text)
    , _sAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sUserIp'
--
-- * 'sSiteUrl'
--
-- * 'sSitemapIndex'
--
-- * 'sKey'
--
-- * 'sOauthToken'
--
-- * 'sFields'
--
-- * 'sAlt'
sitemapsList'
    :: Text -- ^ 'siteUrl'
    -> SitemapsList'
sitemapsList' pSSiteUrl_ =
    SitemapsList'
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIp = Nothing
    , _sSiteUrl = pSSiteUrl_
    , _sSitemapIndex = Nothing
    , _sKey = Nothing
    , _sOauthToken = Nothing
    , _sFields = Nothing
    , _sAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' SitemapsList' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' SitemapsList' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIp :: Lens' SitemapsList' (Maybe Text)
sUserIp = lens _sUserIp (\ s a -> s{_sUserIp = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sSiteUrl :: Lens' SitemapsList' Text
sSiteUrl = lens _sSiteUrl (\ s a -> s{_sSiteUrl = a})

-- | A URL of a site\'s sitemap index. For example:
-- http:\/\/www.example.com\/sitemapindex.xml
sSitemapIndex :: Lens' SitemapsList' (Maybe Text)
sSitemapIndex
  = lens _sSitemapIndex
      (\ s a -> s{_sSitemapIndex = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SitemapsList' (Maybe Text)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | OAuth 2.0 token for the current user.
sOauthToken :: Lens' SitemapsList' (Maybe Text)
sOauthToken
  = lens _sOauthToken (\ s a -> s{_sOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SitemapsList' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | Data format for the response.
sAlt :: Lens' SitemapsList' Alt
sAlt = lens _sAlt (\ s a -> s{_sAlt = a})

instance GoogleRequest SitemapsList' where
        type Rs SitemapsList' = SitemapsListResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitemapsList'{..}
          = go _sQuotaUser (Just _sPrettyPrint) _sUserIp
              _sSiteUrl
              _sSitemapIndex
              _sKey
              _sOauthToken
              _sFields
              (Just _sAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SitemapsListAPI) r
                      u
