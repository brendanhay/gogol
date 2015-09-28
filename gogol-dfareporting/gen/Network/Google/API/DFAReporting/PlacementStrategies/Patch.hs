{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.PlacementStrategies.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing placement strategy. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placementStrategies.patch@.
module Network.Google.API.DFAReporting.PlacementStrategies.Patch
    (
    -- * REST Resource
      PlacementStrategiesPatchAPI

    -- * Creating a Request
    , placementStrategiesPatch'
    , PlacementStrategiesPatch'

    -- * Request Lenses
    , pspQuotaUser
    , pspPrettyPrint
    , pspUserIp
    , pspProfileId
    , pspKey
    , pspId
    , pspOauthToken
    , pspFields
    , pspAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.placementStrategies.patch which the
-- 'PlacementStrategiesPatch'' request conforms to.
type PlacementStrategiesPatchAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placementStrategies" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "id" Int64 :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Patch '[JSON] PlacementStrategy

-- | Updates an existing placement strategy. This method supports patch
-- semantics.
--
-- /See:/ 'placementStrategiesPatch'' smart constructor.
data PlacementStrategiesPatch' = PlacementStrategiesPatch'
    { _pspQuotaUser   :: !(Maybe Text)
    , _pspPrettyPrint :: !Bool
    , _pspUserIp      :: !(Maybe Text)
    , _pspProfileId   :: !Int64
    , _pspKey         :: !(Maybe Text)
    , _pspId          :: !Int64
    , _pspOauthToken  :: !(Maybe Text)
    , _pspFields      :: !(Maybe Text)
    , _pspAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementStrategiesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pspQuotaUser'
--
-- * 'pspPrettyPrint'
--
-- * 'pspUserIp'
--
-- * 'pspProfileId'
--
-- * 'pspKey'
--
-- * 'pspId'
--
-- * 'pspOauthToken'
--
-- * 'pspFields'
--
-- * 'pspAlt'
placementStrategiesPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementStrategiesPatch'
placementStrategiesPatch' pPspProfileId_ pPspId_ =
    PlacementStrategiesPatch'
    { _pspQuotaUser = Nothing
    , _pspPrettyPrint = True
    , _pspUserIp = Nothing
    , _pspProfileId = pPspProfileId_
    , _pspKey = Nothing
    , _pspId = pPspId_
    , _pspOauthToken = Nothing
    , _pspFields = Nothing
    , _pspAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pspQuotaUser :: Lens' PlacementStrategiesPatch' (Maybe Text)
pspQuotaUser
  = lens _pspQuotaUser (\ s a -> s{_pspQuotaUser = a})

-- | Returns response with indentations and line breaks.
pspPrettyPrint :: Lens' PlacementStrategiesPatch' Bool
pspPrettyPrint
  = lens _pspPrettyPrint
      (\ s a -> s{_pspPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pspUserIp :: Lens' PlacementStrategiesPatch' (Maybe Text)
pspUserIp
  = lens _pspUserIp (\ s a -> s{_pspUserIp = a})

-- | User profile ID associated with this request.
pspProfileId :: Lens' PlacementStrategiesPatch' Int64
pspProfileId
  = lens _pspProfileId (\ s a -> s{_pspProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pspKey :: Lens' PlacementStrategiesPatch' (Maybe Text)
pspKey = lens _pspKey (\ s a -> s{_pspKey = a})

-- | Placement strategy ID.
pspId :: Lens' PlacementStrategiesPatch' Int64
pspId = lens _pspId (\ s a -> s{_pspId = a})

-- | OAuth 2.0 token for the current user.
pspOauthToken :: Lens' PlacementStrategiesPatch' (Maybe Text)
pspOauthToken
  = lens _pspOauthToken
      (\ s a -> s{_pspOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pspFields :: Lens' PlacementStrategiesPatch' (Maybe Text)
pspFields
  = lens _pspFields (\ s a -> s{_pspFields = a})

-- | Data format for the response.
pspAlt :: Lens' PlacementStrategiesPatch' Alt
pspAlt = lens _pspAlt (\ s a -> s{_pspAlt = a})

instance GoogleRequest PlacementStrategiesPatch'
         where
        type Rs PlacementStrategiesPatch' = PlacementStrategy
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementStrategiesPatch'{..}
          = go _pspQuotaUser (Just _pspPrettyPrint) _pspUserIp
              _pspProfileId
              _pspKey
              (Just _pspId)
              _pspOauthToken
              _pspFields
              (Just _pspAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PlacementStrategiesPatchAPI)
                      r
                      u
