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
-- Module      : Network.Google.Resource.Webmasters.Sitemaps.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves information about a specific sitemap.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitemapsGet@.
module Network.Google.Resource.Webmasters.Sitemaps.Get
    (
    -- * REST Resource
      SitemapsGetResource

    -- * Creating a Request
    , sitemapsGet'
    , SitemapsGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgFeedpath
    , sgUserIp
    , sgSiteUrl
    , sgKey
    , sgOauthToken
    , sgFields
    , sgAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitemapsGet@ which the
-- 'SitemapsGet'' request conforms to.
type SitemapsGetResource =
     "sites" :>
       Capture "siteUrl" Text :>
         "sitemaps" :>
           Capture "feedpath" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] WmxSitemap

-- | Retrieves information about a specific sitemap.
--
-- /See:/ 'sitemapsGet'' smart constructor.
data SitemapsGet' = SitemapsGet'
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgFeedpath    :: !Text
    , _sgUserIp      :: !(Maybe Text)
    , _sgSiteUrl     :: !Text
    , _sgKey         :: !(Maybe Text)
    , _sgOauthToken  :: !(Maybe Text)
    , _sgFields      :: !(Maybe Text)
    , _sgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgFeedpath'
--
-- * 'sgUserIp'
--
-- * 'sgSiteUrl'
--
-- * 'sgKey'
--
-- * 'sgOauthToken'
--
-- * 'sgFields'
--
-- * 'sgAlt'
sitemapsGet'
    :: Text -- ^ 'feedpath'
    -> Text -- ^ 'siteUrl'
    -> SitemapsGet'
sitemapsGet' pSgFeedpath_ pSgSiteUrl_ =
    SitemapsGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgFeedpath = pSgFeedpath_
    , _sgUserIp = Nothing
    , _sgSiteUrl = pSgSiteUrl_
    , _sgKey = Nothing
    , _sgOauthToken = Nothing
    , _sgFields = Nothing
    , _sgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' SitemapsGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' SitemapsGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | The URL of the actual sitemap. For example:
-- http:\/\/www.example.com\/sitemap.xml
sgFeedpath :: Lens' SitemapsGet' Text
sgFeedpath
  = lens _sgFeedpath (\ s a -> s{_sgFeedpath = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIp :: Lens' SitemapsGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sgSiteUrl :: Lens' SitemapsGet' Text
sgSiteUrl
  = lens _sgSiteUrl (\ s a -> s{_sgSiteUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SitemapsGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' SitemapsGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SitemapsGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | Data format for the response.
sgAlt :: Lens' SitemapsGet' Alt
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest SitemapsGet' where
        type Rs SitemapsGet' = WmxSitemap
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitemapsGet'{..}
          = go _sgQuotaUser (Just _sgPrettyPrint) _sgFeedpath
              _sgUserIp
              _sgSiteUrl
              _sgKey
              _sgOauthToken
              _sgFields
              (Just _sgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SitemapsGetResource)
                      r
                      u
