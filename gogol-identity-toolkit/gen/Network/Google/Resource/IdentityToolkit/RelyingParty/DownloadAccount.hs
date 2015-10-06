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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.DownloadAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Batch download user accounts.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyDownloadAccount@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.DownloadAccount
    (
    -- * REST Resource
      RelyingPartyDownloadAccountResource

    -- * Creating a Request
    , relyingPartyDownloadAccount'
    , RelyingPartyDownloadAccount'

    -- * Request Lenses
    , rpdaQuotaUser
    , rpdaPrettyPrint
    , rpdaUserIP
    , rpdaPayload
    , rpdaKey
    , rpdaOAuthToken
    , rpdaFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyDownloadAccount@ which the
-- 'RelyingPartyDownloadAccount'' request conforms to.
type RelyingPartyDownloadAccountResource =
     "downloadAccount" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       IdentitytoolkitRelyingPartyDownloadAccountRequest
                       :> Post '[JSON] DownloadAccountResponse

-- | Batch download user accounts.
--
-- /See:/ 'relyingPartyDownloadAccount'' smart constructor.
data RelyingPartyDownloadAccount' = RelyingPartyDownloadAccount'
    { _rpdaQuotaUser   :: !(Maybe Text)
    , _rpdaPrettyPrint :: !Bool
    , _rpdaUserIP      :: !(Maybe Text)
    , _rpdaPayload     :: !IdentitytoolkitRelyingPartyDownloadAccountRequest
    , _rpdaKey         :: !(Maybe AuthKey)
    , _rpdaOAuthToken  :: !(Maybe OAuthToken)
    , _rpdaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyDownloadAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpdaQuotaUser'
--
-- * 'rpdaPrettyPrint'
--
-- * 'rpdaUserIP'
--
-- * 'rpdaPayload'
--
-- * 'rpdaKey'
--
-- * 'rpdaOAuthToken'
--
-- * 'rpdaFields'
relyingPartyDownloadAccount'
    :: IdentitytoolkitRelyingPartyDownloadAccountRequest -- ^ 'payload'
    -> RelyingPartyDownloadAccount'
relyingPartyDownloadAccount' pRpdaPayload_ =
    RelyingPartyDownloadAccount'
    { _rpdaQuotaUser = Nothing
    , _rpdaPrettyPrint = True
    , _rpdaUserIP = Nothing
    , _rpdaPayload = pRpdaPayload_
    , _rpdaKey = Nothing
    , _rpdaOAuthToken = Nothing
    , _rpdaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpdaQuotaUser :: Lens' RelyingPartyDownloadAccount' (Maybe Text)
rpdaQuotaUser
  = lens _rpdaQuotaUser
      (\ s a -> s{_rpdaQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpdaPrettyPrint :: Lens' RelyingPartyDownloadAccount' Bool
rpdaPrettyPrint
  = lens _rpdaPrettyPrint
      (\ s a -> s{_rpdaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpdaUserIP :: Lens' RelyingPartyDownloadAccount' (Maybe Text)
rpdaUserIP
  = lens _rpdaUserIP (\ s a -> s{_rpdaUserIP = a})

-- | Multipart request metadata.
rpdaPayload :: Lens' RelyingPartyDownloadAccount' IdentitytoolkitRelyingPartyDownloadAccountRequest
rpdaPayload
  = lens _rpdaPayload (\ s a -> s{_rpdaPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpdaKey :: Lens' RelyingPartyDownloadAccount' (Maybe AuthKey)
rpdaKey = lens _rpdaKey (\ s a -> s{_rpdaKey = a})

-- | OAuth 2.0 token for the current user.
rpdaOAuthToken :: Lens' RelyingPartyDownloadAccount' (Maybe OAuthToken)
rpdaOAuthToken
  = lens _rpdaOAuthToken
      (\ s a -> s{_rpdaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpdaFields :: Lens' RelyingPartyDownloadAccount' (Maybe Text)
rpdaFields
  = lens _rpdaFields (\ s a -> s{_rpdaFields = a})

instance GoogleAuth RelyingPartyDownloadAccount'
         where
        _AuthKey = rpdaKey . _Just
        _AuthToken = rpdaOAuthToken . _Just

instance GoogleRequest RelyingPartyDownloadAccount'
         where
        type Rs RelyingPartyDownloadAccount' =
             DownloadAccountResponse
        request = requestWith identityToolkitRequest
        requestWith rq RelyingPartyDownloadAccount'{..}
          = go _rpdaQuotaUser (Just _rpdaPrettyPrint)
              _rpdaUserIP
              _rpdaFields
              _rpdaKey
              _rpdaOAuthToken
              (Just AltJSON)
              _rpdaPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy RelyingPartyDownloadAccountResource)
                      rq
