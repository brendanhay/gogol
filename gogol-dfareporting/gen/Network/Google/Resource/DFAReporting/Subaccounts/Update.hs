{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Subaccounts.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing subaccount.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSubaccountsUpdate@.
module DFAReporting.Subaccounts.Update
    (
    -- * REST Resource
      SubaccountsUpdateAPI

    -- * Creating a Request
    , subaccountsUpdate
    , SubaccountsUpdate

    -- * Request Lenses
    , suuQuotaUser
    , suuPrettyPrint
    , suuUserIp
    , suuProfileId
    , suuKey
    , suuOauthToken
    , suuFields
    , suuAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSubaccountsUpdate@ which the
-- 'SubaccountsUpdate' request conforms to.
type SubaccountsUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :> Put '[JSON] Subaccount

-- | Updates an existing subaccount.
--
-- /See:/ 'subaccountsUpdate' smart constructor.
data SubaccountsUpdate = SubaccountsUpdate
    { _suuQuotaUser   :: !(Maybe Text)
    , _suuPrettyPrint :: !Bool
    , _suuUserIp      :: !(Maybe Text)
    , _suuProfileId   :: !Int64
    , _suuKey         :: !(Maybe Text)
    , _suuOauthToken  :: !(Maybe Text)
    , _suuFields      :: !(Maybe Text)
    , _suuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubaccountsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suuQuotaUser'
--
-- * 'suuPrettyPrint'
--
-- * 'suuUserIp'
--
-- * 'suuProfileId'
--
-- * 'suuKey'
--
-- * 'suuOauthToken'
--
-- * 'suuFields'
--
-- * 'suuAlt'
subaccountsUpdate
    :: Int64 -- ^ 'profileId'
    -> SubaccountsUpdate
subaccountsUpdate pSuuProfileId_ =
    SubaccountsUpdate
    { _suuQuotaUser = Nothing
    , _suuPrettyPrint = True
    , _suuUserIp = Nothing
    , _suuProfileId = pSuuProfileId_
    , _suuKey = Nothing
    , _suuOauthToken = Nothing
    , _suuFields = Nothing
    , _suuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
suuQuotaUser :: Lens' SubaccountsUpdate' (Maybe Text)
suuQuotaUser
  = lens _suuQuotaUser (\ s a -> s{_suuQuotaUser = a})

-- | Returns response with indentations and line breaks.
suuPrettyPrint :: Lens' SubaccountsUpdate' Bool
suuPrettyPrint
  = lens _suuPrettyPrint
      (\ s a -> s{_suuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
suuUserIp :: Lens' SubaccountsUpdate' (Maybe Text)
suuUserIp
  = lens _suuUserIp (\ s a -> s{_suuUserIp = a})

-- | User profile ID associated with this request.
suuProfileId :: Lens' SubaccountsUpdate' Int64
suuProfileId
  = lens _suuProfileId (\ s a -> s{_suuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suuKey :: Lens' SubaccountsUpdate' (Maybe Text)
suuKey = lens _suuKey (\ s a -> s{_suuKey = a})

-- | OAuth 2.0 token for the current user.
suuOauthToken :: Lens' SubaccountsUpdate' (Maybe Text)
suuOauthToken
  = lens _suuOauthToken
      (\ s a -> s{_suuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
suuFields :: Lens' SubaccountsUpdate' (Maybe Text)
suuFields
  = lens _suuFields (\ s a -> s{_suuFields = a})

-- | Data format for the response.
suuAlt :: Lens' SubaccountsUpdate' Text
suuAlt = lens _suuAlt (\ s a -> s{_suuAlt = a})

instance GoogleRequest SubaccountsUpdate' where
        type Rs SubaccountsUpdate' = Subaccount
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubaccountsUpdate{..}
          = go _suuQuotaUser _suuPrettyPrint _suuUserIp
              _suuProfileId
              _suuKey
              _suuOauthToken
              _suuFields
              _suuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubaccountsUpdateAPI)
                      r
                      u
