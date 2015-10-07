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
    , sUserIP
    , sSiteURL
    , sKey
    , sOAuthToken
    , sFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitesGet@ method which the
-- 'SitesGet'' request conforms to.
type SitesGetResource =
     "sites" :>
       Capture "siteUrl" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] WmxSite

-- | Retrieves information about specific site.
--
-- /See:/ 'sitesGet'' smart constructor.
data SitesGet' = SitesGet'
    { _sQuotaUser   :: !(Maybe Text)
    , _sPrettyPrint :: !Bool
    , _sUserIP      :: !(Maybe Text)
    , _sSiteURL     :: !Text
    , _sKey         :: !(Maybe AuthKey)
    , _sOAuthToken  :: !(Maybe OAuthToken)
    , _sFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sUserIP'
--
-- * 'sSiteURL'
--
-- * 'sKey'
--
-- * 'sOAuthToken'
--
-- * 'sFields'
sitesGet'
    :: Text -- ^ 'siteUrl'
    -> SitesGet'
sitesGet' pSSiteURL_ =
    SitesGet'
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIP = Nothing
    , _sSiteURL = pSSiteURL_
    , _sKey = Nothing
    , _sOAuthToken = Nothing
    , _sFields = Nothing
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
sUserIP :: Lens' SitesGet' (Maybe Text)
sUserIP = lens _sUserIP (\ s a -> s{_sUserIP = a})

-- | The URI of the property as defined in Search Console. Examples:
-- http:\/\/www.example.com\/ or android-app:\/\/com.example\/
sSiteURL :: Lens' SitesGet' Text
sSiteURL = lens _sSiteURL (\ s a -> s{_sSiteURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SitesGet' (Maybe AuthKey)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | OAuth 2.0 token for the current user.
sOAuthToken :: Lens' SitesGet' (Maybe OAuthToken)
sOAuthToken
  = lens _sOAuthToken (\ s a -> s{_sOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SitesGet' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

instance GoogleAuth SitesGet' where
        _AuthKey = sKey . _Just
        _AuthToken = sOAuthToken . _Just

instance GoogleRequest SitesGet' where
        type Rs SitesGet' = WmxSite
        request = requestWith webmasterToolsRequest
        requestWith rq SitesGet'{..}
          = go _sSiteURL _sQuotaUser (Just _sPrettyPrint)
              _sUserIP
              _sFields
              _sKey
              _sOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy SitesGetResource) rq
