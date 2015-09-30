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
module Network.Google.Resource.DFAReporting.Subaccounts.Update
    (
    -- * REST Resource
      SubaccountsUpdateResource

    -- * Creating a Request
    , subaccountsUpdate'
    , SubaccountsUpdate'

    -- * Request Lenses
    , suQuotaUser
    , suPrettyPrint
    , suUserIp
    , suProfileId
    , suKey
    , suOauthToken
    , suFields
    , suAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSubaccountsUpdate@ which the
-- 'SubaccountsUpdate'' request conforms to.
type SubaccountsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] Subaccount

-- | Updates an existing subaccount.
--
-- /See:/ 'subaccountsUpdate'' smart constructor.
data SubaccountsUpdate' = SubaccountsUpdate'
    { _suQuotaUser   :: !(Maybe Text)
    , _suPrettyPrint :: !Bool
    , _suUserIp      :: !(Maybe Text)
    , _suProfileId   :: !Int64
    , _suKey         :: !(Maybe Text)
    , _suOauthToken  :: !(Maybe Text)
    , _suFields      :: !(Maybe Text)
    , _suAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubaccountsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'suQuotaUser'
--
-- * 'suPrettyPrint'
--
-- * 'suUserIp'
--
-- * 'suProfileId'
--
-- * 'suKey'
--
-- * 'suOauthToken'
--
-- * 'suFields'
--
-- * 'suAlt'
subaccountsUpdate'
    :: Int64 -- ^ 'profileId'
    -> SubaccountsUpdate'
subaccountsUpdate' pSuProfileId_ =
    SubaccountsUpdate'
    { _suQuotaUser = Nothing
    , _suPrettyPrint = True
    , _suUserIp = Nothing
    , _suProfileId = pSuProfileId_
    , _suKey = Nothing
    , _suOauthToken = Nothing
    , _suFields = Nothing
    , _suAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
suQuotaUser :: Lens' SubaccountsUpdate' (Maybe Text)
suQuotaUser
  = lens _suQuotaUser (\ s a -> s{_suQuotaUser = a})

-- | Returns response with indentations and line breaks.
suPrettyPrint :: Lens' SubaccountsUpdate' Bool
suPrettyPrint
  = lens _suPrettyPrint
      (\ s a -> s{_suPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
suUserIp :: Lens' SubaccountsUpdate' (Maybe Text)
suUserIp = lens _suUserIp (\ s a -> s{_suUserIp = a})

-- | User profile ID associated with this request.
suProfileId :: Lens' SubaccountsUpdate' Int64
suProfileId
  = lens _suProfileId (\ s a -> s{_suProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
suKey :: Lens' SubaccountsUpdate' (Maybe Text)
suKey = lens _suKey (\ s a -> s{_suKey = a})

-- | OAuth 2.0 token for the current user.
suOauthToken :: Lens' SubaccountsUpdate' (Maybe Text)
suOauthToken
  = lens _suOauthToken (\ s a -> s{_suOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
suFields :: Lens' SubaccountsUpdate' (Maybe Text)
suFields = lens _suFields (\ s a -> s{_suFields = a})

-- | Data format for the response.
suAlt :: Lens' SubaccountsUpdate' Alt
suAlt = lens _suAlt (\ s a -> s{_suAlt = a})

instance GoogleRequest SubaccountsUpdate' where
        type Rs SubaccountsUpdate' = Subaccount
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubaccountsUpdate'{..}
          = go _suQuotaUser (Just _suPrettyPrint) _suUserIp
              _suProfileId
              _suKey
              _suOauthToken
              _suFields
              (Just _suAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubaccountsUpdateResource)
                      r
                      u
