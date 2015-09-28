{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.AdvertiserGroups.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new advertiser group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertiserGroups.insert@.
module Network.Google.API.DFAReporting.AdvertiserGroups.Insert
    (
    -- * REST Resource
      AdvertiserGroupsInsertAPI

    -- * Creating a Request
    , advertiserGroupsInsert'
    , AdvertiserGroupsInsert'

    -- * Request Lenses
    , agiQuotaUser
    , agiPrettyPrint
    , agiUserIp
    , agiProfileId
    , agiKey
    , agiOauthToken
    , agiFields
    , agiAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.advertiserGroups.insert which the
-- 'AdvertiserGroupsInsert'' request conforms to.
type AdvertiserGroupsInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] AdvertiserGroup

-- | Inserts a new advertiser group.
--
-- /See:/ 'advertiserGroupsInsert'' smart constructor.
data AdvertiserGroupsInsert' = AdvertiserGroupsInsert'
    { _agiQuotaUser   :: !(Maybe Text)
    , _agiPrettyPrint :: !Bool
    , _agiUserIp      :: !(Maybe Text)
    , _agiProfileId   :: !Int64
    , _agiKey         :: !(Maybe Text)
    , _agiOauthToken  :: !(Maybe Text)
    , _agiFields      :: !(Maybe Text)
    , _agiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agiQuotaUser'
--
-- * 'agiPrettyPrint'
--
-- * 'agiUserIp'
--
-- * 'agiProfileId'
--
-- * 'agiKey'
--
-- * 'agiOauthToken'
--
-- * 'agiFields'
--
-- * 'agiAlt'
advertiserGroupsInsert'
    :: Int64 -- ^ 'profileId'
    -> AdvertiserGroupsInsert'
advertiserGroupsInsert' pAgiProfileId_ =
    AdvertiserGroupsInsert'
    { _agiQuotaUser = Nothing
    , _agiPrettyPrint = True
    , _agiUserIp = Nothing
    , _agiProfileId = pAgiProfileId_
    , _agiKey = Nothing
    , _agiOauthToken = Nothing
    , _agiFields = Nothing
    , _agiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
agiQuotaUser :: Lens' AdvertiserGroupsInsert' (Maybe Text)
agiQuotaUser
  = lens _agiQuotaUser (\ s a -> s{_agiQuotaUser = a})

-- | Returns response with indentations and line breaks.
agiPrettyPrint :: Lens' AdvertiserGroupsInsert' Bool
agiPrettyPrint
  = lens _agiPrettyPrint
      (\ s a -> s{_agiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
agiUserIp :: Lens' AdvertiserGroupsInsert' (Maybe Text)
agiUserIp
  = lens _agiUserIp (\ s a -> s{_agiUserIp = a})

-- | User profile ID associated with this request.
agiProfileId :: Lens' AdvertiserGroupsInsert' Int64
agiProfileId
  = lens _agiProfileId (\ s a -> s{_agiProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
agiKey :: Lens' AdvertiserGroupsInsert' (Maybe Text)
agiKey = lens _agiKey (\ s a -> s{_agiKey = a})

-- | OAuth 2.0 token for the current user.
agiOauthToken :: Lens' AdvertiserGroupsInsert' (Maybe Text)
agiOauthToken
  = lens _agiOauthToken
      (\ s a -> s{_agiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
agiFields :: Lens' AdvertiserGroupsInsert' (Maybe Text)
agiFields
  = lens _agiFields (\ s a -> s{_agiFields = a})

-- | Data format for the response.
agiAlt :: Lens' AdvertiserGroupsInsert' Alt
agiAlt = lens _agiAlt (\ s a -> s{_agiAlt = a})

instance GoogleRequest AdvertiserGroupsInsert' where
        type Rs AdvertiserGroupsInsert' = AdvertiserGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertiserGroupsInsert'{..}
          = go _agiQuotaUser (Just _agiPrettyPrint) _agiUserIp
              _agiProfileId
              _agiKey
              _agiOauthToken
              _agiFields
              (Just _agiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertiserGroupsInsertAPI)
                      r
                      u
