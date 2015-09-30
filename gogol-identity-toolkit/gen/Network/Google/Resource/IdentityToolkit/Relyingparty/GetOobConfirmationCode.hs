{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.IdentityToolkit.Relyingparty.GetOobConfirmationCode
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a code for user action confirmation.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingpartyGetOobConfirmationCode@.
module IdentityToolkit.Relyingparty.GetOobConfirmationCode
    (
    -- * REST Resource
      RelyingpartyGetOobConfirmationCodeAPI

    -- * Creating a Request
    , relyingpartyGetOobConfirmationCode
    , RelyingpartyGetOobConfirmationCode

    -- * Request Lenses
    , rgoccQuotaUser
    , rgoccPrettyPrint
    , rgoccUserIp
    , rgoccKey
    , rgoccOauthToken
    , rgoccFields
    , rgoccAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingpartyGetOobConfirmationCode@ which the
-- 'RelyingpartyGetOobConfirmationCode' request conforms to.
type RelyingpartyGetOobConfirmationCodeAPI =
     "getOobConfirmationCode" :>
       Post '[JSON] GetOobConfirmationCodeResponse

-- | Get a code for user action confirmation.
--
-- /See:/ 'relyingpartyGetOobConfirmationCode' smart constructor.
data RelyingpartyGetOobConfirmationCode = RelyingpartyGetOobConfirmationCode
    { _rgoccQuotaUser   :: !(Maybe Text)
    , _rgoccPrettyPrint :: !Bool
    , _rgoccUserIp      :: !(Maybe Text)
    , _rgoccKey         :: !(Maybe Text)
    , _rgoccOauthToken  :: !(Maybe Text)
    , _rgoccFields      :: !(Maybe Text)
    , _rgoccAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyGetOobConfirmationCode'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgoccQuotaUser'
--
-- * 'rgoccPrettyPrint'
--
-- * 'rgoccUserIp'
--
-- * 'rgoccKey'
--
-- * 'rgoccOauthToken'
--
-- * 'rgoccFields'
--
-- * 'rgoccAlt'
relyingpartyGetOobConfirmationCode
    :: RelyingpartyGetOobConfirmationCode
relyingpartyGetOobConfirmationCode =
    RelyingpartyGetOobConfirmationCode
    { _rgoccQuotaUser = Nothing
    , _rgoccPrettyPrint = True
    , _rgoccUserIp = Nothing
    , _rgoccKey = Nothing
    , _rgoccOauthToken = Nothing
    , _rgoccFields = Nothing
    , _rgoccAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgoccQuotaUser :: Lens' RelyingpartyGetOobConfirmationCode' (Maybe Text)
rgoccQuotaUser
  = lens _rgoccQuotaUser
      (\ s a -> s{_rgoccQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgoccPrettyPrint :: Lens' RelyingpartyGetOobConfirmationCode' Bool
rgoccPrettyPrint
  = lens _rgoccPrettyPrint
      (\ s a -> s{_rgoccPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgoccUserIp :: Lens' RelyingpartyGetOobConfirmationCode' (Maybe Text)
rgoccUserIp
  = lens _rgoccUserIp (\ s a -> s{_rgoccUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgoccKey :: Lens' RelyingpartyGetOobConfirmationCode' (Maybe Text)
rgoccKey = lens _rgoccKey (\ s a -> s{_rgoccKey = a})

-- | OAuth 2.0 token for the current user.
rgoccOauthToken :: Lens' RelyingpartyGetOobConfirmationCode' (Maybe Text)
rgoccOauthToken
  = lens _rgoccOauthToken
      (\ s a -> s{_rgoccOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rgoccFields :: Lens' RelyingpartyGetOobConfirmationCode' (Maybe Text)
rgoccFields
  = lens _rgoccFields (\ s a -> s{_rgoccFields = a})

-- | Data format for the response.
rgoccAlt :: Lens' RelyingpartyGetOobConfirmationCode' Text
rgoccAlt = lens _rgoccAlt (\ s a -> s{_rgoccAlt = a})

instance GoogleRequest
         RelyingpartyGetOobConfirmationCode' where
        type Rs RelyingpartyGetOobConfirmationCode' =
             GetOobConfirmationCodeResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u
          RelyingpartyGetOobConfirmationCode{..}
          = go _rgoccQuotaUser _rgoccPrettyPrint _rgoccUserIp
              _rgoccKey
              _rgoccOauthToken
              _rgoccFields
              _rgoccAlt
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy RelyingpartyGetOobConfirmationCodeAPI)
                      r
                      u
