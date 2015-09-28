{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Accounts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.accounts.patch@.
module Network.Google.API.DFAReporting.Accounts.Patch
    (
    -- * REST Resource
      AccountsPatchAPI

    -- * Creating a Request
    , accountsPatch'
    , AccountsPatch'

    -- * Request Lenses
    , appQuotaUser
    , appPrettyPrint
    , appUserIp
    , appProfileId
    , appKey
    , appId
    , appOauthToken
    , appFields
    , appAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.accounts.patch which the
-- 'AccountsPatch'' request conforms to.
type AccountsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Account

-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ 'accountsPatch'' smart constructor.
data AccountsPatch' = AccountsPatch'
    { _appQuotaUser   :: !(Maybe Text)
    , _appPrettyPrint :: !Bool
    , _appUserIp      :: !(Maybe Text)
    , _appProfileId   :: !Int64
    , _appKey         :: !(Maybe Text)
    , _appId          :: !Int64
    , _appOauthToken  :: !(Maybe Text)
    , _appFields      :: !(Maybe Text)
    , _appAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'appQuotaUser'
--
-- * 'appPrettyPrint'
--
-- * 'appUserIp'
--
-- * 'appProfileId'
--
-- * 'appKey'
--
-- * 'appId'
--
-- * 'appOauthToken'
--
-- * 'appFields'
--
-- * 'appAlt'
accountsPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountsPatch'
accountsPatch' pAppProfileId_ pAppId_ =
    AccountsPatch'
    { _appQuotaUser = Nothing
    , _appPrettyPrint = True
    , _appUserIp = Nothing
    , _appProfileId = pAppProfileId_
    , _appKey = Nothing
    , _appId = pAppId_
    , _appOauthToken = Nothing
    , _appFields = Nothing
    , _appAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
appQuotaUser :: Lens' AccountsPatch' (Maybe Text)
appQuotaUser
  = lens _appQuotaUser (\ s a -> s{_appQuotaUser = a})

-- | Returns response with indentations and line breaks.
appPrettyPrint :: Lens' AccountsPatch' Bool
appPrettyPrint
  = lens _appPrettyPrint
      (\ s a -> s{_appPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
appUserIp :: Lens' AccountsPatch' (Maybe Text)
appUserIp
  = lens _appUserIp (\ s a -> s{_appUserIp = a})

-- | User profile ID associated with this request.
appProfileId :: Lens' AccountsPatch' Int64
appProfileId
  = lens _appProfileId (\ s a -> s{_appProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
appKey :: Lens' AccountsPatch' (Maybe Text)
appKey = lens _appKey (\ s a -> s{_appKey = a})

-- | Account ID.
appId :: Lens' AccountsPatch' Int64
appId = lens _appId (\ s a -> s{_appId = a})

-- | OAuth 2.0 token for the current user.
appOauthToken :: Lens' AccountsPatch' (Maybe Text)
appOauthToken
  = lens _appOauthToken
      (\ s a -> s{_appOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
appFields :: Lens' AccountsPatch' (Maybe Text)
appFields
  = lens _appFields (\ s a -> s{_appFields = a})

-- | Data format for the response.
appAlt :: Lens' AccountsPatch' Alt
appAlt = lens _appAlt (\ s a -> s{_appAlt = a})

instance GoogleRequest AccountsPatch' where
        type Rs AccountsPatch' = Account
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountsPatch'{..}
          = go _appQuotaUser (Just _appPrettyPrint) _appUserIp
              _appProfileId
              _appKey
              (Just _appId)
              _appOauthToken
              _appFields
              (Just _appAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AccountsPatchAPI) r
                      u
