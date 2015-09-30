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
module Network.Google.Resource.IdentityToolkit.Relyingparty.DeleteAccount
    (
    -- * REST Resource
      RelyingpartyDeleteAccountResource

    -- * Creating a Request
    , relyingpartyDeleteAccount'
    , RelyingpartyDeleteAccount'

    -- * Request Lenses
    , relQuotaUser
    , relPrettyPrint
    , relUserIp
    , relKey
    , relOauthToken
    , relFields
    , relAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingpartyDeleteAccount@ which the
-- 'RelyingpartyDeleteAccount'' request conforms to.
type RelyingpartyDeleteAccountResource =
     "deleteAccount" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Post '[JSON] DeleteAccountResponse

-- | Delete user account.
--
-- /See:/ 'relyingpartyDeleteAccount'' smart constructor.
data RelyingpartyDeleteAccount' = RelyingpartyDeleteAccount'
    { _relQuotaUser   :: !(Maybe Text)
    , _relPrettyPrint :: !Bool
    , _relUserIp      :: !(Maybe Text)
    , _relKey         :: !(Maybe Text)
    , _relOauthToken  :: !(Maybe Text)
    , _relFields      :: !(Maybe Text)
    , _relAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyDeleteAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'relQuotaUser'
--
-- * 'relPrettyPrint'
--
-- * 'relUserIp'
--
-- * 'relKey'
--
-- * 'relOauthToken'
--
-- * 'relFields'
--
-- * 'relAlt'
relyingpartyDeleteAccount'
    :: RelyingpartyDeleteAccount'
relyingpartyDeleteAccount' =
    RelyingpartyDeleteAccount'
    { _relQuotaUser = Nothing
    , _relPrettyPrint = True
    , _relUserIp = Nothing
    , _relKey = Nothing
    , _relOauthToken = Nothing
    , _relFields = Nothing
    , _relAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
relQuotaUser :: Lens' RelyingpartyDeleteAccount' (Maybe Text)
relQuotaUser
  = lens _relQuotaUser (\ s a -> s{_relQuotaUser = a})

-- | Returns response with indentations and line breaks.
relPrettyPrint :: Lens' RelyingpartyDeleteAccount' Bool
relPrettyPrint
  = lens _relPrettyPrint
      (\ s a -> s{_relPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
relUserIp :: Lens' RelyingpartyDeleteAccount' (Maybe Text)
relUserIp
  = lens _relUserIp (\ s a -> s{_relUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
relKey :: Lens' RelyingpartyDeleteAccount' (Maybe Text)
relKey = lens _relKey (\ s a -> s{_relKey = a})

-- | OAuth 2.0 token for the current user.
relOauthToken :: Lens' RelyingpartyDeleteAccount' (Maybe Text)
relOauthToken
  = lens _relOauthToken
      (\ s a -> s{_relOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
relFields :: Lens' RelyingpartyDeleteAccount' (Maybe Text)
relFields
  = lens _relFields (\ s a -> s{_relFields = a})

-- | Data format for the response.
relAlt :: Lens' RelyingpartyDeleteAccount' Alt
relAlt = lens _relAlt (\ s a -> s{_relAlt = a})

instance GoogleRequest RelyingpartyDeleteAccount'
         where
        type Rs RelyingpartyDeleteAccount' =
             DeleteAccountResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingpartyDeleteAccount'{..}
          = go _relQuotaUser (Just _relPrettyPrint) _relUserIp
              _relKey
              _relOauthToken
              _relFields
              (Just _relAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartyDeleteAccountResource)
                      r
                      u
