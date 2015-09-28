{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Webmasters.Sitemaps.Submit
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Submits a sitemap for a site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @webmasters.sitemaps.submit@.
module Network.Google.API.Webmasters.Sitemaps.Submit
    (
    -- * REST Resource
      SitemapsSubmitAPI

    -- * Creating a Request
    , sitemapsSubmit'
    , SitemapsSubmit'

    -- * Request Lenses
    , ssQuotaUser
    , ssPrettyPrint
    , ssFeedpath
    , ssUserIp
    , ssSiteUrl
    , ssKey
    , ssOauthToken
    , ssFields
    , ssAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Webmaster.Tools.Types

-- | A resource alias for webmasters.sitemaps.submit which the
-- 'SitemapsSubmit'' request conforms to.
type SitemapsSubmitAPI =
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
                         QueryParam "alt" Alt :> Put '[JSON] ()

-- | Submits a sitemap for a site.
--
-- /See:/ 'sitemapsSubmit'' smart constructor.
data SitemapsSubmit' = SitemapsSubmit'
    { _ssQuotaUser   :: !(Maybe Text)
    , _ssPrettyPrint :: !Bool
    , _ssFeedpath    :: !Text
    , _ssUserIp      :: !(Maybe Text)
    , _ssSiteUrl     :: !Text
    , _ssKey         :: !(Maybe Text)
    , _ssOauthToken  :: !(Maybe Text)
    , _ssFields      :: !(Maybe Text)
    , _ssAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsSubmit'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssQuotaUser'
--
-- * 'ssPrettyPrint'
--
-- * 'ssFeedpath'
--
-- * 'ssUserIp'
--
-- * 'ssSiteUrl'
--
-- * 'ssKey'
--
-- * 'ssOauthToken'
--
-- * 'ssFields'
--
-- * 'ssAlt'
sitemapsSubmit'
    :: Text -- ^ 'feedpath'
    -> Text -- ^ 'siteUrl'
    -> SitemapsSubmit'
sitemapsSubmit' pSsFeedpath_ pSsSiteUrl_ =
    SitemapsSubmit'
    { _ssQuotaUser = Nothing
    , _ssPrettyPrint = True
    , _ssFeedpath = pSsFeedpath_
    , _ssUserIp = Nothing
    , _ssSiteUrl = pSsSiteUrl_
    , _ssKey = Nothing
    , _ssOauthToken = Nothing
    , _ssFields = Nothing
    , _ssAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ssQuotaUser :: Lens' SitemapsSubmit' (Maybe Text)
ssQuotaUser
  = lens _ssQuotaUser (\ s a -> s{_ssQuotaUser = a})

-- | Returns response with indentations and line breaks.
ssPrettyPrint :: Lens' SitemapsSubmit' Bool
ssPrettyPrint
  = lens _ssPrettyPrint
      (\ s a -> s{_ssPrettyPrint = a})

-- | The URL of the sitemap to add. For example:
-- http:\/\/www.example.com\/sitemap.xml
ssFeedpath :: Lens' SitemapsSubmit' Text
ssFeedpath
  = lens _ssFeedpath (\ s a -> s{_ssFeedpath = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ssUserIp :: Lens' SitemapsSubmit' (Maybe Text)
ssUserIp = lens _ssUserIp (\ s a -> s{_ssUserIp = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
ssSiteUrl :: Lens' SitemapsSubmit' Text
ssSiteUrl
  = lens _ssSiteUrl (\ s a -> s{_ssSiteUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ssKey :: Lens' SitemapsSubmit' (Maybe Text)
ssKey = lens _ssKey (\ s a -> s{_ssKey = a})

-- | OAuth 2.0 token for the current user.
ssOauthToken :: Lens' SitemapsSubmit' (Maybe Text)
ssOauthToken
  = lens _ssOauthToken (\ s a -> s{_ssOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ssFields :: Lens' SitemapsSubmit' (Maybe Text)
ssFields = lens _ssFields (\ s a -> s{_ssFields = a})

-- | Data format for the response.
ssAlt :: Lens' SitemapsSubmit' Alt
ssAlt = lens _ssAlt (\ s a -> s{_ssAlt = a})

instance GoogleRequest SitemapsSubmit' where
        type Rs SitemapsSubmit' = ()
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitemapsSubmit'{..}
          = go _ssQuotaUser (Just _ssPrettyPrint) _ssFeedpath
              _ssUserIp
              _ssSiteUrl
              _ssKey
              _ssOauthToken
              _ssFields
              (Just _ssAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SitemapsSubmitAPI)
                      r
                      u
