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
-- Module      : Network.Google.Resource.DFAReporting.Regions.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of regions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRegionsList@.
module Network.Google.Resource.DFAReporting.Regions.List
    (
    -- * REST Resource
      RegionsListResource

    -- * Creating a Request
    , regionsList'
    , RegionsList'

    -- * Request Lenses
    , rlQuotaUser
    , rlPrettyPrint
    , rlUserIp
    , rlProfileId
    , rlKey
    , rlOauthToken
    , rlFields
    , rlAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRegionsList@ which the
-- 'RegionsList'' request conforms to.
type RegionsListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "regions" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] RegionsListResponse

-- | Retrieves a list of regions.
--
-- /See:/ 'regionsList'' smart constructor.
data RegionsList' = RegionsList'
    { _rlQuotaUser   :: !(Maybe Text)
    , _rlPrettyPrint :: !Bool
    , _rlUserIp      :: !(Maybe Text)
    , _rlProfileId   :: !Int64
    , _rlKey         :: !(Maybe Text)
    , _rlOauthToken  :: !(Maybe Text)
    , _rlFields      :: !(Maybe Text)
    , _rlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlQuotaUser'
--
-- * 'rlPrettyPrint'
--
-- * 'rlUserIp'
--
-- * 'rlProfileId'
--
-- * 'rlKey'
--
-- * 'rlOauthToken'
--
-- * 'rlFields'
--
-- * 'rlAlt'
regionsList'
    :: Int64 -- ^ 'profileId'
    -> RegionsList'
regionsList' pRlProfileId_ =
    RegionsList'
    { _rlQuotaUser = Nothing
    , _rlPrettyPrint = True
    , _rlUserIp = Nothing
    , _rlProfileId = pRlProfileId_
    , _rlKey = Nothing
    , _rlOauthToken = Nothing
    , _rlFields = Nothing
    , _rlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rlQuotaUser :: Lens' RegionsList' (Maybe Text)
rlQuotaUser
  = lens _rlQuotaUser (\ s a -> s{_rlQuotaUser = a})

-- | Returns response with indentations and line breaks.
rlPrettyPrint :: Lens' RegionsList' Bool
rlPrettyPrint
  = lens _rlPrettyPrint
      (\ s a -> s{_rlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rlUserIp :: Lens' RegionsList' (Maybe Text)
rlUserIp = lens _rlUserIp (\ s a -> s{_rlUserIp = a})

-- | User profile ID associated with this request.
rlProfileId :: Lens' RegionsList' Int64
rlProfileId
  = lens _rlProfileId (\ s a -> s{_rlProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rlKey :: Lens' RegionsList' (Maybe Text)
rlKey = lens _rlKey (\ s a -> s{_rlKey = a})

-- | OAuth 2.0 token for the current user.
rlOauthToken :: Lens' RegionsList' (Maybe Text)
rlOauthToken
  = lens _rlOauthToken (\ s a -> s{_rlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
rlFields :: Lens' RegionsList' (Maybe Text)
rlFields = lens _rlFields (\ s a -> s{_rlFields = a})

-- | Data format for the response.
rlAlt :: Lens' RegionsList' Alt
rlAlt = lens _rlAlt (\ s a -> s{_rlAlt = a})

instance GoogleRequest RegionsList' where
        type Rs RegionsList' = RegionsListResponse
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u RegionsList'{..}
          = go _rlQuotaUser (Just _rlPrettyPrint) _rlUserIp
              _rlProfileId
              _rlKey
              _rlOauthToken
              _rlFields
              (Just _rlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RegionsListResource)
                      r
                      u
