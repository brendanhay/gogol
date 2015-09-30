{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.IdentityToolkit.Relyingparty.DeleteAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete user account.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingpartyDeleteAccount@.
module IdentityToolkit.Relyingparty.DeleteAccount
    (
    -- * REST Resource
      RelyingpartyDeleteAccountAPI

    -- * Creating a Request
    , relyingpartyDeleteAccount
    , RelyingpartyDeleteAccount

    -- * Request Lenses
    , rdaQuotaUser
    , rdaPrettyPrint
    , rdaUserIp
    , rdaKey
    , rdaOauthToken
    , rdaFields
    , rdaAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingpartyDeleteAccount@ which the
-- 'RelyingpartyDeleteAccount' request conforms to.
type RelyingpartyDeleteAccountAPI =
     "deleteAccount" :> Post '[JSON] DeleteAccountResponse

-- | Delete user account.
--
-- /See:/ 'relyingpartyDeleteAccount' smart constructor.
data RelyingpartyDeleteAccount = RelyingpartyDeleteAccount
    { _rdaQuotaUser   :: !(Maybe Text)
    , _rdaPrettyPrint :: !Bool
    , _rdaUserIp      :: !(Maybe Text)
    , _rdaKey         :: !(Maybe Text)
    , _rdaOauthToken  :: !(Maybe Text)
    , _rdaFields      :: !(Maybe Text)
    , _rdaAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyDeleteAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdaQuotaUser'
--
-- * 'rdaPrettyPrint'
--
-- * 'rdaUserIp'
--
-- * 'rdaKey'
--
-- * 'rdaOauthToken'
--
-- * 'rdaFields'
--
-- * 'rdaAlt'
relyingpartyDeleteAccount
    :: RelyingpartyDeleteAccount
relyingpartyDeleteAccount =
    RelyingpartyDeleteAccount
    { _rdaQuotaUser = Nothing
    , _rdaPrettyPrint = True
    , _rdaUserIp = Nothing
    , _rdaKey = Nothing
    , _rdaOauthToken = Nothing
    , _rdaFields = Nothing
    , _rdaAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rdaQuotaUser :: Lens' RelyingpartyDeleteAccount' (Maybe Text)
rdaQuotaUser
  = lens _rdaQuotaUser (\ s a -> s{_rdaQuotaUser = a})

-- | Returns response with indentations and line breaks.
rdaPrettyPrint :: Lens' RelyingpartyDeleteAccount' Bool
rdaPrettyPrint
  = lens _rdaPrettyPrint
      (\ s a -> s{_rdaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rdaUserIp :: Lens' RelyingpartyDeleteAccount' (Maybe Text)
rdaUserIp
  = lens _rdaUserIp (\ s a -> s{_rdaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdaKey :: Lens' RelyingpartyDeleteAccount' (Maybe Text)
rdaKey = lens _rdaKey (\ s a -> s{_rdaKey = a})

-- | OAuth 2.0 token for the current user.
rdaOauthToken :: Lens' RelyingpartyDeleteAccount' (Maybe Text)
rdaOauthToken
  = lens _rdaOauthToken
      (\ s a -> s{_rdaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rdaFields :: Lens' RelyingpartyDeleteAccount' (Maybe Text)
rdaFields
  = lens _rdaFields (\ s a -> s{_rdaFields = a})

-- | Data format for the response.
rdaAlt :: Lens' RelyingpartyDeleteAccount' Text
rdaAlt = lens _rdaAlt (\ s a -> s{_rdaAlt = a})

instance GoogleRequest RelyingpartyDeleteAccount'
         where
        type Rs RelyingpartyDeleteAccount' =
             DeleteAccountResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingpartyDeleteAccount{..}
          = go _rdaQuotaUser _rdaPrettyPrint _rdaUserIp _rdaKey
              _rdaOauthToken
              _rdaFields
              _rdaAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartyDeleteAccountAPI)
                      r
                      u
