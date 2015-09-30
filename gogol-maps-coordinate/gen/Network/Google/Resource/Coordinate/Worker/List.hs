{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Coordinate.Worker.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of workers in a team.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @CoordinateWorkerList@.
module Coordinate.Worker.List
    (
    -- * REST Resource
      WorkerListAPI

    -- * Creating a Request
    , workerList
    , WorkerList

    -- * Request Lenses
    , wlQuotaUser
    , wlPrettyPrint
    , wlUserIp
    , wlTeamId
    , wlKey
    , wlOauthToken
    , wlFields
    , wlAlt
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateWorkerList@ which the
-- 'WorkerList' request conforms to.
type WorkerListAPI =
     "teams" :>
       Capture "teamId" Text :>
         "workers" :> Get '[JSON] WorkerListResponse

-- | Retrieves a list of workers in a team.
--
-- /See:/ 'workerList' smart constructor.
data WorkerList = WorkerList
    { _wlQuotaUser   :: !(Maybe Text)
    , _wlPrettyPrint :: !Bool
    , _wlUserIp      :: !(Maybe Text)
    , _wlTeamId      :: !Text
    , _wlKey         :: !(Maybe Text)
    , _wlOauthToken  :: !(Maybe Text)
    , _wlFields      :: !(Maybe Text)
    , _wlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkerList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlQuotaUser'
--
-- * 'wlPrettyPrint'
--
-- * 'wlUserIp'
--
-- * 'wlTeamId'
--
-- * 'wlKey'
--
-- * 'wlOauthToken'
--
-- * 'wlFields'
--
-- * 'wlAlt'
workerList
    :: Text -- ^ 'teamId'
    -> WorkerList
workerList pWlTeamId_ =
    WorkerList
    { _wlQuotaUser = Nothing
    , _wlPrettyPrint = True
    , _wlUserIp = Nothing
    , _wlTeamId = pWlTeamId_
    , _wlKey = Nothing
    , _wlOauthToken = Nothing
    , _wlFields = Nothing
    , _wlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
wlQuotaUser :: Lens' WorkerList' (Maybe Text)
wlQuotaUser
  = lens _wlQuotaUser (\ s a -> s{_wlQuotaUser = a})

-- | Returns response with indentations and line breaks.
wlPrettyPrint :: Lens' WorkerList' Bool
wlPrettyPrint
  = lens _wlPrettyPrint
      (\ s a -> s{_wlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
wlUserIp :: Lens' WorkerList' (Maybe Text)
wlUserIp = lens _wlUserIp (\ s a -> s{_wlUserIp = a})

-- | Team ID
wlTeamId :: Lens' WorkerList' Text
wlTeamId = lens _wlTeamId (\ s a -> s{_wlTeamId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wlKey :: Lens' WorkerList' (Maybe Text)
wlKey = lens _wlKey (\ s a -> s{_wlKey = a})

-- | OAuth 2.0 token for the current user.
wlOauthToken :: Lens' WorkerList' (Maybe Text)
wlOauthToken
  = lens _wlOauthToken (\ s a -> s{_wlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
wlFields :: Lens' WorkerList' (Maybe Text)
wlFields = lens _wlFields (\ s a -> s{_wlFields = a})

-- | Data format for the response.
wlAlt :: Lens' WorkerList' Text
wlAlt = lens _wlAlt (\ s a -> s{_wlAlt = a})

instance GoogleRequest WorkerList' where
        type Rs WorkerList' = WorkerListResponse
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u WorkerList{..}
          = go _wlQuotaUser _wlPrettyPrint _wlUserIp _wlTeamId
              _wlKey
              _wlOauthToken
              _wlFields
              _wlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy WorkerListAPI) r u
