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
-- Module      : Network.Google.Resource.Directory.VerificationCodes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the current set of valid backup verification codes for the
-- specified user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryVerificationCodesList@.
module Network.Google.Resource.Directory.VerificationCodes.List
    (
    -- * REST Resource
      VerificationCodesListResource

    -- * Creating a Request
    , verificationCodesList'
    , VerificationCodesList'

    -- * Request Lenses
    , vclQuotaUser
    , vclPrettyPrint
    , vclUserIP
    , vclKey
    , vclOAuthToken
    , vclUserKey
    , vclFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryVerificationCodesList@ which the
-- 'VerificationCodesList'' request conforms to.
type VerificationCodesListResource =
     "users" :>
       Capture "userKey" Text :>
         "verificationCodes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] VerificationCodes

-- | Returns the current set of valid backup verification codes for the
-- specified user.
--
-- /See:/ 'verificationCodesList'' smart constructor.
data VerificationCodesList' = VerificationCodesList'
    { _vclQuotaUser   :: !(Maybe Text)
    , _vclPrettyPrint :: !Bool
    , _vclUserIP      :: !(Maybe Text)
    , _vclKey         :: !(Maybe AuthKey)
    , _vclOAuthToken  :: !(Maybe OAuthToken)
    , _vclUserKey     :: !Text
    , _vclFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerificationCodesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vclQuotaUser'
--
-- * 'vclPrettyPrint'
--
-- * 'vclUserIP'
--
-- * 'vclKey'
--
-- * 'vclOAuthToken'
--
-- * 'vclUserKey'
--
-- * 'vclFields'
verificationCodesList'
    :: Text -- ^ 'userKey'
    -> VerificationCodesList'
verificationCodesList' pVclUserKey_ =
    VerificationCodesList'
    { _vclQuotaUser = Nothing
    , _vclPrettyPrint = True
    , _vclUserIP = Nothing
    , _vclKey = Nothing
    , _vclOAuthToken = Nothing
    , _vclUserKey = pVclUserKey_
    , _vclFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vclQuotaUser :: Lens' VerificationCodesList' (Maybe Text)
vclQuotaUser
  = lens _vclQuotaUser (\ s a -> s{_vclQuotaUser = a})

-- | Returns response with indentations and line breaks.
vclPrettyPrint :: Lens' VerificationCodesList' Bool
vclPrettyPrint
  = lens _vclPrettyPrint
      (\ s a -> s{_vclPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vclUserIP :: Lens' VerificationCodesList' (Maybe Text)
vclUserIP
  = lens _vclUserIP (\ s a -> s{_vclUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vclKey :: Lens' VerificationCodesList' (Maybe AuthKey)
vclKey = lens _vclKey (\ s a -> s{_vclKey = a})

-- | OAuth 2.0 token for the current user.
vclOAuthToken :: Lens' VerificationCodesList' (Maybe OAuthToken)
vclOAuthToken
  = lens _vclOAuthToken
      (\ s a -> s{_vclOAuthToken = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
vclUserKey :: Lens' VerificationCodesList' Text
vclUserKey
  = lens _vclUserKey (\ s a -> s{_vclUserKey = a})

-- | Selector specifying which fields to include in a partial response.
vclFields :: Lens' VerificationCodesList' (Maybe Text)
vclFields
  = lens _vclFields (\ s a -> s{_vclFields = a})

instance GoogleAuth VerificationCodesList' where
        authKey = vclKey . _Just
        authToken = vclOAuthToken . _Just

instance GoogleRequest VerificationCodesList' where
        type Rs VerificationCodesList' = VerificationCodes
        request = requestWithRoute defReq directoryURL
        requestWithRoute r u VerificationCodesList'{..}
          = go _vclUserKey _vclQuotaUser (Just _vclPrettyPrint)
              _vclUserIP
              _vclFields
              _vclKey
              _vclOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VerificationCodesListResource)
                      r
                      u
