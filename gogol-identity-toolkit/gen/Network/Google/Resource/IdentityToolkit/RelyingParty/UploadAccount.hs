{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
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
    , rpuaPayload
    , rpuaKey
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
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyUploadAccountRequest
                       :> Post '[JSON] UploadAccountResponse

-- | Batch upload existing user accounts.
--
-- /See:/ 'relyingPartyUploadAccount'' smart constructor.
data RelyingPartyUploadAccount' = RelyingPartyUploadAccount'
    { _rpuaQuotaUser   :: !(Maybe Text)
    , _rpuaPrettyPrint :: !Bool
    , _rpuaUserIP      :: !(Maybe Text)
    , _rpuaPayload     :: !IdentitytoolkitRelyingPartyUploadAccountRequest
    , _rpuaKey         :: !(Maybe Key)
    , _rpuaOAuthToken  :: !(Maybe OAuthToken)
    , _rpuaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'rpuaPayload'
--
-- * 'rpuaKey'
--
-- * 'rpuaOAuthToken'
--
-- * 'rpuaFields'
relyingPartyUploadAccount'
    :: IdentitytoolkitRelyingPartyUploadAccountRequest -- ^ 'payload'
    -> RelyingPartyUploadAccount'
relyingPartyUploadAccount' pRpuaPayload_ =
    RelyingPartyUploadAccount'
    { _rpuaQuotaUser = Nothing
    , _rpuaPrettyPrint = True
    , _rpuaUserIP = Nothing
    , _rpuaPayload = pRpuaPayload_
    , _rpuaKey = Nothing
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

-- | Multipart request metadata.
rpuaPayload :: Lens' RelyingPartyUploadAccount' IdentitytoolkitRelyingPartyUploadAccountRequest
rpuaPayload
  = lens _rpuaPayload (\ s a -> s{_rpuaPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpuaKey :: Lens' RelyingPartyUploadAccount' (Maybe Key)
rpuaKey = lens _rpuaKey (\ s a -> s{_rpuaKey = a})

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
              _rpuaFields
              _rpuaKey
              _rpuaOAuthToken
              (Just AltJSON)
              _rpuaPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyUploadAccountResource)
                      r
                      u
