{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Coordinate.Worker.List
    (
    -- * REST Resource
      WorkerListResource

    -- * Creating a Request
    , workerList'
    , WorkerList'

    -- * Request Lenses
    , wlQuotaUser
    , wlPrettyPrint
    , wlUserIP
    , wlTeamId
    , wlKey
    , wlOAuthToken
    , wlFields
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateWorkerList@ which the
-- 'WorkerList'' request conforms to.
type WorkerListResource =
     "teams" :>
       Capture "teamId" Text :>
         "workers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] WorkerListResponse

-- | Retrieves a list of workers in a team.
--
-- /See:/ 'workerList'' smart constructor.
data WorkerList' = WorkerList'
    { _wlQuotaUser   :: !(Maybe Text)
    , _wlPrettyPrint :: !Bool
    , _wlUserIP      :: !(Maybe Text)
    , _wlTeamId      :: !Text
    , _wlKey         :: !(Maybe Key)
    , _wlOAuthToken  :: !(Maybe OAuthToken)
    , _wlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkerList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlQuotaUser'
--
-- * 'wlPrettyPrint'
--
-- * 'wlUserIP'
--
-- * 'wlTeamId'
--
-- * 'wlKey'
--
-- * 'wlOAuthToken'
--
-- * 'wlFields'
workerList'
    :: Text -- ^ 'teamId'
    -> WorkerList'
workerList' pWlTeamId_ =
    WorkerList'
    { _wlQuotaUser = Nothing
    , _wlPrettyPrint = True
    , _wlUserIP = Nothing
    , _wlTeamId = pWlTeamId_
    , _wlKey = Nothing
    , _wlOAuthToken = Nothing
    , _wlFields = Nothing
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
wlUserIP :: Lens' WorkerList' (Maybe Text)
wlUserIP = lens _wlUserIP (\ s a -> s{_wlUserIP = a})

-- | Team ID
wlTeamId :: Lens' WorkerList' Text
wlTeamId = lens _wlTeamId (\ s a -> s{_wlTeamId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
wlKey :: Lens' WorkerList' (Maybe Key)
wlKey = lens _wlKey (\ s a -> s{_wlKey = a})

-- | OAuth 2.0 token for the current user.
wlOAuthToken :: Lens' WorkerList' (Maybe OAuthToken)
wlOAuthToken
  = lens _wlOAuthToken (\ s a -> s{_wlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
wlFields :: Lens' WorkerList' (Maybe Text)
wlFields = lens _wlFields (\ s a -> s{_wlFields = a})

instance GoogleAuth WorkerList' where
        authKey = wlKey . _Just
        authToken = wlOAuthToken . _Just

instance GoogleRequest WorkerList' where
        type Rs WorkerList' = WorkerListResponse
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u WorkerList'{..}
          = go _wlTeamId _wlQuotaUser (Just _wlPrettyPrint)
              _wlUserIP
              _wlFields
              _wlKey
              _wlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy WorkerListResource)
                      r
                      u
