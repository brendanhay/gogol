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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.UploadAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Batch upload existing user accounts.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyUploadAccount@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.UploadAccount
    (
    -- * REST Resource
      RelyingPartyUploadAccountResource

    -- * Creating a Request
    , relyingPartyUploadAccount'
    , RelyingPartyUploadAccount'

    -- * Request Lenses
    , rpuaQuotaUser
    , rpuaPrettyPrint
    , rpuaUserIP
    , rpuaKey
    , rpuaIdentitytoolkitRelyingPartyUploadAccountRequest
    , rpuaOAuthToken
    , rpuaFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyUploadAccount@ which the
-- 'RelyingPartyUploadAccount'' request conforms to.
type RelyingPartyUploadAccountResource =
     "uploadAccount" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyUploadAccountRequest
                       :> Post '[JSON] UploadAccountResponse

-- | Batch upload existing user accounts.
--
-- /See:/ 'relyingPartyUploadAccount'' smart constructor.
data RelyingPartyUploadAccount' = RelyingPartyUploadAccount'
    { _rpuaQuotaUser                                       :: !(Maybe Text)
    , _rpuaPrettyPrint                                     :: !Bool
    , _rpuaUserIP                                          :: !(Maybe Text)
    , _rpuaKey                                             :: !(Maybe Key)
    , _rpuaIdentitytoolkitRelyingPartyUploadAccountRequest :: !IdentitytoolkitRelyingPartyUploadAccountRequest
    , _rpuaOAuthToken                                      :: !(Maybe OAuthToken)
    , _rpuaFields                                          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyUploadAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpuaQuotaUser'
--
-- * 'rpuaPrettyPrint'
--
-- * 'rpuaUserIP'
--
-- * 'rpuaKey'
--
-- * 'rpuaIdentitytoolkitRelyingPartyUploadAccountRequest'
--
-- * 'rpuaOAuthToken'
--
-- * 'rpuaFields'
relyingPartyUploadAccount'
    :: IdentitytoolkitRelyingPartyUploadAccountRequest -- ^ 'IdentitytoolkitRelyingPartyUploadAccountRequest'
    -> RelyingPartyUploadAccount'
relyingPartyUploadAccount' pRpuaIdentitytoolkitRelyingPartyUploadAccountRequest_ =
    RelyingPartyUploadAccount'
    { _rpuaQuotaUser = Nothing
    , _rpuaPrettyPrint = True
    , _rpuaUserIP = Nothing
    , _rpuaKey = Nothing
    , _rpuaIdentitytoolkitRelyingPartyUploadAccountRequest = pRpuaIdentitytoolkitRelyingPartyUploadAccountRequest_
    , _rpuaOAuthToken = Nothing
    , _rpuaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpuaQuotaUser :: Lens' RelyingPartyUploadAccount' (Maybe Text)
rpuaQuotaUser
  = lens _rpuaQuotaUser
      (\ s a -> s{_rpuaQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpuaPrettyPrint :: Lens' RelyingPartyUploadAccount' Bool
rpuaPrettyPrint
  = lens _rpuaPrettyPrint
      (\ s a -> s{_rpuaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpuaUserIP :: Lens' RelyingPartyUploadAccount' (Maybe Text)
rpuaUserIP
  = lens _rpuaUserIP (\ s a -> s{_rpuaUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpuaKey :: Lens' RelyingPartyUploadAccount' (Maybe Key)
rpuaKey = lens _rpuaKey (\ s a -> s{_rpuaKey = a})

-- | Multipart request metadata.
rpuaIdentitytoolkitRelyingPartyUploadAccountRequest :: Lens' RelyingPartyUploadAccount' IdentitytoolkitRelyingPartyUploadAccountRequest
rpuaIdentitytoolkitRelyingPartyUploadAccountRequest
  = lens
      _rpuaIdentitytoolkitRelyingPartyUploadAccountRequest
      (\ s a ->
         s{_rpuaIdentitytoolkitRelyingPartyUploadAccountRequest
             = a})

-- | OAuth 2.0 token for the current user.
rpuaOAuthToken :: Lens' RelyingPartyUploadAccount' (Maybe OAuthToken)
rpuaOAuthToken
  = lens _rpuaOAuthToken
      (\ s a -> s{_rpuaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpuaFields :: Lens' RelyingPartyUploadAccount' (Maybe Text)
rpuaFields
  = lens _rpuaFields (\ s a -> s{_rpuaFields = a})

instance GoogleAuth RelyingPartyUploadAccount' where
        authKey = rpuaKey . _Just
        authToken = rpuaOAuthToken . _Just

instance GoogleRequest RelyingPartyUploadAccount'
         where
        type Rs RelyingPartyUploadAccount' =
             UploadAccountResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingPartyUploadAccount'{..}
          = go _rpuaQuotaUser (Just _rpuaPrettyPrint)
              _rpuaUserIP
              _rpuaKey
              _rpuaOAuthToken
              _rpuaFields
              (Just AltJSON)
              _rpuaIdentitytoolkitRelyingPartyUploadAccountRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyUploadAccountResource)
                      r
                      u
