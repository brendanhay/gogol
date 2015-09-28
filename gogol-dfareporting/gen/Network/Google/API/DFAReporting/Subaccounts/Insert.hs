{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Subaccounts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new subaccount.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.subaccounts.insert@.
module Network.Google.API.DFAReporting.Subaccounts.Insert
    (
    -- * REST Resource
      SubaccountsInsertAPI

    -- * Creating a Request
    , subaccountsInsert'
    , SubaccountsInsert'

    -- * Request Lenses
    , subQuotaUser
    , subPrettyPrint
    , subUserIp
    , subProfileId
    , subKey
    , subOauthToken
    , subFields
    , subAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.subaccounts.insert which the
-- 'SubaccountsInsert'' request conforms to.
type SubaccountsInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Subaccount

-- | Inserts a new subaccount.
--
-- /See:/ 'subaccountsInsert'' smart constructor.
data SubaccountsInsert' = SubaccountsInsert'
    { _subQuotaUser   :: !(Maybe Text)
    , _subPrettyPrint :: !Bool
    , _subUserIp      :: !(Maybe Text)
    , _subProfileId   :: !Int64
    , _subKey         :: !(Maybe Text)
    , _subOauthToken  :: !(Maybe Text)
    , _subFields      :: !(Maybe Text)
    , _subAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubaccountsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subQuotaUser'
--
-- * 'subPrettyPrint'
--
-- * 'subUserIp'
--
-- * 'subProfileId'
--
-- * 'subKey'
--
-- * 'subOauthToken'
--
-- * 'subFields'
--
-- * 'subAlt'
subaccountsInsert'
    :: Int64 -- ^ 'profileId'
    -> SubaccountsInsert'
subaccountsInsert' pSubProfileId_ =
    SubaccountsInsert'
    { _subQuotaUser = Nothing
    , _subPrettyPrint = True
    , _subUserIp = Nothing
    , _subProfileId = pSubProfileId_
    , _subKey = Nothing
    , _subOauthToken = Nothing
    , _subFields = Nothing
    , _subAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
subQuotaUser :: Lens' SubaccountsInsert' (Maybe Text)
subQuotaUser
  = lens _subQuotaUser (\ s a -> s{_subQuotaUser = a})

-- | Returns response with indentations and line breaks.
subPrettyPrint :: Lens' SubaccountsInsert' Bool
subPrettyPrint
  = lens _subPrettyPrint
      (\ s a -> s{_subPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
subUserIp :: Lens' SubaccountsInsert' (Maybe Text)
subUserIp
  = lens _subUserIp (\ s a -> s{_subUserIp = a})

-- | User profile ID associated with this request.
subProfileId :: Lens' SubaccountsInsert' Int64
subProfileId
  = lens _subProfileId (\ s a -> s{_subProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
subKey :: Lens' SubaccountsInsert' (Maybe Text)
subKey = lens _subKey (\ s a -> s{_subKey = a})

-- | OAuth 2.0 token for the current user.
subOauthToken :: Lens' SubaccountsInsert' (Maybe Text)
subOauthToken
  = lens _subOauthToken
      (\ s a -> s{_subOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
subFields :: Lens' SubaccountsInsert' (Maybe Text)
subFields
  = lens _subFields (\ s a -> s{_subFields = a})

-- | Data format for the response.
subAlt :: Lens' SubaccountsInsert' Alt
subAlt = lens _subAlt (\ s a -> s{_subAlt = a})

instance GoogleRequest SubaccountsInsert' where
        type Rs SubaccountsInsert' = Subaccount
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubaccountsInsert'{..}
          = go _subQuotaUser (Just _subPrettyPrint) _subUserIp
              _subProfileId
              _subKey
              _subOauthToken
              _subFields
              (Just _subAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SubaccountsInsertAPI)
                      r
                      u
