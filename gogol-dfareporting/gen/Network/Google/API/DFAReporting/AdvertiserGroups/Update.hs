{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.AdvertiserGroups.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing advertiser group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.advertiserGroups.update@.
module Network.Google.API.DFAReporting.AdvertiserGroups.Update
    (
    -- * REST Resource
      AdvertiserGroupsUpdateAPI

    -- * Creating a Request
    , advertiserGroupsUpdate'
    , AdvertiserGroupsUpdate'

    -- * Request Lenses
    , aguQuotaUser
    , aguPrettyPrint
    , aguUserIp
    , aguProfileId
    , aguKey
    , aguOauthToken
    , aguFields
    , aguAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.advertiserGroups.update which the
-- 'AdvertiserGroupsUpdate'' request conforms to.
type AdvertiserGroupsUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertiserGroups" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Put '[JSON] AdvertiserGroup

-- | Updates an existing advertiser group.
--
-- /See:/ 'advertiserGroupsUpdate'' smart constructor.
data AdvertiserGroupsUpdate' = AdvertiserGroupsUpdate'
    { _aguQuotaUser   :: !(Maybe Text)
    , _aguPrettyPrint :: !Bool
    , _aguUserIp      :: !(Maybe Text)
    , _aguProfileId   :: !Int64
    , _aguKey         :: !(Maybe Text)
    , _aguOauthToken  :: !(Maybe Text)
    , _aguFields      :: !(Maybe Text)
    , _aguAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aguQuotaUser'
--
-- * 'aguPrettyPrint'
--
-- * 'aguUserIp'
--
-- * 'aguProfileId'
--
-- * 'aguKey'
--
-- * 'aguOauthToken'
--
-- * 'aguFields'
--
-- * 'aguAlt'
advertiserGroupsUpdate'
    :: Int64 -- ^ 'profileId'
    -> AdvertiserGroupsUpdate'
advertiserGroupsUpdate' pAguProfileId_ =
    AdvertiserGroupsUpdate'
    { _aguQuotaUser = Nothing
    , _aguPrettyPrint = True
    , _aguUserIp = Nothing
    , _aguProfileId = pAguProfileId_
    , _aguKey = Nothing
    , _aguOauthToken = Nothing
    , _aguFields = Nothing
    , _aguAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aguQuotaUser :: Lens' AdvertiserGroupsUpdate' (Maybe Text)
aguQuotaUser
  = lens _aguQuotaUser (\ s a -> s{_aguQuotaUser = a})

-- | Returns response with indentations and line breaks.
aguPrettyPrint :: Lens' AdvertiserGroupsUpdate' Bool
aguPrettyPrint
  = lens _aguPrettyPrint
      (\ s a -> s{_aguPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aguUserIp :: Lens' AdvertiserGroupsUpdate' (Maybe Text)
aguUserIp
  = lens _aguUserIp (\ s a -> s{_aguUserIp = a})

-- | User profile ID associated with this request.
aguProfileId :: Lens' AdvertiserGroupsUpdate' Int64
aguProfileId
  = lens _aguProfileId (\ s a -> s{_aguProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aguKey :: Lens' AdvertiserGroupsUpdate' (Maybe Text)
aguKey = lens _aguKey (\ s a -> s{_aguKey = a})

-- | OAuth 2.0 token for the current user.
aguOauthToken :: Lens' AdvertiserGroupsUpdate' (Maybe Text)
aguOauthToken
  = lens _aguOauthToken
      (\ s a -> s{_aguOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aguFields :: Lens' AdvertiserGroupsUpdate' (Maybe Text)
aguFields
  = lens _aguFields (\ s a -> s{_aguFields = a})

-- | Data format for the response.
aguAlt :: Lens' AdvertiserGroupsUpdate' Alt
aguAlt = lens _aguAlt (\ s a -> s{_aguAlt = a})

instance GoogleRequest AdvertiserGroupsUpdate' where
        type Rs AdvertiserGroupsUpdate' = AdvertiserGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertiserGroupsUpdate'{..}
          = go _aguQuotaUser (Just _aguPrettyPrint) _aguUserIp
              _aguProfileId
              _aguKey
              _aguOauthToken
              _aguFields
              (Just _aguAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertiserGroupsUpdateAPI)
                      r
                      u
