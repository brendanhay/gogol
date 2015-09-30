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
    , sitUserIp
    , sitSiteUrl
    , sitKey
    , sitOauthToken
    , sitFields
    , sitAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a sitemap from this site.
--
-- /See:/ 'sitemapsDelete'' smart constructor.
data SitemapsDelete' = SitemapsDelete'
    { _sitQuotaUser   :: !(Maybe Text)
    , _sitPrettyPrint :: !Bool
    , _sitFeedpath    :: !Text
    , _sitUserIp      :: !(Maybe Text)
    , _sitSiteUrl     :: !Text
    , _sitKey         :: !(Maybe Text)
    , _sitOauthToken  :: !(Maybe Text)
    , _sitFields      :: !(Maybe Text)
    , _sitAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'sitUserIp'
--
-- * 'sitSiteUrl'
--
-- * 'sitKey'
--
-- * 'sitOauthToken'
--
-- * 'sitFields'
--
-- * 'sitAlt'
sitemapsDelete'
    :: Text -- ^ 'feedpath'
    -> Text -- ^ 'siteUrl'
    -> SitemapsDelete'
sitemapsDelete' pSitFeedpath_ pSitSiteUrl_ =
    SitemapsDelete'
    { _sitQuotaUser = Nothing
    , _sitPrettyPrint = True
    , _sitFeedpath = pSitFeedpath_
    , _sitUserIp = Nothing
    , _sitSiteUrl = pSitSiteUrl_
    , _sitKey = Nothing
    , _sitOauthToken = Nothing
    , _sitFields = Nothing
    , _sitAlt = JSON
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
sitUserIp :: Lens' SitemapsDelete' (Maybe Text)
sitUserIp
  = lens _sitUserIp (\ s a -> s{_sitUserIp = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sitSiteUrl :: Lens' SitemapsDelete' Text
sitSiteUrl
  = lens _sitSiteUrl (\ s a -> s{_sitSiteUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sitKey :: Lens' SitemapsDelete' (Maybe Text)
sitKey = lens _sitKey (\ s a -> s{_sitKey = a})

-- | OAuth 2.0 token for the current user.
sitOauthToken :: Lens' SitemapsDelete' (Maybe Text)
sitOauthToken
  = lens _sitOauthToken
      (\ s a -> s{_sitOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sitFields :: Lens' SitemapsDelete' (Maybe Text)
sitFields
  = lens _sitFields (\ s a -> s{_sitFields = a})

-- | Data format for the response.
sitAlt :: Lens' SitemapsDelete' Alt
sitAlt = lens _sitAlt (\ s a -> s{_sitAlt = a})

instance GoogleRequest SitemapsDelete' where
        type Rs SitemapsDelete' = ()
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitemapsDelete'{..}
          = go _sitQuotaUser (Just _sitPrettyPrint)
              _sitFeedpath
              _sitUserIp
              _sitSiteUrl
              _sitKey
              _sitOauthToken
              _sitFields
              (Just _sitAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SitemapsDeleteResource)
                      r
                      u
