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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.DeleteAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete user account.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyDeleteAccount@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.DeleteAccount
    (
    -- * REST Resource
      RelyingPartyDeleteAccountResource

    -- * Creating a Request
    , relyingPartyDeleteAccount'
    , RelyingPartyDeleteAccount'

    -- * Request Lenses
    , rQuotaUser
    , rPrettyPrint
    , rUserIP
    , rPayload
    , rKey
    , rOAuthToken
    , rFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyDeleteAccount@ which the
-- 'RelyingPartyDeleteAccount'' request conforms to.
type RelyingPartyDeleteAccountResource =
     "deleteAccount" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyDeleteAccountRequest
                       :> Post '[JSON] DeleteAccountResponse

-- | Delete user account.
--
-- /See:/ 'relyingPartyDeleteAccount'' smart constructor.
data RelyingPartyDeleteAccount' = RelyingPartyDeleteAccount'
    { _rQuotaUser   :: !(Maybe Text)
    , _rPrettyPrint :: !Bool
    , _rUserIP      :: !(Maybe Text)
    , _rPayload     :: !IdentitytoolkitRelyingPartyDeleteAccountRequest
    , _rKey         :: !(Maybe AuthKey)
    , _rOAuthToken  :: !(Maybe OAuthToken)
    , _rFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyDeleteAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rQuotaUser'
--
-- * 'rPrettyPrint'
--
-- * 'rUserIP'
--
-- * 'rPayload'
--
-- * 'rKey'
--
-- * 'rOAuthToken'
--
-- * 'rFields'
relyingPartyDeleteAccount'
    :: IdentitytoolkitRelyingPartyDeleteAccountRequest -- ^ 'payload'
    -> RelyingPartyDeleteAccount'
relyingPartyDeleteAccount' pRPayload_ =
    RelyingPartyDeleteAccount'
    { _rQuotaUser = Nothing
    , _rPrettyPrint = True
    , _rUserIP = Nothing
    , _rPayload = pRPayload_
    , _rKey = Nothing
    , _rOAuthToken = Nothing
    , _rFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rQuotaUser :: Lens' RelyingPartyDeleteAccount' (Maybe Text)
rQuotaUser
  = lens _rQuotaUser (\ s a -> s{_rQuotaUser = a})

-- | Returns response with indentations and line breaks.
rPrettyPrint :: Lens' RelyingPartyDeleteAccount' Bool
rPrettyPrint
  = lens _rPrettyPrint (\ s a -> s{_rPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rUserIP :: Lens' RelyingPartyDeleteAccount' (Maybe Text)
rUserIP = lens _rUserIP (\ s a -> s{_rUserIP = a})

-- | Multipart request metadata.
rPayload :: Lens' RelyingPartyDeleteAccount' IdentitytoolkitRelyingPartyDeleteAccountRequest
rPayload = lens _rPayload (\ s a -> s{_rPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rKey :: Lens' RelyingPartyDeleteAccount' (Maybe AuthKey)
rKey = lens _rKey (\ s a -> s{_rKey = a})

-- | OAuth 2.0 token for the current user.
rOAuthToken :: Lens' RelyingPartyDeleteAccount' (Maybe OAuthToken)
rOAuthToken
  = lens _rOAuthToken (\ s a -> s{_rOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rFields :: Lens' RelyingPartyDeleteAccount' (Maybe Text)
rFields = lens _rFields (\ s a -> s{_rFields = a})

instance GoogleAuth RelyingPartyDeleteAccount' where
        authKey = rKey . _Just
        authToken = rOAuthToken . _Just

instance GoogleRequest RelyingPartyDeleteAccount'
         where
        type Rs RelyingPartyDeleteAccount' =
             DeleteAccountResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartyDeleteAccount'{..}
          = go _rQuotaUser (Just _rPrettyPrint) _rUserIP
              _rFields
              _rKey
              _rOAuthToken
              (Just AltJSON)
              _rPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyDeleteAccountResource)
                      r
                      u
