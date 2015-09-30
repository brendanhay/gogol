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
-- Module      : Network.Google.Resource.Webmasters.Sites.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves information about specific site.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitesGet@.
module Network.Google.Resource.Webmasters.Sites.Get
    (
    -- * REST Resource
      SitesGetResource

    -- * Creating a Request
    , sitesGet'
    , SitesGet'

    -- * Request Lenses
    , sQuotaUser
    , sPrettyPrint
    , sUserIp
    , sSiteUrl
    , sKey
    , sOauthToken
    , sFields
    , sAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitesGet@ which the
-- 'SitesGet'' request conforms to.
type SitesGetResource =
     "sites" :>
       Capture "siteUrl" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] WmxSite

-- | Retrieves information about specific site.
--
-- /See:/ 'sitesGet'' smart constructor.
data SitesGet' = SitesGet'
    { _sQuotaUser   :: !(Maybe Text)
    , _sPrettyPrint :: !Bool
    , _sUserIp      :: !(Maybe Text)
    , _sSiteUrl     :: !Text
    , _sKey         :: !(Maybe Text)
    , _sOauthToken  :: !(Maybe Text)
    , _sFields      :: !(Maybe Text)
    , _sAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesGet'' with the minimum fields required to make a request.
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
-- * 'sKey'
--
-- * 'sOauthToken'
--
-- * 'sFields'
--
-- * 'sAlt'
sitesGet'
    :: Text -- ^ 'siteUrl'
    -> SitesGet'
sitesGet' pSSiteUrl_ =
    SitesGet'
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIp = Nothing
    , _sSiteUrl = pSSiteUrl_
    , _sKey = Nothing
    , _sOauthToken = Nothing
    , _sFields = Nothing
    , _sAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' SitesGet' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' SitesGet' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIp :: Lens' SitesGet' (Maybe Text)
sUserIp = lens _sUserIp (\ s a -> s{_sUserIp = a})

-- | The URI of the property as defined in Search Console. Examples:
-- http:\/\/www.example.com\/ or android-app:\/\/com.example\/
sSiteUrl :: Lens' SitesGet' Text
sSiteUrl = lens _sSiteUrl (\ s a -> s{_sSiteUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SitesGet' (Maybe Text)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | OAuth 2.0 token for the current user.
sOauthToken :: Lens' SitesGet' (Maybe Text)
sOauthToken
  = lens _sOauthToken (\ s a -> s{_sOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SitesGet' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | Data format for the response.
sAlt :: Lens' SitesGet' Alt
sAlt = lens _sAlt (\ s a -> s{_sAlt = a})

instance GoogleRequest SitesGet' where
        type Rs SitesGet' = WmxSite
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitesGet'{..}
          = go _sQuotaUser (Just _sPrettyPrint) _sUserIp
              _sSiteUrl
              _sKey
              _sOauthToken
              _sFields
              (Just _sAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SitesGetResource) r
                      u
