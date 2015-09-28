{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Placements.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one placement by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.placements.get@.
module Network.Google.API.DFAReporting.Placements.Get
    (
    -- * REST Resource
      PlacementsGetAPI

    -- * Creating a Request
    , placementsGet'
    , PlacementsGet'

    -- * Request Lenses
    , plalQuotaUser
    , plalPrettyPrint
    , plalUserIp
    , plalProfileId
    , plalKey
    , plalId
    , plalOauthToken
    , plalFields
    , plalAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.placements.get which the
-- 'PlacementsGet'' request conforms to.
type PlacementsGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "placements" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Placement

-- | Gets one placement by ID.
--
-- /See:/ 'placementsGet'' smart constructor.
data PlacementsGet' = PlacementsGet'
    { _plalQuotaUser   :: !(Maybe Text)
    , _plalPrettyPrint :: !Bool
    , _plalUserIp      :: !(Maybe Text)
    , _plalProfileId   :: !Int64
    , _plalKey         :: !(Maybe Text)
    , _plalId          :: !Int64
    , _plalOauthToken  :: !(Maybe Text)
    , _plalFields      :: !(Maybe Text)
    , _plalAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PlacementsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plalQuotaUser'
--
-- * 'plalPrettyPrint'
--
-- * 'plalUserIp'
--
-- * 'plalProfileId'
--
-- * 'plalKey'
--
-- * 'plalId'
--
-- * 'plalOauthToken'
--
-- * 'plalFields'
--
-- * 'plalAlt'
placementsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> PlacementsGet'
placementsGet' pPlalProfileId_ pPlalId_ =
    PlacementsGet'
    { _plalQuotaUser = Nothing
    , _plalPrettyPrint = True
    , _plalUserIp = Nothing
    , _plalProfileId = pPlalProfileId_
    , _plalKey = Nothing
    , _plalId = pPlalId_
    , _plalOauthToken = Nothing
    , _plalFields = Nothing
    , _plalAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plalQuotaUser :: Lens' PlacementsGet' (Maybe Text)
plalQuotaUser
  = lens _plalQuotaUser
      (\ s a -> s{_plalQuotaUser = a})

-- | Returns response with indentations and line breaks.
plalPrettyPrint :: Lens' PlacementsGet' Bool
plalPrettyPrint
  = lens _plalPrettyPrint
      (\ s a -> s{_plalPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plalUserIp :: Lens' PlacementsGet' (Maybe Text)
plalUserIp
  = lens _plalUserIp (\ s a -> s{_plalUserIp = a})

-- | User profile ID associated with this request.
plalProfileId :: Lens' PlacementsGet' Int64
plalProfileId
  = lens _plalProfileId
      (\ s a -> s{_plalProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plalKey :: Lens' PlacementsGet' (Maybe Text)
plalKey = lens _plalKey (\ s a -> s{_plalKey = a})

-- | Placement ID.
plalId :: Lens' PlacementsGet' Int64
plalId = lens _plalId (\ s a -> s{_plalId = a})

-- | OAuth 2.0 token for the current user.
plalOauthToken :: Lens' PlacementsGet' (Maybe Text)
plalOauthToken
  = lens _plalOauthToken
      (\ s a -> s{_plalOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
plalFields :: Lens' PlacementsGet' (Maybe Text)
plalFields
  = lens _plalFields (\ s a -> s{_plalFields = a})

-- | Data format for the response.
plalAlt :: Lens' PlacementsGet' Alt
plalAlt = lens _plalAlt (\ s a -> s{_plalAlt = a})

instance GoogleRequest PlacementsGet' where
        type Rs PlacementsGet' = Placement
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u PlacementsGet'{..}
          = go _plalQuotaUser (Just _plalPrettyPrint)
              _plalUserIp
              _plalProfileId
              _plalKey
              _plalId
              _plalOauthToken
              _plalFields
              (Just _plalAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy PlacementsGetAPI) r
                      u
