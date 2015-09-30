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
-- Module      : Network.Google.Resource.Webmasters.Sites.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a site from the set of the user\'s Webmaster Tools sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitesDelete@.
module Network.Google.Resource.Webmasters.Sites.Delete
    (
    -- * REST Resource
      SitesDeleteResource

    -- * Creating a Request
    , sitesDelete'
    , SitesDelete'

    -- * Request Lenses
    , sdQuotaUser
    , sdPrettyPrint
    , sdUserIp
    , sdSiteUrl
    , sdKey
    , sdOauthToken
    , sdFields
    , sdAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitesDelete@ which the
-- 'SitesDelete'' request conforms to.
type SitesDeleteResource =
     "sites" :>
       Capture "siteUrl" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Removes a site from the set of the user\'s Webmaster Tools sites.
--
-- /See:/ 'sitesDelete'' smart constructor.
data SitesDelete' = SitesDelete'
    { _sdQuotaUser   :: !(Maybe Text)
    , _sdPrettyPrint :: !Bool
    , _sdUserIp      :: !(Maybe Text)
    , _sdSiteUrl     :: !Text
    , _sdKey         :: !(Maybe Text)
    , _sdOauthToken  :: !(Maybe Text)
    , _sdFields      :: !(Maybe Text)
    , _sdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdQuotaUser'
--
-- * 'sdPrettyPrint'
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
sitesDelete'
    :: Text -- ^ 'siteUrl'
    -> SitesDelete'
sitesDelete' pSdSiteUrl_ =
    SitesDelete'
    { _sdQuotaUser = Nothing
    , _sdPrettyPrint = True
    , _sdUserIp = Nothing
    , _sdSiteUrl = pSdSiteUrl_
    , _sdKey = Nothing
    , _sdOauthToken = Nothing
    , _sdFields = Nothing
    , _sdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sdQuotaUser :: Lens' SitesDelete' (Maybe Text)
sdQuotaUser
  = lens _sdQuotaUser (\ s a -> s{_sdQuotaUser = a})

-- | Returns response with indentations and line breaks.
sdPrettyPrint :: Lens' SitesDelete' Bool
sdPrettyPrint
  = lens _sdPrettyPrint
      (\ s a -> s{_sdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sdUserIp :: Lens' SitesDelete' (Maybe Text)
sdUserIp = lens _sdUserIp (\ s a -> s{_sdUserIp = a})

-- | The URI of the property as defined in Search Console. Examples:
-- http:\/\/www.example.com\/ or android-app:\/\/com.example\/
sdSiteUrl :: Lens' SitesDelete' Text
sdSiteUrl
  = lens _sdSiteUrl (\ s a -> s{_sdSiteUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sdKey :: Lens' SitesDelete' (Maybe Text)
sdKey = lens _sdKey (\ s a -> s{_sdKey = a})

-- | OAuth 2.0 token for the current user.
sdOauthToken :: Lens' SitesDelete' (Maybe Text)
sdOauthToken
  = lens _sdOauthToken (\ s a -> s{_sdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sdFields :: Lens' SitesDelete' (Maybe Text)
sdFields = lens _sdFields (\ s a -> s{_sdFields = a})

-- | Data format for the response.
sdAlt :: Lens' SitesDelete' Alt
sdAlt = lens _sdAlt (\ s a -> s{_sdAlt = a})

instance GoogleRequest SitesDelete' where
        type Rs SitesDelete' = ()
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitesDelete'{..}
          = go _sdQuotaUser (Just _sdPrettyPrint) _sdUserIp
              _sdSiteUrl
              _sdKey
              _sdOauthToken
              _sdFields
              (Just _sdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SitesDeleteResource)
                      r
                      u
