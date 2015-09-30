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
    , vclUserIp
    , vclKey
    , vclOauthToken
    , vclUserKey
    , vclFields
    , vclAlt
    ) where

import           Network.Google.AdminDirectory.Types
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
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] VerificationCodes

-- | Returns the current set of valid backup verification codes for the
-- specified user.
--
-- /See:/ 'verificationCodesList'' smart constructor.
data VerificationCodesList' = VerificationCodesList'
    { _vclQuotaUser   :: !(Maybe Text)
    , _vclPrettyPrint :: !Bool
    , _vclUserIp      :: !(Maybe Text)
    , _vclKey         :: !(Maybe Text)
    , _vclOauthToken  :: !(Maybe Text)
    , _vclUserKey     :: !Text
    , _vclFields      :: !(Maybe Text)
    , _vclAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VerificationCodesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vclQuotaUser'
--
-- * 'vclPrettyPrint'
--
-- * 'vclUserIp'
--
-- * 'vclKey'
--
-- * 'vclOauthToken'
--
-- * 'vclUserKey'
--
-- * 'vclFields'
--
-- * 'vclAlt'
verificationCodesList'
    :: Text -- ^ 'userKey'
    -> VerificationCodesList'
verificationCodesList' pVclUserKey_ =
    VerificationCodesList'
    { _vclQuotaUser = Nothing
    , _vclPrettyPrint = True
    , _vclUserIp = Nothing
    , _vclKey = Nothing
    , _vclOauthToken = Nothing
    , _vclUserKey = pVclUserKey_
    , _vclFields = Nothing
    , _vclAlt = JSON
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
vclUserIp :: Lens' VerificationCodesList' (Maybe Text)
vclUserIp
  = lens _vclUserIp (\ s a -> s{_vclUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vclKey :: Lens' VerificationCodesList' (Maybe Text)
vclKey = lens _vclKey (\ s a -> s{_vclKey = a})

-- | OAuth 2.0 token for the current user.
vclOauthToken :: Lens' VerificationCodesList' (Maybe Text)
vclOauthToken
  = lens _vclOauthToken
      (\ s a -> s{_vclOauthToken = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
vclUserKey :: Lens' VerificationCodesList' Text
vclUserKey
  = lens _vclUserKey (\ s a -> s{_vclUserKey = a})

-- | Selector specifying which fields to include in a partial response.
vclFields :: Lens' VerificationCodesList' (Maybe Text)
vclFields
  = lens _vclFields (\ s a -> s{_vclFields = a})

-- | Data format for the response.
vclAlt :: Lens' VerificationCodesList' Alt
vclAlt = lens _vclAlt (\ s a -> s{_vclAlt = a})

instance GoogleRequest VerificationCodesList' where
        type Rs VerificationCodesList' = VerificationCodes
        request = requestWithRoute defReq adminDirectoryURL
        requestWithRoute r u VerificationCodesList'{..}
          = go _vclQuotaUser (Just _vclPrettyPrint) _vclUserIp
              _vclKey
              _vclOauthToken
              _vclUserKey
              _vclFields
              (Just _vclAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VerificationCodesListResource)
                      r
                      u
