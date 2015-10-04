{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , aggUserIP
    , aggProFileId
    , aggKey
    , aggId
    , aggOAuthToken
    , aggFields
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
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AdvertiserGroup

-- | Gets one advertiser group by ID.
--
-- /See:/ 'advertiserGroupsGet'' smart constructor.
data AdvertiserGroupsGet' = AdvertiserGroupsGet'
    { _aggQuotaUser   :: !(Maybe Text)
    , _aggPrettyPrint :: !Bool
    , _aggUserIP      :: !(Maybe Text)
    , _aggProFileId   :: !Int64
    , _aggKey         :: !(Maybe Key)
    , _aggId          :: !Int64
    , _aggOAuthToken  :: !(Maybe OAuthToken)
    , _aggFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertiserGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aggQuotaUser'
--
-- * 'aggPrettyPrint'
--
-- * 'aggUserIP'
--
-- * 'aggProFileId'
--
-- * 'aggKey'
--
-- * 'aggId'
--
-- * 'aggOAuthToken'
--
-- * 'aggFields'
advertiserGroupsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> AdvertiserGroupsGet'
advertiserGroupsGet' pAggProFileId_ pAggId_ =
    AdvertiserGroupsGet'
    { _aggQuotaUser = Nothing
    , _aggPrettyPrint = True
    , _aggUserIP = Nothing
    , _aggProFileId = pAggProFileId_
    , _aggKey = Nothing
    , _aggId = pAggId_
    , _aggOAuthToken = Nothing
    , _aggFields = Nothing
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
aggUserIP :: Lens' AdvertiserGroupsGet' (Maybe Text)
aggUserIP
  = lens _aggUserIP (\ s a -> s{_aggUserIP = a})

-- | User profile ID associated with this request.
aggProFileId :: Lens' AdvertiserGroupsGet' Int64
aggProFileId
  = lens _aggProFileId (\ s a -> s{_aggProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aggKey :: Lens' AdvertiserGroupsGet' (Maybe Key)
aggKey = lens _aggKey (\ s a -> s{_aggKey = a})

-- | Advertiser group ID.
aggId :: Lens' AdvertiserGroupsGet' Int64
aggId = lens _aggId (\ s a -> s{_aggId = a})

-- | OAuth 2.0 token for the current user.
aggOAuthToken :: Lens' AdvertiserGroupsGet' (Maybe OAuthToken)
aggOAuthToken
  = lens _aggOAuthToken
      (\ s a -> s{_aggOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aggFields :: Lens' AdvertiserGroupsGet' (Maybe Text)
aggFields
  = lens _aggFields (\ s a -> s{_aggFields = a})

instance GoogleAuth AdvertiserGroupsGet' where
        authKey = aggKey . _Just
        authToken = aggOAuthToken . _Just

instance GoogleRequest AdvertiserGroupsGet' where
        type Rs AdvertiserGroupsGet' = AdvertiserGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u AdvertiserGroupsGet'{..}
          = go _aggProFileId _aggId _aggQuotaUser
              (Just _aggPrettyPrint)
              _aggUserIP
              _aggFields
              _aggKey
              _aggOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AdvertiserGroupsGetResource)
                      r
                      u
