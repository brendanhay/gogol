{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivities.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one floodlight activity by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightActivitiesGet@.
module DFAReporting.FloodlightActivities.Get
    (
    -- * REST Resource
      FloodlightActivitiesGetAPI

    -- * Creating a Request
    , floodlightActivitiesGet
    , FloodlightActivitiesGet

    -- * Request Lenses
    , floQuotaUser
    , floPrettyPrint
    , floUserIp
    , floProfileId
    , floKey
    , floId
    , floOauthToken
    , floFields
    , floAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightActivitiesGet@ which the
-- 'FloodlightActivitiesGet' request conforms to.
type FloodlightActivitiesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightActivities" :>
           Capture "id" Int64 :> Get '[JSON] FloodlightActivity

-- | Gets one floodlight activity by ID.
--
-- /See:/ 'floodlightActivitiesGet' smart constructor.
data FloodlightActivitiesGet = FloodlightActivitiesGet
    { _floQuotaUser   :: !(Maybe Text)
    , _floPrettyPrint :: !Bool
    , _floUserIp      :: !(Maybe Text)
    , _floProfileId   :: !Int64
    , _floKey         :: !(Maybe Text)
    , _floId          :: !Int64
    , _floOauthToken  :: !(Maybe Text)
    , _floFields      :: !(Maybe Text)
    , _floAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightActivitiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'floQuotaUser'
--
-- * 'floPrettyPrint'
--
-- * 'floUserIp'
--
-- * 'floProfileId'
--
-- * 'floKey'
--
-- * 'floId'
--
-- * 'floOauthToken'
--
-- * 'floFields'
--
-- * 'floAlt'
floodlightActivitiesGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightActivitiesGet
floodlightActivitiesGet pFloProfileId_ pFloId_ =
    FloodlightActivitiesGet
    { _floQuotaUser = Nothing
    , _floPrettyPrint = True
    , _floUserIp = Nothing
    , _floProfileId = pFloProfileId_
    , _floKey = Nothing
    , _floId = pFloId_
    , _floOauthToken = Nothing
    , _floFields = Nothing
    , _floAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
floQuotaUser :: Lens' FloodlightActivitiesGet' (Maybe Text)
floQuotaUser
  = lens _floQuotaUser (\ s a -> s{_floQuotaUser = a})

-- | Returns response with indentations and line breaks.
floPrettyPrint :: Lens' FloodlightActivitiesGet' Bool
floPrettyPrint
  = lens _floPrettyPrint
      (\ s a -> s{_floPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
floUserIp :: Lens' FloodlightActivitiesGet' (Maybe Text)
floUserIp
  = lens _floUserIp (\ s a -> s{_floUserIp = a})

-- | User profile ID associated with this request.
floProfileId :: Lens' FloodlightActivitiesGet' Int64
floProfileId
  = lens _floProfileId (\ s a -> s{_floProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
floKey :: Lens' FloodlightActivitiesGet' (Maybe Text)
floKey = lens _floKey (\ s a -> s{_floKey = a})

-- | Floodlight activity ID.
floId :: Lens' FloodlightActivitiesGet' Int64
floId = lens _floId (\ s a -> s{_floId = a})

-- | OAuth 2.0 token for the current user.
floOauthToken :: Lens' FloodlightActivitiesGet' (Maybe Text)
floOauthToken
  = lens _floOauthToken
      (\ s a -> s{_floOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
floFields :: Lens' FloodlightActivitiesGet' (Maybe Text)
floFields
  = lens _floFields (\ s a -> s{_floFields = a})

-- | Data format for the response.
floAlt :: Lens' FloodlightActivitiesGet' Text
floAlt = lens _floAlt (\ s a -> s{_floAlt = a})

instance GoogleRequest FloodlightActivitiesGet' where
        type Rs FloodlightActivitiesGet' = FloodlightActivity
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FloodlightActivitiesGet{..}
          = go _floQuotaUser _floPrettyPrint _floUserIp
              _floProfileId
              _floKey
              _floId
              _floOauthToken
              _floFields
              _floAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy FloodlightActivitiesGetAPI)
                      r
                      u
