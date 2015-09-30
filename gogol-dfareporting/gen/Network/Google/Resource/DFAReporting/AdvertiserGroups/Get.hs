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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one advertiser group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertiserGroupsGet@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Get
    (
    -- * REST Resource
      AdvertiserGroupsGetResource

    -- * Creating a Request
    , advertiserGroupsGet'
    , AdvertiserGroupsGet'

    -- * Request Lenses
    , aggQuotaUser
    , aggPrettyPrint
    , aggUserIp
    , aggProfileId
    , aggKey
    , aggId
    , aggOauthToken
    , aggFields
    , aggAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertiserGroupsGet@ which the
-- 'AdvertiserGroupsGet'' request conforms to.
type AdvertiserGroupsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] AdvertiserGroup

-- | Gets one advertiser group by ID.
--
-- /See:/ 'advertiserGroupsGet'' smart constructor.
data AdvertiserGroupsGet' = AdvertiserGroupsGet'
    { _aggQuotaUser   :: !(Maybe Text)
    , _aggPrettyPrint :: !Bool
    , _aggUserIp      :: !(Maybe Text)
    , _aggProfileId   :: !Int64
    , _aggKey         :: !(Maybe Text)
    , _aggId          :: !Int64
    , _aggOauthToken  :: !(Maybe Text)
    , _aggFields      :: !(Maybe Text)
    , _aggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggQuotaUser'
--
-- * 'aggPrettyPrint'
--
-- * 'aggUserIp'
--
-- * 'aggProfileId'
--
-- * 'aggKey'
--
-- * 'aggId'
--
-- * 'aggOauthToken'
--
-- * 'aggFields'
--
-- * 'aggAlt'
advertiserGroupsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdvertiserGroupsGet'
advertiserGroupsGet' pAggProfileId_ pAggId_ =
    AdvertiserGroupsGet'
    { _aggQuotaUser = Nothing
    , _aggPrettyPrint = True
    , _aggUserIp = Nothing
    , _aggProfileId = pAggProfileId_
    , _aggKey = Nothing
    , _aggId = pAggId_
    , _aggOauthToken = Nothing
    , _aggFields = Nothing
    , _aggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aggQuotaUser :: Lens' AdvertiserGroupsGet' (Maybe Text)
aggQuotaUser
  = lens _aggQuotaUser (\ s a -> s{_aggQuotaUser = a})

-- | Returns response with indentations and line breaks.
aggPrettyPrint :: Lens' AdvertiserGroupsGet' Bool
aggPrettyPrint
  = lens _aggPrettyPrint
      (\ s a -> s{_aggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aggUserIp :: Lens' AdvertiserGroupsGet' (Maybe Text)
aggUserIp
  = lens _aggUserIp (\ s a -> s{_aggUserIp = a})

-- | User profile ID associated with this request.
aggProfileId :: Lens' AdvertiserGroupsGet' Int64
aggProfileId
  = lens _aggProfileId (\ s a -> s{_aggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aggKey :: Lens' AdvertiserGroupsGet' (Maybe Text)
aggKey = lens _aggKey (\ s a -> s{_aggKey = a})

-- | Advertiser group ID.
aggId :: Lens' AdvertiserGroupsGet' Int64
aggId = lens _aggId (\ s a -> s{_aggId = a})

-- | OAuth 2.0 token for the current user.
aggOauthToken :: Lens' AdvertiserGroupsGet' (Maybe Text)
aggOauthToken
  = lens _aggOauthToken
      (\ s a -> s{_aggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aggFields :: Lens' AdvertiserGroupsGet' (Maybe Text)
aggFields
  = lens _aggFields (\ s a -> s{_aggFields = a})

-- | Data format for the response.
aggAlt :: Lens' AdvertiserGroupsGet' Alt
aggAlt = lens _aggAlt (\ s a -> s{_aggAlt = a})

instance GoogleRequest AdvertiserGroupsGet' where
        type Rs AdvertiserGroupsGet' = AdvertiserGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertiserGroupsGet'{..}
          = go _aggQuotaUser (Just _aggPrettyPrint) _aggUserIp
              _aggProfileId
              _aggKey
              _aggId
              _aggOauthToken
              _aggFields
              (Just _aggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertiserGroupsGetResource)
                      r
                      u
