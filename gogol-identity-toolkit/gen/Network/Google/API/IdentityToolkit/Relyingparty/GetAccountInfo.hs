{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.IdentityToolkit.Relyingparty.GetAccountInfo
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the account info.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.getAccountInfo@.
module Network.Google.API.IdentityToolkit.Relyingparty.GetAccountInfo
    (
    -- * REST Resource
      RelyingpartyGetAccountInfoAPI

    -- * Creating a Request
    , relyingpartyGetAccountInfo'
    , RelyingpartyGetAccountInfo'

    -- * Request Lenses
    , rgaiQuotaUser
    , rgaiPrettyPrint
    , rgaiUserIp
    , rgaiKey
    , rgaiOauthToken
    , rgaiFields
    , rgaiAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for identitytoolkit.relyingparty.getAccountInfo which the
-- 'RelyingpartyGetAccountInfo'' request conforms to.
type RelyingpartyGetAccountInfoAPI =
     "getAccountInfo" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Post '[JSON] GetAccountInfoResponse

-- | Returns the account info.
--
-- /See:/ 'relyingpartyGetAccountInfo'' smart constructor.
data RelyingpartyGetAccountInfo' = RelyingpartyGetAccountInfo'
    { _rgaiQuotaUser   :: !(Maybe Text)
    , _rgaiPrettyPrint :: !Bool
    , _rgaiUserIp      :: !(Maybe Text)
    , _rgaiKey         :: !(Maybe Text)
    , _rgaiOauthToken  :: !(Maybe Text)
    , _rgaiFields      :: !(Maybe Text)
    , _rgaiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyGetAccountInfo'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgaiQuotaUser'
--
-- * 'rgaiPrettyPrint'
--
-- * 'rgaiUserIp'
--
-- * 'rgaiKey'
--
-- * 'rgaiOauthToken'
--
-- * 'rgaiFields'
--
-- * 'rgaiAlt'
relyingpartyGetAccountInfo'
    :: RelyingpartyGetAccountInfo'
relyingpartyGetAccountInfo' =
    RelyingpartyGetAccountInfo'
    { _rgaiQuotaUser = Nothing
    , _rgaiPrettyPrint = True
    , _rgaiUserIp = Nothing
    , _rgaiKey = Nothing
    , _rgaiOauthToken = Nothing
    , _rgaiFields = Nothing
    , _rgaiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgaiQuotaUser :: Lens' RelyingpartyGetAccountInfo' (Maybe Text)
rgaiQuotaUser
  = lens _rgaiQuotaUser
      (\ s a -> s{_rgaiQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgaiPrettyPrint :: Lens' RelyingpartyGetAccountInfo' Bool
rgaiPrettyPrint
  = lens _rgaiPrettyPrint
      (\ s a -> s{_rgaiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgaiUserIp :: Lens' RelyingpartyGetAccountInfo' (Maybe Text)
rgaiUserIp
  = lens _rgaiUserIp (\ s a -> s{_rgaiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgaiKey :: Lens' RelyingpartyGetAccountInfo' (Maybe Text)
rgaiKey = lens _rgaiKey (\ s a -> s{_rgaiKey = a})

-- | OAuth 2.0 token for the current user.
rgaiOauthToken :: Lens' RelyingpartyGetAccountInfo' (Maybe Text)
rgaiOauthToken
  = lens _rgaiOauthToken
      (\ s a -> s{_rgaiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgaiFields :: Lens' RelyingpartyGetAccountInfo' (Maybe Text)
rgaiFields
  = lens _rgaiFields (\ s a -> s{_rgaiFields = a})

-- | Data format for the response.
rgaiAlt :: Lens' RelyingpartyGetAccountInfo' Alt
rgaiAlt = lens _rgaiAlt (\ s a -> s{_rgaiAlt = a})

instance GoogleRequest RelyingpartyGetAccountInfo'
         where
        type Rs RelyingpartyGetAccountInfo' =
             GetAccountInfoResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingpartyGetAccountInfo'{..}
          = go _rgaiQuotaUser (Just _rgaiPrettyPrint)
              _rgaiUserIp
              _rgaiKey
              _rgaiOauthToken
              _rgaiFields
              (Just _rgaiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartyGetAccountInfoAPI)
                      r
                      u
