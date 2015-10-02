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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingPartyy.DownloadAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Batch download user accounts.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyyDownloadAccount@.
module Network.Google.Resource.IdentityToolkit.RelyingPartyy.DownloadAccount
    (
    -- * REST Resource
      RelyingPartyyDownloadAccountResource

    -- * Creating a Request
    , relyingPartyyDownloadAccount'
    , RelyingPartyyDownloadAccount'

    -- * Request Lenses
    , rpdaQuotaUser
    , rpdaPrettyPrint
    , rpdaUserIP
    , rpdaIdentitytoolkitRelyingPartyyDownloadAccountRequest
    , rpdaKey
    , rpdaOAuthToken
    , rpdaFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyyDownloadAccount@ which the
-- 'RelyingPartyyDownloadAccount'' request conforms to.
type RelyingPartyyDownloadAccountResource =
     "downloadAccount" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyyDownloadAccountRequest
                       :> Post '[JSON] DownloadAccountResponse

-- | Batch download user accounts.
--
-- /See:/ 'relyingPartyyDownloadAccount'' smart constructor.
data RelyingPartyyDownloadAccount' = RelyingPartyyDownloadAccount'
    { _rpdaQuotaUser                                          :: !(Maybe Text)
    , _rpdaPrettyPrint                                        :: !Bool
    , _rpdaUserIP                                             :: !(Maybe Text)
    , _rpdaIdentitytoolkitRelyingPartyyDownloadAccountRequest :: !IdentitytoolkitRelyingPartyyDownloadAccountRequest
    , _rpdaKey                                                :: !(Maybe Key)
    , _rpdaOAuthToken                                         :: !(Maybe OAuthToken)
    , _rpdaFields                                             :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyyDownloadAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpdaQuotaUser'
--
-- * 'rpdaPrettyPrint'
--
-- * 'rpdaUserIP'
--
-- * 'rpdaIdentitytoolkitRelyingPartyyDownloadAccountRequest'
--
-- * 'rpdaKey'
--
-- * 'rpdaOAuthToken'
--
-- * 'rpdaFields'
relyingPartyyDownloadAccount'
    :: IdentitytoolkitRelyingPartyyDownloadAccountRequest -- ^ 'IdentitytoolkitRelyingPartyyDownloadAccountRequest'
    -> RelyingPartyyDownloadAccount'
relyingPartyyDownloadAccount' pRpdaIdentitytoolkitRelyingPartyyDownloadAccountRequest_ =
    RelyingPartyyDownloadAccount'
    { _rpdaQuotaUser = Nothing
    , _rpdaPrettyPrint = True
    , _rpdaUserIP = Nothing
    , _rpdaIdentitytoolkitRelyingPartyyDownloadAccountRequest = pRpdaIdentitytoolkitRelyingPartyyDownloadAccountRequest_
    , _rpdaKey = Nothing
    , _rpdaOAuthToken = Nothing
    , _rpdaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpdaQuotaUser :: Lens' RelyingPartyyDownloadAccount' (Maybe Text)
rpdaQuotaUser
  = lens _rpdaQuotaUser
      (\ s a -> s{_rpdaQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpdaPrettyPrint :: Lens' RelyingPartyyDownloadAccount' Bool
rpdaPrettyPrint
  = lens _rpdaPrettyPrint
      (\ s a -> s{_rpdaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpdaUserIP :: Lens' RelyingPartyyDownloadAccount' (Maybe Text)
rpdaUserIP
  = lens _rpdaUserIP (\ s a -> s{_rpdaUserIP = a})

-- | Multipart request metadata.
rpdaIdentitytoolkitRelyingPartyyDownloadAccountRequest :: Lens' RelyingPartyyDownloadAccount' IdentitytoolkitRelyingPartyyDownloadAccountRequest
rpdaIdentitytoolkitRelyingPartyyDownloadAccountRequest
  = lens
      _rpdaIdentitytoolkitRelyingPartyyDownloadAccountRequest
      (\ s a ->
         s{_rpdaIdentitytoolkitRelyingPartyyDownloadAccountRequest
             = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpdaKey :: Lens' RelyingPartyyDownloadAccount' (Maybe Key)
rpdaKey = lens _rpdaKey (\ s a -> s{_rpdaKey = a})

-- | OAuth 2.0 token for the current user.
rpdaOAuthToken :: Lens' RelyingPartyyDownloadAccount' (Maybe OAuthToken)
rpdaOAuthToken
  = lens _rpdaOAuthToken
      (\ s a -> s{_rpdaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpdaFields :: Lens' RelyingPartyyDownloadAccount' (Maybe Text)
rpdaFields
  = lens _rpdaFields (\ s a -> s{_rpdaFields = a})

instance GoogleAuth RelyingPartyyDownloadAccount'
         where
        authKey = rpdaKey . _Just
        authToken = rpdaOAuthToken . _Just

instance GoogleRequest RelyingPartyyDownloadAccount'
         where
        type Rs RelyingPartyyDownloadAccount' =
             DownloadAccountResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u
          RelyingPartyyDownloadAccount'{..}
          = go _rpdaQuotaUser (Just _rpdaPrettyPrint)
              _rpdaUserIP
              _rpdaKey
              _rpdaOAuthToken
              _rpdaFields
              (Just AltJSON)
              _rpdaIdentitytoolkitRelyingPartyyDownloadAccountRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingPartyyDownloadAccountResource)
                      r
                      u
