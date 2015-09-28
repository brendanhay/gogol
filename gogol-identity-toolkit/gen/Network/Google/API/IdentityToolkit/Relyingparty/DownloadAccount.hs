{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.IdentityToolkit.Relyingparty.DownloadAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Batch download user accounts.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @identitytoolkit.relyingparty.downloadAccount@.
module Network.Google.API.IdentityToolkit.Relyingparty.DownloadAccount
    (
    -- * REST Resource
      RelyingpartyDownloadAccountAPI

    -- * Creating a Request
    , relyingpartyDownloadAccount'
    , RelyingpartyDownloadAccount'

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

-- | A resource alias for identitytoolkit.relyingparty.downloadAccount which the
-- 'RelyingpartyDownloadAccount'' request conforms to.
type RelyingpartyDownloadAccountAPI =
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
    { _relQuotaUser   :: !(Maybe Text)
    , _relPrettyPrint :: !Bool
    , _relUserIp      :: !(Maybe Text)
    , _relKey         :: !(Maybe Text)
    , _relOauthToken  :: !(Maybe Text)
    , _relFields      :: !(Maybe Text)
    , _relAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyDownloadAccount'' with the minimum fields required to make a request.
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
relyingpartyDownloadAccount'
    :: RelyingpartyDownloadAccount'
relyingpartyDownloadAccount' =
    RelyingpartyDownloadAccount'
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
relQuotaUser :: Lens' RelyingpartyDownloadAccount' (Maybe Text)
relQuotaUser
  = lens _relQuotaUser (\ s a -> s{_relQuotaUser = a})

-- | Returns response with indentations and line breaks.
relPrettyPrint :: Lens' RelyingpartyDownloadAccount' Bool
relPrettyPrint
  = lens _relPrettyPrint
      (\ s a -> s{_relPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
relUserIp :: Lens' RelyingpartyDownloadAccount' (Maybe Text)
relUserIp
  = lens _relUserIp (\ s a -> s{_relUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
relKey :: Lens' RelyingpartyDownloadAccount' (Maybe Text)
relKey = lens _relKey (\ s a -> s{_relKey = a})

-- | OAuth 2.0 token for the current user.
relOauthToken :: Lens' RelyingpartyDownloadAccount' (Maybe Text)
relOauthToken
  = lens _relOauthToken
      (\ s a -> s{_relOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
relFields :: Lens' RelyingpartyDownloadAccount' (Maybe Text)
relFields
  = lens _relFields (\ s a -> s{_relFields = a})

-- | Data format for the response.
relAlt :: Lens' RelyingpartyDownloadAccount' Alt
relAlt = lens _relAlt (\ s a -> s{_relAlt = a})

instance GoogleRequest RelyingpartyDownloadAccount'
         where
        type Rs RelyingpartyDownloadAccount' =
             DownloadAccountResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingpartyDownloadAccount'{..}
          = go _relQuotaUser (Just _relPrettyPrint) _relUserIp
              _relKey
              _relOauthToken
              _relFields
              (Just _relAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartyDownloadAccountAPI)
                      r
                      u
