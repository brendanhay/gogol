{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Webmasters.Sitemaps.List
    (
    -- * REST Resource
      SitemapsListAPI

    -- * Creating a Request
    , sitemapsList
    , SitemapsList

    -- * Request Lenses
    , slQuotaUser
    , slPrettyPrint
    , slUserIp
    , slSiteUrl
    , slSitemapIndex
    , slKey
    , slOauthToken
    , slFields
    , slAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitemapsList@ which the
-- 'SitemapsList' request conforms to.
type SitemapsListAPI =
     "sites" :>
       Capture "siteUrl" Text :>
         "sitemaps" :>
           QueryParam "sitemapIndex" Text :>
             Get '[JSON] SitemapsListResponse

-- | Lists the sitemaps-entries submitted for this site, or included in the
-- sitemap index file (if sitemapIndex is specified in the request).
--
-- /See:/ 'sitemapsList' smart constructor.
data SitemapsList = SitemapsList
    { _slQuotaUser    :: !(Maybe Text)
    , _slPrettyPrint  :: !Bool
    , _slUserIp       :: !(Maybe Text)
    , _slSiteUrl      :: !Text
    , _slSitemapIndex :: !(Maybe Text)
    , _slKey          :: !(Maybe Text)
    , _slOauthToken   :: !(Maybe Text)
    , _slFields       :: !(Maybe Text)
    , _slAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slQuotaUser'
--
-- * 'slPrettyPrint'
--
-- * 'slUserIp'
--
-- * 'slSiteUrl'
--
-- * 'slSitemapIndex'
--
-- * 'slKey'
--
-- * 'slOauthToken'
--
-- * 'slFields'
--
-- * 'slAlt'
sitemapsList
    :: Text -- ^ 'siteUrl'
    -> SitemapsList
sitemapsList pSlSiteUrl_ =
    SitemapsList
    { _slQuotaUser = Nothing
    , _slPrettyPrint = True
    , _slUserIp = Nothing
    , _slSiteUrl = pSlSiteUrl_
    , _slSitemapIndex = Nothing
    , _slKey = Nothing
    , _slOauthToken = Nothing
    , _slFields = Nothing
    , _slAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
slQuotaUser :: Lens' SitemapsList' (Maybe Text)
slQuotaUser
  = lens _slQuotaUser (\ s a -> s{_slQuotaUser = a})

-- | Returns response with indentations and line breaks.
slPrettyPrint :: Lens' SitemapsList' Bool
slPrettyPrint
  = lens _slPrettyPrint
      (\ s a -> s{_slPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
slUserIp :: Lens' SitemapsList' (Maybe Text)
slUserIp = lens _slUserIp (\ s a -> s{_slUserIp = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
slSiteUrl :: Lens' SitemapsList' Text
slSiteUrl
  = lens _slSiteUrl (\ s a -> s{_slSiteUrl = a})

-- | A URL of a site\'s sitemap index. For example:
-- http:\/\/www.example.com\/sitemapindex.xml
slSitemapIndex :: Lens' SitemapsList' (Maybe Text)
slSitemapIndex
  = lens _slSitemapIndex
      (\ s a -> s{_slSitemapIndex = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
slKey :: Lens' SitemapsList' (Maybe Text)
slKey = lens _slKey (\ s a -> s{_slKey = a})

-- | OAuth 2.0 token for the current user.
slOauthToken :: Lens' SitemapsList' (Maybe Text)
slOauthToken
  = lens _slOauthToken (\ s a -> s{_slOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
slFields :: Lens' SitemapsList' (Maybe Text)
slFields = lens _slFields (\ s a -> s{_slFields = a})

-- | Data format for the response.
slAlt :: Lens' SitemapsList' Text
slAlt = lens _slAlt (\ s a -> s{_slAlt = a})

instance GoogleRequest SitemapsList' where
        type Rs SitemapsList' = SitemapsListResponse
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitemapsList{..}
          = go _slQuotaUser _slPrettyPrint _slUserIp _slSiteUrl
              _slSitemapIndex
              _slKey
              _slOauthToken
              _slFields
              _slAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SitemapsListAPI) r
                      u
