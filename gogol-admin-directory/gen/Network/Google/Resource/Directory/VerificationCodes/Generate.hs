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
-- Module      : Network.Google.Resource.Directory.VerificationCodes.Generate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generate new backup verification codes for the user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @DirectoryVerificationCodesGenerate@.
module Network.Google.Resource.Directory.VerificationCodes.Generate
    (
    -- * REST Resource
      VerificationCodesGenerateResource

    -- * Creating a Request
    , verificationCodesGenerate'
    , VerificationCodesGenerate'

    -- * Request Lenses
    , vcgQuotaUser
    , vcgPrettyPrint
    , vcgUserIP
    , vcgKey
    , vcgOAuthToken
    , vcgUserKey
    , vcgFields
    ) where

import           Network.Google.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for @DirectoryVerificationCodesGenerate@ which the
-- 'VerificationCodesGenerate'' request conforms to.
type VerificationCodesGenerateResource =
     "users" :>
       Capture "userKey" Text :>
         "verificationCodes" :>
           "generate" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Generate new backup verification codes for the user.
--
-- /See:/ 'verificationCodesGenerate'' smart constructor.
data VerificationCodesGenerate' = VerificationCodesGenerate'
    { _vcgQuotaUser   :: !(Maybe Text)
    , _vcgPrettyPrint :: !Bool
    , _vcgUserIP      :: !(Maybe Text)
    , _vcgKey         :: !(Maybe AuthKey)
    , _vcgOAuthToken  :: !(Maybe OAuthToken)
    , _vcgUserKey     :: !Text
    , _vcgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerificationCodesGenerate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcgQuotaUser'
--
-- * 'vcgPrettyPrint'
--
-- * 'vcgUserIP'
--
-- * 'vcgKey'
--
-- * 'vcgOAuthToken'
--
-- * 'vcgUserKey'
--
-- * 'vcgFields'
verificationCodesGenerate'
    :: Text -- ^ 'userKey'
    -> VerificationCodesGenerate'
verificationCodesGenerate' pVcgUserKey_ =
    VerificationCodesGenerate'
    { _vcgQuotaUser = Nothing
    , _vcgPrettyPrint = True
    , _vcgUserIP = Nothing
    , _vcgKey = Nothing
    , _vcgOAuthToken = Nothing
    , _vcgUserKey = pVcgUserKey_
    , _vcgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vcgQuotaUser :: Lens' VerificationCodesGenerate' (Maybe Text)
vcgQuotaUser
  = lens _vcgQuotaUser (\ s a -> s{_vcgQuotaUser = a})

-- | Returns response with indentations and line breaks.
vcgPrettyPrint :: Lens' VerificationCodesGenerate' Bool
vcgPrettyPrint
  = lens _vcgPrettyPrint
      (\ s a -> s{_vcgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vcgUserIP :: Lens' VerificationCodesGenerate' (Maybe Text)
vcgUserIP
  = lens _vcgUserIP (\ s a -> s{_vcgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vcgKey :: Lens' VerificationCodesGenerate' (Maybe AuthKey)
vcgKey = lens _vcgKey (\ s a -> s{_vcgKey = a})

-- | OAuth 2.0 token for the current user.
vcgOAuthToken :: Lens' VerificationCodesGenerate' (Maybe OAuthToken)
vcgOAuthToken
  = lens _vcgOAuthToken
      (\ s a -> s{_vcgOAuthToken = a})

-- | Email or immutable Id of the user
vcgUserKey :: Lens' VerificationCodesGenerate' Text
vcgUserKey
  = lens _vcgUserKey (\ s a -> s{_vcgUserKey = a})

-- | Selector specifying which fields to include in a partial response.
vcgFields :: Lens' VerificationCodesGenerate' (Maybe Text)
vcgFields
  = lens _vcgFields (\ s a -> s{_vcgFields = a})

instance GoogleAuth VerificationCodesGenerate' where
        authKey = vcgKey . _Just
        authToken = vcgOAuthToken . _Just

instance GoogleRequest VerificationCodesGenerate'
         where
        type Rs VerificationCodesGenerate' = ()
        request = requestWith directoryRequest
        requestWith rq VerificationCodesGenerate'{..}
          = go _vcgUserKey _vcgQuotaUser (Just _vcgPrettyPrint)
              _vcgUserIP
              _vcgFields
              _vcgKey
              _vcgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy VerificationCodesGenerateResource)
                      rq
