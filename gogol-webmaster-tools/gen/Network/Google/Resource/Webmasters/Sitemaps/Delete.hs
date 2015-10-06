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
-- Module      : Network.Google.Resource.Webmasters.Sitemaps.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a sitemap from this site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitemapsDelete@.
module Network.Google.Resource.Webmasters.Sitemaps.Delete
    (
    -- * REST Resource
      SitemapsDeleteResource

    -- * Creating a Request
    , sitemapsDelete'
    , SitemapsDelete'

    -- * Request Lenses
    , sitQuotaUser
    , sitPrettyPrint
    , sitFeedpath
    , sitUserIP
    , sitSiteURL
    , sitKey
    , sitOAuthToken
    , sitFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitemapsDelete@ which the
-- 'SitemapsDelete'' request conforms to.
type SitemapsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a sitemap from this site.
--
-- /See:/ 'sitemapsDelete'' smart constructor.
data SitemapsDelete' = SitemapsDelete'
    { _sitQuotaUser   :: !(Maybe Text)
    , _sitPrettyPrint :: !Bool
    , _sitFeedpath    :: !Text
    , _sitUserIP      :: !(Maybe Text)
    , _sitSiteURL     :: !Text
    , _sitKey         :: !(Maybe AuthKey)
    , _sitOAuthToken  :: !(Maybe OAuthToken)
    , _sitFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sitQuotaUser'
--
-- * 'sitPrettyPrint'
--
-- * 'sitFeedpath'
--
-- * 'sitUserIP'
--
-- * 'sitSiteURL'
--
-- * 'sitKey'
--
-- * 'sitOAuthToken'
--
-- * 'sitFields'
sitemapsDelete'
    :: Text -- ^ 'feedpath'
    -> Text -- ^ 'siteUrl'
    -> SitemapsDelete'
sitemapsDelete' pSitFeedpath_ pSitSiteURL_ =
    SitemapsDelete'
    { _sitQuotaUser = Nothing
    , _sitPrettyPrint = True
    , _sitFeedpath = pSitFeedpath_
    , _sitUserIP = Nothing
    , _sitSiteURL = pSitSiteURL_
    , _sitKey = Nothing
    , _sitOAuthToken = Nothing
    , _sitFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sitQuotaUser :: Lens' SitemapsDelete' (Maybe Text)
sitQuotaUser
  = lens _sitQuotaUser (\ s a -> s{_sitQuotaUser = a})

-- | Returns response with indentations and line breaks.
sitPrettyPrint :: Lens' SitemapsDelete' Bool
sitPrettyPrint
  = lens _sitPrettyPrint
      (\ s a -> s{_sitPrettyPrint = a})

-- | The URL of the actual sitemap. For example:
-- http:\/\/www.example.com\/sitemap.xml
sitFeedpath :: Lens' SitemapsDelete' Text
sitFeedpath
  = lens _sitFeedpath (\ s a -> s{_sitFeedpath = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sitUserIP :: Lens' SitemapsDelete' (Maybe Text)
sitUserIP
  = lens _sitUserIP (\ s a -> s{_sitUserIP = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sitSiteURL :: Lens' SitemapsDelete' Text
sitSiteURL
  = lens _sitSiteURL (\ s a -> s{_sitSiteURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sitKey :: Lens' SitemapsDelete' (Maybe AuthKey)
sitKey = lens _sitKey (\ s a -> s{_sitKey = a})

-- | OAuth 2.0 token for the current user.
sitOAuthToken :: Lens' SitemapsDelete' (Maybe OAuthToken)
sitOAuthToken
  = lens _sitOAuthToken
      (\ s a -> s{_sitOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sitFields :: Lens' SitemapsDelete' (Maybe Text)
sitFields
  = lens _sitFields (\ s a -> s{_sitFields = a})

instance GoogleAuth SitemapsDelete' where
        _AuthKey = sitKey . _Just
        _AuthToken = sitOAuthToken . _Just

instance GoogleRequest SitemapsDelete' where
        type Rs SitemapsDelete' = ()
        request = requestWith webmasterToolsRequest
        requestWith rq SitemapsDelete'{..}
          = go _sitSiteURL _sitFeedpath _sitQuotaUser
              (Just _sitPrettyPrint)
              _sitUserIP
              _sitFields
              _sitKey
              _sitOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy SitemapsDeleteResource)
                      rq
