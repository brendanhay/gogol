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
-- Module      : Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetOobConfirmationCode
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a code for user action confirmation.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingPartyyGetOobConfirmationCode@.
module Network.Google.Resource.IdentityToolkit.RelyingPartyy.GetOobConfirmationCode
    (
    -- * REST Resource
      RelyingPartyyGetOobConfirmationCodeResource

    -- * Creating a Request
    , relyingPartyyGetOobConfirmationCode'
    , RelyingPartyyGetOobConfirmationCode'

    -- * Request Lenses
    , rpgoccQuotaUser
    , rpgoccPrettyPrint
    , rpgoccRelyingPartyy
    , rpgoccUserIP
    , rpgoccKey
    , rpgoccOAuthToken
    , rpgoccFields
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingPartyyGetOobConfirmationCode@ which the
-- 'RelyingPartyyGetOobConfirmationCode'' request conforms to.
type RelyingPartyyGetOobConfirmationCodeResource =
     "getOobConfirmationCode" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] RelyingPartyy :>
                       Post '[JSON] GetOobConfirmationCodeResponse

-- | Get a code for user action confirmation.
--
-- /See:/ 'relyingPartyyGetOobConfirmationCode'' smart constructor.
data RelyingPartyyGetOobConfirmationCode' = RelyingPartyyGetOobConfirmationCode'
    { _rpgoccQuotaUser     :: !(Maybe Text)
    , _rpgoccPrettyPrint   :: !Bool
    , _rpgoccRelyingPartyy :: !RelyingPartyy
    , _rpgoccUserIP        :: !(Maybe Text)
    , _rpgoccKey           :: !(Maybe Key)
    , _rpgoccOAuthToken    :: !(Maybe OAuthToken)
    , _rpgoccFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingPartyyGetOobConfirmationCode'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpgoccQuotaUser'
--
-- * 'rpgoccPrettyPrint'
--
-- * 'rpgoccRelyingPartyy'
--
-- * 'rpgoccUserIP'
--
-- * 'rpgoccKey'
--
-- * 'rpgoccOAuthToken'
--
-- * 'rpgoccFields'
relyingPartyyGetOobConfirmationCode'
    :: RelyingPartyy -- ^ 'RelyingPartyy'
    -> RelyingPartyyGetOobConfirmationCode'
relyingPartyyGetOobConfirmationCode' pRpgoccRelyingPartyy_ =
    RelyingPartyyGetOobConfirmationCode'
    { _rpgoccQuotaUser = Nothing
    , _rpgoccPrettyPrint = True
    , _rpgoccRelyingPartyy = pRpgoccRelyingPartyy_
    , _rpgoccUserIP = Nothing
    , _rpgoccKey = Nothing
    , _rpgoccOAuthToken = Nothing
    , _rpgoccFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rpgoccQuotaUser :: Lens' RelyingPartyyGetOobConfirmationCode' (Maybe Text)
rpgoccQuotaUser
  = lens _rpgoccQuotaUser
      (\ s a -> s{_rpgoccQuotaUser = a})

-- | Returns response with indentations and line breaks.
rpgoccPrettyPrint :: Lens' RelyingPartyyGetOobConfirmationCode' Bool
rpgoccPrettyPrint
  = lens _rpgoccPrettyPrint
      (\ s a -> s{_rpgoccPrettyPrint = a})

-- | Multipart request metadata.
rpgoccRelyingPartyy :: Lens' RelyingPartyyGetOobConfirmationCode' RelyingPartyy
rpgoccRelyingPartyy
  = lens _rpgoccRelyingPartyy
      (\ s a -> s{_rpgoccRelyingPartyy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rpgoccUserIP :: Lens' RelyingPartyyGetOobConfirmationCode' (Maybe Text)
rpgoccUserIP
  = lens _rpgoccUserIP (\ s a -> s{_rpgoccUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rpgoccKey :: Lens' RelyingPartyyGetOobConfirmationCode' (Maybe Key)
rpgoccKey
  = lens _rpgoccKey (\ s a -> s{_rpgoccKey = a})

-- | OAuth 2.0 token for the current user.
rpgoccOAuthToken :: Lens' RelyingPartyyGetOobConfirmationCode' (Maybe OAuthToken)
rpgoccOAuthToken
  = lens _rpgoccOAuthToken
      (\ s a -> s{_rpgoccOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rpgoccFields :: Lens' RelyingPartyyGetOobConfirmationCode' (Maybe Text)
rpgoccFields
  = lens _rpgoccFields (\ s a -> s{_rpgoccFields = a})

instance GoogleAuth
         RelyingPartyyGetOobConfirmationCode' where
        authKey = rpgoccKey . _Just
        authToken = rpgoccOAuthToken . _Just

instance GoogleRequest
         RelyingPartyyGetOobConfirmationCode' where
        type Rs RelyingPartyyGetOobConfirmationCode' =
             GetOobConfirmationCodeResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u
          RelyingPartyyGetOobConfirmationCode'{..}
          = go _rpgoccQuotaUser (Just _rpgoccPrettyPrint)
              _rpgoccUserIP
              _rpgoccKey
              _rpgoccOAuthToken
              _rpgoccFields
              (Just AltJSON)
              _rpgoccRelyingPartyy
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RelyingPartyyGetOobConfirmationCodeResource)
                      r
                      u
