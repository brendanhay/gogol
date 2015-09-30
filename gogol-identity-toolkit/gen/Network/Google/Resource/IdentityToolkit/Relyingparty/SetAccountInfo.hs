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
-- Module      : Network.Google.Resource.IdentityToolkit.Relyingparty.SetAccountInfo
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Set account info for a user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingpartySetAccountInfo@.
module Network.Google.Resource.IdentityToolkit.Relyingparty.SetAccountInfo
    (
    -- * REST Resource
      RelyingpartySetAccountInfoResource

    -- * Creating a Request
    , relyingpartySetAccountInfo'
    , RelyingpartySetAccountInfo'

    -- * Request Lenses
    , rsaiQuotaUser
    , rsaiPrettyPrint
    , rsaiUserIp
    , rsaiKey
    , rsaiOauthToken
    , rsaiFields
    , rsaiAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingpartySetAccountInfo@ which the
-- 'RelyingpartySetAccountInfo'' request conforms to.
type RelyingpartySetAccountInfoResource =
     "setAccountInfo" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Post '[JSON] SetAccountInfoResponse

-- | Set account info for a user.
--
-- /See:/ 'relyingpartySetAccountInfo'' smart constructor.
data RelyingpartySetAccountInfo' = RelyingpartySetAccountInfo'
    { _rsaiQuotaUser   :: !(Maybe Text)
    , _rsaiPrettyPrint :: !Bool
    , _rsaiUserIp      :: !(Maybe Text)
    , _rsaiKey         :: !(Maybe Text)
    , _rsaiOauthToken  :: !(Maybe Text)
    , _rsaiFields      :: !(Maybe Text)
    , _rsaiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartySetAccountInfo'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsaiQuotaUser'
--
-- * 'rsaiPrettyPrint'
--
-- * 'rsaiUserIp'
--
-- * 'rsaiKey'
--
-- * 'rsaiOauthToken'
--
-- * 'rsaiFields'
--
-- * 'rsaiAlt'
relyingpartySetAccountInfo'
    :: RelyingpartySetAccountInfo'
relyingpartySetAccountInfo' =
    RelyingpartySetAccountInfo'
    { _rsaiQuotaUser = Nothing
    , _rsaiPrettyPrint = True
    , _rsaiUserIp = Nothing
    , _rsaiKey = Nothing
    , _rsaiOauthToken = Nothing
    , _rsaiFields = Nothing
    , _rsaiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rsaiQuotaUser :: Lens' RelyingpartySetAccountInfo' (Maybe Text)
rsaiQuotaUser
  = lens _rsaiQuotaUser
      (\ s a -> s{_rsaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
rsaiPrettyPrint :: Lens' RelyingpartySetAccountInfo' Bool
rsaiPrettyPrint
  = lens _rsaiPrettyPrint
      (\ s a -> s{_rsaiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rsaiUserIp :: Lens' RelyingpartySetAccountInfo' (Maybe Text)
rsaiUserIp
  = lens _rsaiUserIp (\ s a -> s{_rsaiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rsaiKey :: Lens' RelyingpartySetAccountInfo' (Maybe Text)
rsaiKey = lens _rsaiKey (\ s a -> s{_rsaiKey = a})

-- | OAuth 2.0 token for the current user.
rsaiOauthToken :: Lens' RelyingpartySetAccountInfo' (Maybe Text)
rsaiOauthToken
  = lens _rsaiOauthToken
      (\ s a -> s{_rsaiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rsaiFields :: Lens' RelyingpartySetAccountInfo' (Maybe Text)
rsaiFields
  = lens _rsaiFields (\ s a -> s{_rsaiFields = a})

-- | Data format for the response.
rsaiAlt :: Lens' RelyingpartySetAccountInfo' Alt
rsaiAlt = lens _rsaiAlt (\ s a -> s{_rsaiAlt = a})

instance GoogleRequest RelyingpartySetAccountInfo'
         where
        type Rs RelyingpartySetAccountInfo' =
             SetAccountInfoResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingpartySetAccountInfo'{..}
          = go _rsaiQuotaUser (Just _rsaiPrettyPrint)
              _rsaiUserIp
              _rsaiKey
              _rsaiOauthToken
              _rsaiFields
              (Just _rsaiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartySetAccountInfoResource)
                      r
                      u
