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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingParty.GetOOBConfirmationCode
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a code for user action confirmation.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyGetOOBConfirmationCode@.
module Network.Google.Resource.IdentityToolkit.RelyingParty.GetOOBConfirmationCode
    (
    -- * REST Resource
      RelyingPartyGetOOBConfirmationCodeResource

    -- * Creating a Request
    , relyingPartyGetOOBConfirmationCode'
    , RelyingPartyGetOOBConfirmationCode'

    -- * Request Lenses
    , rpgoobccQuotaUser
    , rpgoobccPrettyPrint
    , rpgoobccUserIP
    , rpgoobccRelyingParty
    , rpgoobccKey
    , rpgoobccOAuthToken
    , rpgoobccFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyGetOOBConfirmationCode@ which the
-- 'RelyingPartyGetOOBConfirmationCode'' request conforms to.
type RelyingPartyGetOOBConfirmationCodeResource =
     "getOobConfirmationCode" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RelyingParty :>
                       Post '[JSON] GetOOBConfirmationCodeResponse

-- | Get a code for user action confirmation.
--
-- /See:/ 'relyingPartyGetOOBConfirmationCode'' smart constructor.
data RelyingPartyGetOOBConfirmationCode' = RelyingPartyGetOOBConfirmationCode'
    { _rpgoobccQuotaUser    :: !(Maybe Text)
    , _rpgoobccPrettyPrint  :: !Bool
    , _rpgoobccUserIP       :: !(Maybe Text)
    , _rpgoobccRelyingParty :: !RelyingParty
    , _rpgoobccKey          :: !(Maybe Key)
    , _rpgoobccOAuthToken   :: !(Maybe OAuthToken)
    , _rpgoobccFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyGetOOBConfirmationCode'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpgoobccQuotaUser'
--
-- * 'rpgoobccPrettyPrint'
--
-- * 'rpgoobccUserIP'
--
-- * 'rpgoobccRelyingParty'
--
-- * 'rpgoobccKey'
--
-- * 'rpgoobccOAuthToken'
--
-- * 'rpgoobccFields'
relyingPartyGetOOBConfirmationCode'
    :: RelyingParty -- ^ 'RelyingParty'
    -> RelyingPartyGetOOBConfirmationCode'
relyingPartyGetOOBConfirmationCode' pRpgoobccRelyingParty_ =
    RelyingPartyGetOOBConfirmationCode'
    { _rpgoobccQuotaUser = Nothing
    , _rpgoobccPrettyPrint = True
    , _rpgoobccUserIP = Nothing
    , _rpgoobccRelyingParty = pRpgoobccRelyingParty_
    , _rpgoobccKey = Nothing
    , _rpgoobccOAuthToken = Nothing
    , _rpgoobccFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpgoobccQuotaUser :: Lens' RelyingPartyGetOOBConfirmationCode' (Maybe Text)
rpgoobccQuotaUser
  = lens _rpgoobccQuotaUser
      (\ s a -> s{_rpgoobccQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpgoobccPrettyPrint :: Lens' RelyingPartyGetOOBConfirmationCode' Bool
rpgoobccPrettyPrint
  = lens _rpgoobccPrettyPrint
      (\ s a -> s{_rpgoobccPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpgoobccUserIP :: Lens' RelyingPartyGetOOBConfirmationCode' (Maybe Text)
rpgoobccUserIP
  = lens _rpgoobccUserIP
      (\ s a -> s{_rpgoobccUserIP = a})

-- | Multipart request metadata.
rpgoobccRelyingParty :: Lens' RelyingPartyGetOOBConfirmationCode' RelyingParty
rpgoobccRelyingParty
  = lens _rpgoobccRelyingParty
      (\ s a -> s{_rpgoobccRelyingParty = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpgoobccKey :: Lens' RelyingPartyGetOOBConfirmationCode' (Maybe Key)
rpgoobccKey
  = lens _rpgoobccKey (\ s a -> s{_rpgoobccKey = a})

-- | OAuth 2.0 token for the current user.
rpgoobccOAuthToken :: Lens' RelyingPartyGetOOBConfirmationCode' (Maybe OAuthToken)
rpgoobccOAuthToken
  = lens _rpgoobccOAuthToken
      (\ s a -> s{_rpgoobccOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpgoobccFields :: Lens' RelyingPartyGetOOBConfirmationCode' (Maybe Text)
rpgoobccFields
  = lens _rpgoobccFields
      (\ s a -> s{_rpgoobccFields = a})

instance GoogleAuth
         RelyingPartyGetOOBConfirmationCode' where
        authKey = rpgoobccKey . _Just
        authToken = rpgoobccOAuthToken . _Just

instance GoogleRequest
         RelyingPartyGetOOBConfirmationCode' where
        type Rs RelyingPartyGetOOBConfirmationCode' =
             GetOOBConfirmationCodeResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u
          RelyingPartyGetOOBConfirmationCode'{..}
          = go _rpgoobccQuotaUser (Just _rpgoobccPrettyPrint)
              _rpgoobccUserIP
              _rpgoobccKey
              _rpgoobccOAuthToken
              _rpgoobccFields
              (Just AltJSON)
              _rpgoobccRelyingParty
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RelyingPartyGetOOBConfirmationCodeResource)
                      r
                      u
