{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.AdvertiserGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one advertiser group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertiserGroups.get@.
module Network.Google.API.DFAReporting.AdvertiserGroups.Get
    (
    -- * REST Resource
      AdvertiserGroupsGetAPI

    -- * Creating a Request
    , advertiserGroupsGet'
    , AdvertiserGroupsGet'

    -- * Request Lenses
    , agggQuotaUser
    , agggPrettyPrint
    , agggUserIp
    , agggProfileId
    , agggKey
    , agggId
    , agggOauthToken
    , agggFields
    , agggAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.advertiserGroups.get which the
-- 'AdvertiserGroupsGet'' request conforms to.
type AdvertiserGroupsGetAPI =
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
    { _agggQuotaUser   :: !(Maybe Text)
    , _agggPrettyPrint :: !Bool
    , _agggUserIp      :: !(Maybe Text)
    , _agggProfileId   :: !Int64
    , _agggKey         :: !(Maybe Text)
    , _agggId          :: !Int64
    , _agggOauthToken  :: !(Maybe Text)
    , _agggFields      :: !(Maybe Text)
    , _agggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agggQuotaUser'
--
-- * 'agggPrettyPrint'
--
-- * 'agggUserIp'
--
-- * 'agggProfileId'
--
-- * 'agggKey'
--
-- * 'agggId'
--
-- * 'agggOauthToken'
--
-- * 'agggFields'
--
-- * 'agggAlt'
advertiserGroupsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdvertiserGroupsGet'
advertiserGroupsGet' pAgggProfileId_ pAgggId_ =
    AdvertiserGroupsGet'
    { _agggQuotaUser = Nothing
    , _agggPrettyPrint = True
    , _agggUserIp = Nothing
    , _agggProfileId = pAgggProfileId_
    , _agggKey = Nothing
    , _agggId = pAgggId_
    , _agggOauthToken = Nothing
    , _agggFields = Nothing
    , _agggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agggQuotaUser :: Lens' AdvertiserGroupsGet' (Maybe Text)
agggQuotaUser
  = lens _agggQuotaUser
      (\ s a -> s{_agggQuotaUser = a})

-- | Returns response with indentations and line breaks.
agggPrettyPrint :: Lens' AdvertiserGroupsGet' Bool
agggPrettyPrint
  = lens _agggPrettyPrint
      (\ s a -> s{_agggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agggUserIp :: Lens' AdvertiserGroupsGet' (Maybe Text)
agggUserIp
  = lens _agggUserIp (\ s a -> s{_agggUserIp = a})

-- | User profile ID associated with this request.
agggProfileId :: Lens' AdvertiserGroupsGet' Int64
agggProfileId
  = lens _agggProfileId
      (\ s a -> s{_agggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agggKey :: Lens' AdvertiserGroupsGet' (Maybe Text)
agggKey = lens _agggKey (\ s a -> s{_agggKey = a})

-- | Advertiser group ID.
agggId :: Lens' AdvertiserGroupsGet' Int64
agggId = lens _agggId (\ s a -> s{_agggId = a})

-- | OAuth 2.0 token for the current user.
agggOauthToken :: Lens' AdvertiserGroupsGet' (Maybe Text)
agggOauthToken
  = lens _agggOauthToken
      (\ s a -> s{_agggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agggFields :: Lens' AdvertiserGroupsGet' (Maybe Text)
agggFields
  = lens _agggFields (\ s a -> s{_agggFields = a})

-- | Data format for the response.
agggAlt :: Lens' AdvertiserGroupsGet' Alt
agggAlt = lens _agggAlt (\ s a -> s{_agggAlt = a})

instance GoogleRequest AdvertiserGroupsGet' where
        type Rs AdvertiserGroupsGet' = AdvertiserGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertiserGroupsGet'{..}
          = go _agggQuotaUser (Just _agggPrettyPrint)
              _agggUserIp
              _agggProfileId
              _agggKey
              _agggId
              _agggOauthToken
              _agggFields
              (Just _agggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertiserGroupsGetAPI)
                      r
                      u
