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
-- Module      : Network.Google.Resource.Directory.VerificationCodes.Invalidate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Invalidate the current backup verification codes for the user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryVerificationCodesInvalidate@.
module Network.Google.Resource.Directory.VerificationCodes.Invalidate
    (
    -- * REST Resource
      VerificationCodesInvalidateResource

    -- * Creating a Request
    , verificationCodesInvalidate'
    , VerificationCodesInvalidate'

    -- * Request Lenses
    , vciQuotaUser
    , vciPrettyPrint
    , vciUserIP
    , vciKey
    , vciOAuthToken
    , vciUserKey
    , vciFields
    ) where

import           Network.Google.AdminDirectory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryVerificationCodesInvalidate@ which the
-- 'VerificationCodesInvalidate'' request conforms to.
type VerificationCodesInvalidateResource =
     "users" :>
       Capture "userKey" Text :>
         "verificationCodes" :>
           "invalidate" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Invalidate the current backup verification codes for the user.
--
-- /See:/ 'verificationCodesInvalidate'' smart constructor.
data VerificationCodesInvalidate' = VerificationCodesInvalidate'
    { _vciQuotaUser   :: !(Maybe Text)
    , _vciPrettyPrint :: !Bool
    , _vciUserIP      :: !(Maybe Text)
    , _vciKey         :: !(Maybe Key)
    , _vciOAuthToken  :: !(Maybe OAuthToken)
    , _vciUserKey     :: !Text
    , _vciFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerificationCodesInvalidate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vciQuotaUser'
--
-- * 'vciPrettyPrint'
--
-- * 'vciUserIP'
--
-- * 'vciKey'
--
-- * 'vciOAuthToken'
--
-- * 'vciUserKey'
--
-- * 'vciFields'
verificationCodesInvalidate'
    :: Text -- ^ 'userKey'
    -> VerificationCodesInvalidate'
verificationCodesInvalidate' pVciUserKey_ =
    VerificationCodesInvalidate'
    { _vciQuotaUser = Nothing
    , _vciPrettyPrint = True
    , _vciUserIP = Nothing
    , _vciKey = Nothing
    , _vciOAuthToken = Nothing
    , _vciUserKey = pVciUserKey_
    , _vciFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vciQuotaUser :: Lens' VerificationCodesInvalidate' (Maybe Text)
vciQuotaUser
  = lens _vciQuotaUser (\ s a -> s{_vciQuotaUser = a})

-- | Returns response with indentations and line breaks.
vciPrettyPrint :: Lens' VerificationCodesInvalidate' Bool
vciPrettyPrint
  = lens _vciPrettyPrint
      (\ s a -> s{_vciPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vciUserIP :: Lens' VerificationCodesInvalidate' (Maybe Text)
vciUserIP
  = lens _vciUserIP (\ s a -> s{_vciUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vciKey :: Lens' VerificationCodesInvalidate' (Maybe Key)
vciKey = lens _vciKey (\ s a -> s{_vciKey = a})

-- | OAuth 2.0 token for the current user.
vciOAuthToken :: Lens' VerificationCodesInvalidate' (Maybe OAuthToken)
vciOAuthToken
  = lens _vciOAuthToken
      (\ s a -> s{_vciOAuthToken = a})

-- | Email or immutable Id of the user
vciUserKey :: Lens' VerificationCodesInvalidate' Text
vciUserKey
  = lens _vciUserKey (\ s a -> s{_vciUserKey = a})

-- | Selector specifying which fields to include in a partial response.
vciFields :: Lens' VerificationCodesInvalidate' (Maybe Text)
vciFields
  = lens _vciFields (\ s a -> s{_vciFields = a})

instance GoogleAuth VerificationCodesInvalidate'
         where
        authKey = vciKey . _Just
        authToken = vciOAuthToken . _Just

instance GoogleRequest VerificationCodesInvalidate'
         where
        type Rs VerificationCodesInvalidate' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u VerificationCodesInvalidate'{..}
          = go _vciQuotaUser (Just _vciPrettyPrint) _vciUserIP
              _vciKey
              _vciOAuthToken
              _vciUserKey
              _vciFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VerificationCodesInvalidateResource)
                      r
                      u
