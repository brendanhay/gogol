{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing placement strategy.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementStrategiesUpdate@.
module DFAReporting.PlacementStrategies.Update
    (
    -- * REST Resource
      PlacementStrategiesUpdateAPI

    -- * Creating a Request
    , placementStrategiesUpdate
    , PlacementStrategiesUpdate

    -- * Request Lenses
    , psuQuotaUser
    , psuPrettyPrint
    , psuUserIp
    , psuProfileId
    , psuKey
    , psuOauthToken
    , psuFields
    , psuAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementStrategiesUpdate@ which the
-- 'PlacementStrategiesUpdate' request conforms to.
type PlacementStrategiesUpdateAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementStrategies" :>
           Put '[JSON] PlacementStrategy

-- | Updates an existing placement strategy.
--
-- /See:/ 'placementStrategiesUpdate' smart constructor.
data PlacementStrategiesUpdate = PlacementStrategiesUpdate
    { _psuQuotaUser   :: !(Maybe Text)
    , _psuPrettyPrint :: !Bool
    , _psuUserIp      :: !(Maybe Text)
    , _psuProfileId   :: !Int64
    , _psuKey         :: !(Maybe Text)
    , _psuOauthToken  :: !(Maybe Text)
    , _psuFields      :: !(Maybe Text)
    , _psuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psuQuotaUser'
--
-- * 'psuPrettyPrint'
--
-- * 'psuUserIp'
--
-- * 'psuProfileId'
--
-- * 'psuKey'
--
-- * 'psuOauthToken'
--
-- * 'psuFields'
--
-- * 'psuAlt'
placementStrategiesUpdate
    :: Int64 -- ^ 'profileId'
    -> PlacementStrategiesUpdate
placementStrategiesUpdate pPsuProfileId_ =
    PlacementStrategiesUpdate
    { _psuQuotaUser = Nothing
    , _psuPrettyPrint = True
    , _psuUserIp = Nothing
    , _psuProfileId = pPsuProfileId_
    , _psuKey = Nothing
    , _psuOauthToken = Nothing
    , _psuFields = Nothing
    , _psuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
psuQuotaUser :: Lens' PlacementStrategiesUpdate' (Maybe Text)
psuQuotaUser
  = lens _psuQuotaUser (\ s a -> s{_psuQuotaUser = a})

-- | Returns response with indentations and line breaks.
psuPrettyPrint :: Lens' PlacementStrategiesUpdate' Bool
psuPrettyPrint
  = lens _psuPrettyPrint
      (\ s a -> s{_psuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
psuUserIp :: Lens' PlacementStrategiesUpdate' (Maybe Text)
psuUserIp
  = lens _psuUserIp (\ s a -> s{_psuUserIp = a})

-- | User profile ID associated with this request.
psuProfileId :: Lens' PlacementStrategiesUpdate' Int64
psuProfileId
  = lens _psuProfileId (\ s a -> s{_psuProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
psuKey :: Lens' PlacementStrategiesUpdate' (Maybe Text)
psuKey = lens _psuKey (\ s a -> s{_psuKey = a})

-- | OAuth 2.0 token for the current user.
psuOauthToken :: Lens' PlacementStrategiesUpdate' (Maybe Text)
psuOauthToken
  = lens _psuOauthToken
      (\ s a -> s{_psuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
psuFields :: Lens' PlacementStrategiesUpdate' (Maybe Text)
psuFields
  = lens _psuFields (\ s a -> s{_psuFields = a})

-- | Data format for the response.
psuAlt :: Lens' PlacementStrategiesUpdate' Text
psuAlt = lens _psuAlt (\ s a -> s{_psuAlt = a})

instance GoogleRequest PlacementStrategiesUpdate'
         where
        type Rs PlacementStrategiesUpdate' =
             PlacementStrategy
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementStrategiesUpdate{..}
          = go _psuQuotaUser _psuPrettyPrint _psuUserIp
              _psuProfileId
              _psuKey
              _psuOauthToken
              _psuFields
              _psuAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementStrategiesUpdateAPI)
                      r
                      u
