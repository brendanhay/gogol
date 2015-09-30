{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Accounts.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAccountsPatch@.
module DFAReporting.Accounts.Patch
    (
    -- * REST Resource
      AccountsPatchAPI

    -- * Creating a Request
    , accountsPatch
    , AccountsPatch

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aUserIp
    , aProfileId
    , aKey
    , aId
    , aOauthToken
    , aFields
    , aAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAccountsPatch@ which the
-- 'AccountsPatch' request conforms to.
type AccountsPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "accounts" :>
           QueryParam "id" Int64 :> Patch '[JSON] Account

-- | Updates an existing account. This method supports patch semantics.
--
-- /See:/ 'accountsPatch' smart constructor.
data AccountsPatch = AccountsPatch
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aUserIp      :: !(Maybe Text)
    , _aProfileId   :: !Int64
    , _aKey         :: !(Maybe Text)
    , _aId          :: !Int64
    , _aOauthToken  :: !(Maybe Text)
    , _aFields      :: !(Maybe Text)
    , _aAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIp'
--
-- * 'aProfileId'
--
-- * 'aKey'
--
-- * 'aId'
--
-- * 'aOauthToken'
--
-- * 'aFields'
--
-- * 'aAlt'
accountsPatch
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AccountsPatch
accountsPatch pAProfileId_ pAId_ =
    AccountsPatch
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIp = Nothing
    , _aProfileId = pAProfileId_
    , _aKey = Nothing
    , _aId = pAId_
    , _aOauthToken = Nothing
    , _aFields = Nothing
    , _aAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AccountsPatch' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AccountsPatch' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIp :: Lens' AccountsPatch' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | User profile ID associated with this request.
aProfileId :: Lens' AccountsPatch' Int64
aProfileId
  = lens _aProfileId (\ s a -> s{_aProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AccountsPatch' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | Account ID.
aId :: Lens' AccountsPatch' Int64
aId = lens _aId (\ s a -> s{_aId = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AccountsPatch' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AccountsPatch' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AccountsPatch' Text
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest AccountsPatch' where
        type Rs AccountsPatch' = Account
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AccountsPatch{..}
          = go _aQuotaUser _aPrettyPrint _aUserIp _aProfileId
              _aKey
              (Just _aId)
              _aOauthToken
              _aFields
              _aAlt
          where go
                  = clientWithRoute (Proxy :: Proxy AccountsPatchAPI) r
                      u
