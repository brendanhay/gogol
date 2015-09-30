{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Placements.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one placement by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingPlacementsGet@.
module DFAReporting.Placements.Get
    (
    -- * REST Resource
      PlacementsGetAPI

    -- * Creating a Request
    , placementsGet
    , PlacementsGet

    -- * Request Lenses
    , pggQuotaUser
    , pggPrettyPrint
    , pggUserIp
    , pggProfileId
    , pggKey
    , pggId
    , pggOauthToken
    , pggFields
    , pggAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingPlacementsGet@ which the
-- 'PlacementsGet' request conforms to.
type PlacementsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           Capture "id" Int64 :> Get '[JSON] Placement

-- | Gets one placement by ID.
--
-- /See:/ 'placementsGet' smart constructor.
data PlacementsGet = PlacementsGet
    { _pggQuotaUser   :: !(Maybe Text)
    , _pggPrettyPrint :: !Bool
    , _pggUserIp      :: !(Maybe Text)
    , _pggProfileId   :: !Int64
    , _pggKey         :: !(Maybe Text)
    , _pggId          :: !Int64
    , _pggOauthToken  :: !(Maybe Text)
    , _pggFields      :: !(Maybe Text)
    , _pggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pggQuotaUser'
--
-- * 'pggPrettyPrint'
--
-- * 'pggUserIp'
--
-- * 'pggProfileId'
--
-- * 'pggKey'
--
-- * 'pggId'
--
-- * 'pggOauthToken'
--
-- * 'pggFields'
--
-- * 'pggAlt'
placementsGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementsGet
placementsGet pPggProfileId_ pPggId_ =
    PlacementsGet
    { _pggQuotaUser = Nothing
    , _pggPrettyPrint = True
    , _pggUserIp = Nothing
    , _pggProfileId = pPggProfileId_
    , _pggKey = Nothing
    , _pggId = pPggId_
    , _pggOauthToken = Nothing
    , _pggFields = Nothing
    , _pggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pggQuotaUser :: Lens' PlacementsGet' (Maybe Text)
pggQuotaUser
  = lens _pggQuotaUser (\ s a -> s{_pggQuotaUser = a})

-- | Returns response with indentations and line breaks.
pggPrettyPrint :: Lens' PlacementsGet' Bool
pggPrettyPrint
  = lens _pggPrettyPrint
      (\ s a -> s{_pggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pggUserIp :: Lens' PlacementsGet' (Maybe Text)
pggUserIp
  = lens _pggUserIp (\ s a -> s{_pggUserIp = a})

-- | User profile ID associated with this request.
pggProfileId :: Lens' PlacementsGet' Int64
pggProfileId
  = lens _pggProfileId (\ s a -> s{_pggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pggKey :: Lens' PlacementsGet' (Maybe Text)
pggKey = lens _pggKey (\ s a -> s{_pggKey = a})

-- | Placement ID.
pggId :: Lens' PlacementsGet' Int64
pggId = lens _pggId (\ s a -> s{_pggId = a})

-- | OAuth 2.0 token for the current user.
pggOauthToken :: Lens' PlacementsGet' (Maybe Text)
pggOauthToken
  = lens _pggOauthToken
      (\ s a -> s{_pggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pggFields :: Lens' PlacementsGet' (Maybe Text)
pggFields
  = lens _pggFields (\ s a -> s{_pggFields = a})

-- | Data format for the response.
pggAlt :: Lens' PlacementsGet' Text
pggAlt = lens _pggAlt (\ s a -> s{_pggAlt = a})

instance GoogleRequest PlacementsGet' where
        type Rs PlacementsGet' = Placement
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsGet{..}
          = go _pggQuotaUser _pggPrettyPrint _pggUserIp
              _pggProfileId
              _pggKey
              _pggId
              _pggOauthToken
              _pggFields
              _pggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PlacementsGetAPI) r
                      u
