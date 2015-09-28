{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Directory.VerificationCodes.Generate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Generate new backup verification codes for the user.
--
-- /See:/ <https://developers.google.com/admin-sdk/directory/ Admin Directory API Reference> for @directory.verificationCodes.generate@.
module Network.Google.API.Directory.VerificationCodes.Generate
    (
    -- * REST Resource
      VerificationCodesGenerateAPI

    -- * Creating a Request
    , verificationCodesGenerate'
    , VerificationCodesGenerate'

    -- * Request Lenses
    , vcgQuotaUser
    , vcgPrettyPrint
    , vcgUserIp
    , vcgKey
    , vcgOauthToken
    , vcgUserKey
    , vcgFields
    , vcgAlt
    ) where

import           Network.Google.Admin.Directory.Types
import           Network.Google.Prelude

-- | A resource alias for directory.verificationCodes.generate which the
-- 'VerificationCodesGenerate'' request conforms to.
type VerificationCodesGenerateAPI =
     "users" :>
       Capture "userKey" Text :>
         "verificationCodes" :>
           "generate" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] ()

-- | Generate new backup verification codes for the user.
--
-- /See:/ 'verificationCodesGenerate'' smart constructor.
data VerificationCodesGenerate' = VerificationCodesGenerate'
    { _vcgQuotaUser   :: !(Maybe Text)
    , _vcgPrettyPrint :: !Bool
    , _vcgUserIp      :: !(Maybe Text)
    , _vcgKey         :: !(Maybe Text)
    , _vcgOauthToken  :: !(Maybe Text)
    , _vcgUserKey     :: !Text
    , _vcgFields      :: !(Maybe Text)
    , _vcgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerificationCodesGenerate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcgQuotaUser'
--
-- * 'vcgPrettyPrint'
--
-- * 'vcgUserIp'
--
-- * 'vcgKey'
--
-- * 'vcgOauthToken'
--
-- * 'vcgUserKey'
--
-- * 'vcgFields'
--
-- * 'vcgAlt'
verificationCodesGenerate'
    :: Text -- ^ 'userKey'
    -> VerificationCodesGenerate'
verificationCodesGenerate' pVcgUserKey_ =
    VerificationCodesGenerate'
    { _vcgQuotaUser = Nothing
    , _vcgPrettyPrint = True
    , _vcgUserIp = Nothing
    , _vcgKey = Nothing
    , _vcgOauthToken = Nothing
    , _vcgUserKey = pVcgUserKey_
    , _vcgFields = Nothing
    , _vcgAlt = JSON
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
vcgUserIp :: Lens' VerificationCodesGenerate' (Maybe Text)
vcgUserIp
  = lens _vcgUserIp (\ s a -> s{_vcgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vcgKey :: Lens' VerificationCodesGenerate' (Maybe Text)
vcgKey = lens _vcgKey (\ s a -> s{_vcgKey = a})

-- | OAuth 2.0 token for the current user.
vcgOauthToken :: Lens' VerificationCodesGenerate' (Maybe Text)
vcgOauthToken
  = lens _vcgOauthToken
      (\ s a -> s{_vcgOauthToken = a})

-- | Email or immutable Id of the user
vcgUserKey :: Lens' VerificationCodesGenerate' Text
vcgUserKey
  = lens _vcgUserKey (\ s a -> s{_vcgUserKey = a})

-- | Selector specifying which fields to include in a partial response.
vcgFields :: Lens' VerificationCodesGenerate' (Maybe Text)
vcgFields
  = lens _vcgFields (\ s a -> s{_vcgFields = a})

-- | Data format for the response.
vcgAlt :: Lens' VerificationCodesGenerate' Alt
vcgAlt = lens _vcgAlt (\ s a -> s{_vcgAlt = a})

instance GoogleRequest VerificationCodesGenerate'
         where
        type Rs VerificationCodesGenerate' = ()
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u VerificationCodesGenerate'{..}
          = go _vcgQuotaUser (Just _vcgPrettyPrint) _vcgUserIp
              _vcgKey
              _vcgOauthToken
              _vcgUserKey
              _vcgFields
              (Just _vcgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VerificationCodesGenerateAPI)
                      r
                      u
