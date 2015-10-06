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
    , sgUserIP
    , sgSiteURL
    , sgKey
    , sgOAuthToken
    , sgFields
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
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] WmxSitemap

-- | Retrieves information about a specific sitemap.
--
-- /See:/ 'sitemapsGet'' smart constructor.
data SitemapsGet' = SitemapsGet'
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgFeedpath    :: !Text
    , _sgUserIP      :: !(Maybe Text)
    , _sgSiteURL     :: !Text
    , _sgKey         :: !(Maybe AuthKey)
    , _sgOAuthToken  :: !(Maybe OAuthToken)
    , _sgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'sgUserIP'
--
-- * 'sgSiteURL'
--
-- * 'sgKey'
--
-- * 'sgOAuthToken'
--
-- * 'sgFields'
sitemapsGet'
    :: Text -- ^ 'feedpath'
    -> Text -- ^ 'siteUrl'
    -> SitemapsGet'
sitemapsGet' pSgFeedpath_ pSgSiteURL_ =
    SitemapsGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgFeedpath = pSgFeedpath_
    , _sgUserIP = Nothing
    , _sgSiteURL = pSgSiteURL_
    , _sgKey = Nothing
    , _sgOAuthToken = Nothing
    , _sgFields = Nothing
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
sgUserIP :: Lens' SitemapsGet' (Maybe Text)
sgUserIP = lens _sgUserIP (\ s a -> s{_sgUserIP = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sgSiteURL :: Lens' SitemapsGet' Text
sgSiteURL
  = lens _sgSiteURL (\ s a -> s{_sgSiteURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SitemapsGet' (Maybe AuthKey)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | OAuth 2.0 token for the current user.
sgOAuthToken :: Lens' SitemapsGet' (Maybe OAuthToken)
sgOAuthToken
  = lens _sgOAuthToken (\ s a -> s{_sgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SitemapsGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

instance GoogleAuth SitemapsGet' where
        _AuthKey = sgKey . _Just
        _AuthToken = sgOAuthToken . _Just

instance GoogleRequest SitemapsGet' where
        type Rs SitemapsGet' = WmxSitemap
        request = requestWith webmasterToolsRequest
        requestWith rq SitemapsGet'{..}
          = go _sgSiteURL _sgFeedpath _sgQuotaUser
              (Just _sgPrettyPrint)
              _sgUserIP
              _sgFields
              _sgKey
              _sgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy SitemapsGetResource) rq
