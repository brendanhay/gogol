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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one floodlight activity group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivityGroupsGet@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Get
    (
    -- * REST Resource
      FloodlightActivityGroupsGetResource

    -- * Creating a Request
    , floodlightActivityGroupsGet'
    , FloodlightActivityGroupsGet'

    -- * Request Lenses
    , faggQuotaUser
    , faggPrettyPrint
    , faggUserIp
    , faggProfileId
    , faggKey
    , faggId
    , faggOauthToken
    , faggFields
    , faggAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivityGroupsGet@ which the
-- 'FloodlightActivityGroupsGet'' request conforms to.
type FloodlightActivityGroupsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivityGroups" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] FloodlightActivityGroup

-- | Gets one floodlight activity group by ID.
--
-- /See:/ 'floodlightActivityGroupsGet'' smart constructor.
data FloodlightActivityGroupsGet' = FloodlightActivityGroupsGet'
    { _faggQuotaUser   :: !(Maybe Text)
    , _faggPrettyPrint :: !Bool
    , _faggUserIp      :: !(Maybe Text)
    , _faggProfileId   :: !Int64
    , _faggKey         :: !(Maybe Text)
    , _faggId          :: !Int64
    , _faggOauthToken  :: !(Maybe Text)
    , _faggFields      :: !(Maybe Text)
    , _faggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivityGroupsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faggQuotaUser'
--
-- * 'faggPrettyPrint'
--
-- * 'faggUserIp'
--
-- * 'faggProfileId'
--
-- * 'faggKey'
--
-- * 'faggId'
--
-- * 'faggOauthToken'
--
-- * 'faggFields'
--
-- * 'faggAlt'
floodlightActivityGroupsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightActivityGroupsGet'
floodlightActivityGroupsGet' pFaggProfileId_ pFaggId_ =
    FloodlightActivityGroupsGet'
    { _faggQuotaUser = Nothing
    , _faggPrettyPrint = True
    , _faggUserIp = Nothing
    , _faggProfileId = pFaggProfileId_
    , _faggKey = Nothing
    , _faggId = pFaggId_
    , _faggOauthToken = Nothing
    , _faggFields = Nothing
    , _faggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
faggQuotaUser :: Lens' FloodlightActivityGroupsGet' (Maybe Text)
faggQuotaUser
  = lens _faggQuotaUser
      (\ s a -> s{_faggQuotaUser = a})

-- | Returns response with indentations and line breaks.
faggPrettyPrint :: Lens' FloodlightActivityGroupsGet' Bool
faggPrettyPrint
  = lens _faggPrettyPrint
      (\ s a -> s{_faggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
faggUserIp :: Lens' FloodlightActivityGroupsGet' (Maybe Text)
faggUserIp
  = lens _faggUserIp (\ s a -> s{_faggUserIp = a})

-- | User profile ID associated with this request.
faggProfileId :: Lens' FloodlightActivityGroupsGet' Int64
faggProfileId
  = lens _faggProfileId
      (\ s a -> s{_faggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
faggKey :: Lens' FloodlightActivityGroupsGet' (Maybe Text)
faggKey = lens _faggKey (\ s a -> s{_faggKey = a})

-- | Floodlight activity Group ID.
faggId :: Lens' FloodlightActivityGroupsGet' Int64
faggId = lens _faggId (\ s a -> s{_faggId = a})

-- | OAuth 2.0 token for the current user.
faggOauthToken :: Lens' FloodlightActivityGroupsGet' (Maybe Text)
faggOauthToken
  = lens _faggOauthToken
      (\ s a -> s{_faggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
faggFields :: Lens' FloodlightActivityGroupsGet' (Maybe Text)
faggFields
  = lens _faggFields (\ s a -> s{_faggFields = a})

-- | Data format for the response.
faggAlt :: Lens' FloodlightActivityGroupsGet' Alt
faggAlt = lens _faggAlt (\ s a -> s{_faggAlt = a})

instance GoogleRequest FloodlightActivityGroupsGet'
         where
        type Rs FloodlightActivityGroupsGet' =
             FloodlightActivityGroup
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivityGroupsGet'{..}
          = go _faggQuotaUser (Just _faggPrettyPrint)
              _faggUserIp
              _faggProfileId
              _faggKey
              _faggId
              _faggOauthToken
              _faggFields
              (Just _faggAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivityGroupsGetResource)
                      r
                      u
