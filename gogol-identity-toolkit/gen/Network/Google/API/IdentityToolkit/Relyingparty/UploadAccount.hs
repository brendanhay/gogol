{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.IdentityToolkit.Relyingparty.UploadAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Batch upload existing user accounts.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.uploadAccount@.
module Network.Google.API.IdentityToolkit.Relyingparty.UploadAccount
    (
    -- * REST Resource
      RelyingpartyUploadAccountAPI

    -- * Creating a Request
    , relyingpartyUploadAccount'
    , RelyingpartyUploadAccount'

    -- * Request Lenses
    , ruaQuotaUser
    , ruaPrettyPrint
    , ruaUserIp
    , ruaKey
    , ruaOauthToken
    , ruaFields
    , ruaAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for identitytoolkit.relyingparty.uploadAccount which the
-- 'RelyingpartyUploadAccount'' request conforms to.
type RelyingpartyUploadAccountAPI =
     "uploadAccount" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Post '[JSON] UploadAccountResponse

-- | Batch upload existing user accounts.
--
-- /See:/ 'relyingpartyUploadAccount'' smart constructor.
data RelyingpartyUploadAccount' = RelyingpartyUploadAccount'
    { _ruaQuotaUser   :: !(Maybe Text)
    , _ruaPrettyPrint :: !Bool
    , _ruaUserIp      :: !(Maybe Text)
    , _ruaKey         :: !(Maybe Text)
    , _ruaOauthToken  :: !(Maybe Text)
    , _ruaFields      :: !(Maybe Text)
    , _ruaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyUploadAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ruaQuotaUser'
--
-- * 'ruaPrettyPrint'
--
-- * 'ruaUserIp'
--
-- * 'ruaKey'
--
-- * 'ruaOauthToken'
--
-- * 'ruaFields'
--
-- * 'ruaAlt'
relyingpartyUploadAccount'
    :: RelyingpartyUploadAccount'
relyingpartyUploadAccount' =
    RelyingpartyUploadAccount'
    { _ruaQuotaUser = Nothing
    , _ruaPrettyPrint = True
    , _ruaUserIp = Nothing
    , _ruaKey = Nothing
    , _ruaOauthToken = Nothing
    , _ruaFields = Nothing
    , _ruaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ruaQuotaUser :: Lens' RelyingpartyUploadAccount' (Maybe Text)
ruaQuotaUser
  = lens _ruaQuotaUser (\ s a -> s{_ruaQuotaUser = a})

-- | Returns response with indentations and line breaks.
ruaPrettyPrint :: Lens' RelyingpartyUploadAccount' Bool
ruaPrettyPrint
  = lens _ruaPrettyPrint
      (\ s a -> s{_ruaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ruaUserIp :: Lens' RelyingpartyUploadAccount' (Maybe Text)
ruaUserIp
  = lens _ruaUserIp (\ s a -> s{_ruaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ruaKey :: Lens' RelyingpartyUploadAccount' (Maybe Text)
ruaKey = lens _ruaKey (\ s a -> s{_ruaKey = a})

-- | OAuth 2.0 token for the current user.
ruaOauthToken :: Lens' RelyingpartyUploadAccount' (Maybe Text)
ruaOauthToken
  = lens _ruaOauthToken
      (\ s a -> s{_ruaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ruaFields :: Lens' RelyingpartyUploadAccount' (Maybe Text)
ruaFields
  = lens _ruaFields (\ s a -> s{_ruaFields = a})

-- | Data format for the response.
ruaAlt :: Lens' RelyingpartyUploadAccount' Alt
ruaAlt = lens _ruaAlt (\ s a -> s{_ruaAlt = a})

instance GoogleRequest RelyingpartyUploadAccount'
         where
        type Rs RelyingpartyUploadAccount' =
             UploadAccountResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingpartyUploadAccount'{..}
          = go _ruaQuotaUser (Just _ruaPrettyPrint) _ruaUserIp
              _ruaKey
              _ruaOauthToken
              _ruaFields
              (Just _ruaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartyUploadAccountAPI)
                      r
                      u
