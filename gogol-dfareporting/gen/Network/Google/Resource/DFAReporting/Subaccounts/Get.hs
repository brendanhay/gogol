{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Subaccounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one subaccount by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSubaccountsGet@.
module DFAReporting.Subaccounts.Get
    (
    -- * REST Resource
      SubaccountsGetAPI

    -- * Creating a Request
    , subaccountsGet
    , SubaccountsGet

    -- * Request Lenses
    , subuQuotaUser
    , subuPrettyPrint
    , subuUserIp
    , subuProfileId
    , subuKey
    , subuId
    , subuOauthToken
    , subuFields
    , subuAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSubaccountsGet@ which the
-- 'SubaccountsGet' request conforms to.
type SubaccountsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "subaccounts" :>
           Capture "id" Int64 :> Get '[JSON] Subaccount

-- | Gets one subaccount by ID.
--
-- /See:/ 'subaccountsGet' smart constructor.
data SubaccountsGet = SubaccountsGet
    { _subuQuotaUser   :: !(Maybe Text)
    , _subuPrettyPrint :: !Bool
    , _subuUserIp      :: !(Maybe Text)
    , _subuProfileId   :: !Int64
    , _subuKey         :: !(Maybe Text)
    , _subuId          :: !Int64
    , _subuOauthToken  :: !(Maybe Text)
    , _subuFields      :: !(Maybe Text)
    , _subuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SubaccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'subuQuotaUser'
--
-- * 'subuPrettyPrint'
--
-- * 'subuUserIp'
--
-- * 'subuProfileId'
--
-- * 'subuKey'
--
-- * 'subuId'
--
-- * 'subuOauthToken'
--
-- * 'subuFields'
--
-- * 'subuAlt'
subaccountsGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SubaccountsGet
subaccountsGet pSubuProfileId_ pSubuId_ =
    SubaccountsGet
    { _subuQuotaUser = Nothing
    , _subuPrettyPrint = True
    , _subuUserIp = Nothing
    , _subuProfileId = pSubuProfileId_
    , _subuKey = Nothing
    , _subuId = pSubuId_
    , _subuOauthToken = Nothing
    , _subuFields = Nothing
    , _subuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
subuQuotaUser :: Lens' SubaccountsGet' (Maybe Text)
subuQuotaUser
  = lens _subuQuotaUser
      (\ s a -> s{_subuQuotaUser = a})

-- | Returns response with indentations and line breaks.
subuPrettyPrint :: Lens' SubaccountsGet' Bool
subuPrettyPrint
  = lens _subuPrettyPrint
      (\ s a -> s{_subuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
subuUserIp :: Lens' SubaccountsGet' (Maybe Text)
subuUserIp
  = lens _subuUserIp (\ s a -> s{_subuUserIp = a})

-- | User profile ID associated with this request.
subuProfileId :: Lens' SubaccountsGet' Int64
subuProfileId
  = lens _subuProfileId
      (\ s a -> s{_subuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
subuKey :: Lens' SubaccountsGet' (Maybe Text)
subuKey = lens _subuKey (\ s a -> s{_subuKey = a})

-- | Subaccount ID.
subuId :: Lens' SubaccountsGet' Int64
subuId = lens _subuId (\ s a -> s{_subuId = a})

-- | OAuth 2.0 token for the current user.
subuOauthToken :: Lens' SubaccountsGet' (Maybe Text)
subuOauthToken
  = lens _subuOauthToken
      (\ s a -> s{_subuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
subuFields :: Lens' SubaccountsGet' (Maybe Text)
subuFields
  = lens _subuFields (\ s a -> s{_subuFields = a})

-- | Data format for the response.
subuAlt :: Lens' SubaccountsGet' Text
subuAlt = lens _subuAlt (\ s a -> s{_subuAlt = a})

instance GoogleRequest SubaccountsGet' where
        type Rs SubaccountsGet' = Subaccount
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SubaccountsGet{..}
          = go _subuQuotaUser _subuPrettyPrint _subuUserIp
              _subuProfileId
              _subuKey
              _subuId
              _subuOauthToken
              _subuFields
              _subuAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SubaccountsGetAPI)
                      r
                      u
