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
-- Module      : Network.Google.Resource.IdentityToolkit.Relyingparty.DownloadAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Batch download user accounts.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingpartyDownloadAccount@.
module Network.Google.Resource.IdentityToolkit.Relyingparty.DownloadAccount
    (
    -- * REST Resource
      RelyingpartyDownloadAccountResource

    -- * Creating a Request
    , relyingpartyDownloadAccount'
    , RelyingpartyDownloadAccount'

    -- * Request Lenses
    , rdaQuotaUser
    , rdaPrettyPrint
    , rdaUserIp
    , rdaKey
    , rdaOauthToken
    , rdaFields
    , rdaAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingpartyDownloadAccount@ which the
-- 'RelyingpartyDownloadAccount'' request conforms to.
type RelyingpartyDownloadAccountResource =
     "downloadAccount" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Post '[JSON] DownloadAccountResponse

-- | Batch download user accounts.
--
-- /See:/ 'relyingpartyDownloadAccount'' smart constructor.
data RelyingpartyDownloadAccount' = RelyingpartyDownloadAccount'
    { _rdaQuotaUser   :: !(Maybe Text)
    , _rdaPrettyPrint :: !Bool
    , _rdaUserIp      :: !(Maybe Text)
    , _rdaKey         :: !(Maybe Text)
    , _rdaOauthToken  :: !(Maybe Text)
    , _rdaFields      :: !(Maybe Text)
    , _rdaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyDownloadAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdaQuotaUser'
--
-- * 'rdaPrettyPrint'
--
-- * 'rdaUserIp'
--
-- * 'rdaKey'
--
-- * 'rdaOauthToken'
--
-- * 'rdaFields'
--
-- * 'rdaAlt'
relyingpartyDownloadAccount'
    :: RelyingpartyDownloadAccount'
relyingpartyDownloadAccount' =
    RelyingpartyDownloadAccount'
    { _rdaQuotaUser = Nothing
    , _rdaPrettyPrint = True
    , _rdaUserIp = Nothing
    , _rdaKey = Nothing
    , _rdaOauthToken = Nothing
    , _rdaFields = Nothing
    , _rdaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rdaQuotaUser :: Lens' RelyingpartyDownloadAccount' (Maybe Text)
rdaQuotaUser
  = lens _rdaQuotaUser (\ s a -> s{_rdaQuotaUser = a})

-- | Returns response with indentations and line breaks.
rdaPrettyPrint :: Lens' RelyingpartyDownloadAccount' Bool
rdaPrettyPrint
  = lens _rdaPrettyPrint
      (\ s a -> s{_rdaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rdaUserIp :: Lens' RelyingpartyDownloadAccount' (Maybe Text)
rdaUserIp
  = lens _rdaUserIp (\ s a -> s{_rdaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rdaKey :: Lens' RelyingpartyDownloadAccount' (Maybe Text)
rdaKey = lens _rdaKey (\ s a -> s{_rdaKey = a})

-- | OAuth 2.0 token for the current user.
rdaOauthToken :: Lens' RelyingpartyDownloadAccount' (Maybe Text)
rdaOauthToken
  = lens _rdaOauthToken
      (\ s a -> s{_rdaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rdaFields :: Lens' RelyingpartyDownloadAccount' (Maybe Text)
rdaFields
  = lens _rdaFields (\ s a -> s{_rdaFields = a})

-- | Data format for the response.
rdaAlt :: Lens' RelyingpartyDownloadAccount' Alt
rdaAlt = lens _rdaAlt (\ s a -> s{_rdaAlt = a})

instance GoogleRequest RelyingpartyDownloadAccount'
         where
        type Rs RelyingpartyDownloadAccount' =
             DownloadAccountResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingpartyDownloadAccount'{..}
          = go _rdaQuotaUser (Just _rdaPrettyPrint) _rdaUserIp
              _rdaKey
              _rdaOauthToken
              _rdaFields
              (Just _rdaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartyDownloadAccountResource)
                      r
                      u
