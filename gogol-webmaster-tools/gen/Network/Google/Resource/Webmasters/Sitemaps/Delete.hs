{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Webmasters.Sitemaps.Delete
    (
    -- * REST Resource
      SitemapsDeleteAPI

    -- * Creating a Request
    , sitemapsDelete
    , SitemapsDelete

    -- * Request Lenses
    , sdQuotaUser
    , sdPrettyPrint
    , sdFeedpath
    , sdUserIp
    , sdSiteUrl
    , sdKey
    , sdOauthToken
    , sdFields
    , sdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitemapsDelete@ which the
-- 'SitemapsDelete' request conforms to.
type SitemapsDeleteAPI =
     "sites" :>
       Capture "siteUrl" Text :>
         "sitemaps" :>
           Capture "feedpath" Text :> Delete '[JSON] ()

-- | Deletes a sitemap from this site.
--
-- /See:/ 'sitemapsDelete' smart constructor.
data SitemapsDelete = SitemapsDelete
    { _sdQuotaUser   :: !(Maybe Text)
    , _sdPrettyPrint :: !Bool
    , _sdFeedpath    :: !Text
    , _sdUserIp      :: !(Maybe Text)
    , _sdSiteUrl     :: !Text
    , _sdKey         :: !(Maybe Text)
    , _sdOauthToken  :: !(Maybe Text)
    , _sdFields      :: !(Maybe Text)
    , _sdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitemapsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdQuotaUser'
--
-- * 'sdPrettyPrint'
--
-- * 'sdFeedpath'
--
-- * 'sdUserIp'
--
-- * 'sdSiteUrl'
--
-- * 'sdKey'
--
-- * 'sdOauthToken'
--
-- * 'sdFields'
--
-- * 'sdAlt'
sitemapsDelete
    :: Text -- ^ 'feedpath'
    -> Text -- ^ 'siteUrl'
    -> SitemapsDelete
sitemapsDelete pSdFeedpath_ pSdSiteUrl_ =
    SitemapsDelete
    { _sdQuotaUser = Nothing
    , _sdPrettyPrint = True
    , _sdFeedpath = pSdFeedpath_
    , _sdUserIp = Nothing
    , _sdSiteUrl = pSdSiteUrl_
    , _sdKey = Nothing
    , _sdOauthToken = Nothing
    , _sdFields = Nothing
    , _sdAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sdQuotaUser :: Lens' SitemapsDelete' (Maybe Text)
sdQuotaUser
  = lens _sdQuotaUser (\ s a -> s{_sdQuotaUser = a})

-- | Returns response with indentations and line breaks.
sdPrettyPrint :: Lens' SitemapsDelete' Bool
sdPrettyPrint
  = lens _sdPrettyPrint
      (\ s a -> s{_sdPrettyPrint = a})

-- | The URL of the actual sitemap. For example:
-- http:\/\/www.example.com\/sitemap.xml
sdFeedpath :: Lens' SitemapsDelete' Text
sdFeedpath
  = lens _sdFeedpath (\ s a -> s{_sdFeedpath = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sdUserIp :: Lens' SitemapsDelete' (Maybe Text)
sdUserIp = lens _sdUserIp (\ s a -> s{_sdUserIp = a})

-- | The site\'s URL, including protocol. For example:
-- http:\/\/www.example.com\/
sdSiteUrl :: Lens' SitemapsDelete' Text
sdSiteUrl
  = lens _sdSiteUrl (\ s a -> s{_sdSiteUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sdKey :: Lens' SitemapsDelete' (Maybe Text)
sdKey = lens _sdKey (\ s a -> s{_sdKey = a})

-- | OAuth 2.0 token for the current user.
sdOauthToken :: Lens' SitemapsDelete' (Maybe Text)
sdOauthToken
  = lens _sdOauthToken (\ s a -> s{_sdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sdFields :: Lens' SitemapsDelete' (Maybe Text)
sdFields = lens _sdFields (\ s a -> s{_sdFields = a})

-- | Data format for the response.
sdAlt :: Lens' SitemapsDelete' Text
sdAlt = lens _sdAlt (\ s a -> s{_sdAlt = a})

instance GoogleRequest SitemapsDelete' where
        type Rs SitemapsDelete' = ()
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitemapsDelete{..}
          = go _sdQuotaUser _sdPrettyPrint _sdFeedpath
              _sdUserIp
              _sdSiteUrl
              _sdKey
              _sdOauthToken
              _sdFields
              _sdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SitemapsDeleteAPI)
                      r
                      u
