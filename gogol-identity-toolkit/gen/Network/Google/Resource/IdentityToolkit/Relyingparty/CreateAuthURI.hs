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
-- Module      : Network.Google.Resource.IdentityToolkit.Relyingparty.CreateAuthURI
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates the URI used by the IdP to authenticate the user.
--
-- /See:/ <https://developers.google.com/identity-toolkit/v3/ Google Identity Toolkit API Reference> for @IdentitytoolkitRelyingpartyCreateAuthURI@.
module Network.Google.Resource.IdentityToolkit.Relyingparty.CreateAuthURI
    (
    -- * REST Resource
      RelyingpartyCreateAuthURIResource

    -- * Creating a Request
    , relyingpartyCreateAuthURI'
    , RelyingpartyCreateAuthURI'

    -- * Request Lenses
    , rcauQuotaUser
    , rcauPrettyPrint
    , rcauUserIp
    , rcauKey
    , rcauOauthToken
    , rcauFields
    , rcauAlt
    ) where

import           Network.Google.IdentityToolkit.Types
import           Network.Google.Prelude

-- | A resource alias for @IdentitytoolkitRelyingpartyCreateAuthURI@ which the
-- 'RelyingpartyCreateAuthURI'' request conforms to.
type RelyingpartyCreateAuthURIResource =
     "createAuthUri" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :>
                     Post '[JSON] CreateAuthURIResponse

-- | Creates the URI used by the IdP to authenticate the user.
--
-- /See:/ 'relyingpartyCreateAuthURI'' smart constructor.
data RelyingpartyCreateAuthURI' = RelyingpartyCreateAuthURI'
    { _rcauQuotaUser   :: !(Maybe Text)
    , _rcauPrettyPrint :: !Bool
    , _rcauUserIp      :: !(Maybe Text)
    , _rcauKey         :: !(Maybe Text)
    , _rcauOauthToken  :: !(Maybe Text)
    , _rcauFields      :: !(Maybe Text)
    , _rcauAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RelyingpartyCreateAuthURI'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcauQuotaUser'
--
-- * 'rcauPrettyPrint'
--
-- * 'rcauUserIp'
--
-- * 'rcauKey'
--
-- * 'rcauOauthToken'
--
-- * 'rcauFields'
--
-- * 'rcauAlt'
relyingpartyCreateAuthURI'
    :: RelyingpartyCreateAuthURI'
relyingpartyCreateAuthURI' =
    RelyingpartyCreateAuthURI'
    { _rcauQuotaUser = Nothing
    , _rcauPrettyPrint = True
    , _rcauUserIp = Nothing
    , _rcauKey = Nothing
    , _rcauOauthToken = Nothing
    , _rcauFields = Nothing
    , _rcauAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rcauQuotaUser :: Lens' RelyingpartyCreateAuthURI' (Maybe Text)
rcauQuotaUser
  = lens _rcauQuotaUser
      (\ s a -> s{_rcauQuotaUser = a})

-- | Returns response with indentations and line breaks.
rcauPrettyPrint :: Lens' RelyingpartyCreateAuthURI' Bool
rcauPrettyPrint
  = lens _rcauPrettyPrint
      (\ s a -> s{_rcauPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rcauUserIp :: Lens' RelyingpartyCreateAuthURI' (Maybe Text)
rcauUserIp
  = lens _rcauUserIp (\ s a -> s{_rcauUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rcauKey :: Lens' RelyingpartyCreateAuthURI' (Maybe Text)
rcauKey = lens _rcauKey (\ s a -> s{_rcauKey = a})

-- | OAuth 2.0 token for the current user.
rcauOauthToken :: Lens' RelyingpartyCreateAuthURI' (Maybe Text)
rcauOauthToken
  = lens _rcauOauthToken
      (\ s a -> s{_rcauOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rcauFields :: Lens' RelyingpartyCreateAuthURI' (Maybe Text)
rcauFields
  = lens _rcauFields (\ s a -> s{_rcauFields = a})

-- | Data format for the response.
rcauAlt :: Lens' RelyingpartyCreateAuthURI' Alt
rcauAlt = lens _rcauAlt (\ s a -> s{_rcauAlt = a})

instance GoogleRequest RelyingpartyCreateAuthURI'
         where
        type Rs RelyingpartyCreateAuthURI' =
             CreateAuthURIResponse
        request = requestWithRoute defReq identityToolkitURL
        requestWithRoute r u RelyingpartyCreateAuthURI'{..}
          = go _rcauQuotaUser (Just _rcauPrettyPrint)
              _rcauUserIp
              _rcauKey
              _rcauOauthToken
              _rcauFields
              (Just _rcauAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RelyingpartyCreateAuthURIResource)
                      r
                      u
