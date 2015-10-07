{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Coordinate.Team.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of teams for a user.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @CoordinateTeamList@.
module Network.Google.Resource.Coordinate.Team.List
    (
    -- * REST Resource
      TeamListResource

    -- * Creating a Request
    , teamList'
    , TeamList'

    -- * Request Lenses
    , tlQuotaUser
    , tlDispatcher
    , tlPrettyPrint
    , tlAdmin
    , tlUserIP
    , tlKey
    , tlOAuthToken
    , tlWorker
    , tlFields
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateTeamList@ method which the
-- 'TeamList'' request conforms to.
type TeamListResource =
     "teams" :>
       QueryParam "dispatcher" Bool :>
         QueryParam "admin" Bool :>
           QueryParam "worker" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] TeamListResponse

-- | Retrieves a list of teams for a user.
--
-- /See:/ 'teamList'' smart constructor.
data TeamList' = TeamList'
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlDispatcher  :: !(Maybe Bool)
    , _tlPrettyPrint :: !Bool
    , _tlAdmin       :: !(Maybe Bool)
    , _tlUserIP      :: !(Maybe Text)
    , _tlKey         :: !(Maybe AuthKey)
    , _tlOAuthToken  :: !(Maybe OAuthToken)
    , _tlWorker      :: !(Maybe Bool)
    , _tlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TeamList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlDispatcher'
--
-- * 'tlPrettyPrint'
--
-- * 'tlAdmin'
--
-- * 'tlUserIP'
--
-- * 'tlKey'
--
-- * 'tlOAuthToken'
--
-- * 'tlWorker'
--
-- * 'tlFields'
teamList'
    :: TeamList'
teamList' =
    TeamList'
    { _tlQuotaUser = Nothing
    , _tlDispatcher = Nothing
    , _tlPrettyPrint = True
    , _tlAdmin = Nothing
    , _tlUserIP = Nothing
    , _tlKey = Nothing
    , _tlOAuthToken = Nothing
    , _tlWorker = Nothing
    , _tlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TeamList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Whether to include teams for which the user has the Dispatcher role.
tlDispatcher :: Lens' TeamList' (Maybe Bool)
tlDispatcher
  = lens _tlDispatcher (\ s a -> s{_tlDispatcher = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TeamList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | Whether to include teams for which the user has the Admin role.
tlAdmin :: Lens' TeamList' (Maybe Bool)
tlAdmin = lens _tlAdmin (\ s a -> s{_tlAdmin = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIP :: Lens' TeamList' (Maybe Text)
tlUserIP = lens _tlUserIP (\ s a -> s{_tlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TeamList' (Maybe AuthKey)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | OAuth 2.0 token for the current user.
tlOAuthToken :: Lens' TeamList' (Maybe OAuthToken)
tlOAuthToken
  = lens _tlOAuthToken (\ s a -> s{_tlOAuthToken = a})

-- | Whether to include teams for which the user has the Worker role.
tlWorker :: Lens' TeamList' (Maybe Bool)
tlWorker = lens _tlWorker (\ s a -> s{_tlWorker = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TeamList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

instance GoogleAuth TeamList' where
        _AuthKey = tlKey . _Just
        _AuthToken = tlOAuthToken . _Just

instance GoogleRequest TeamList' where
        type Rs TeamList' = TeamListResponse
        request = requestWith mapsCoordinateRequest
        requestWith rq TeamList'{..}
          = go _tlDispatcher _tlAdmin _tlWorker _tlQuotaUser
              (Just _tlPrettyPrint)
              _tlUserIP
              _tlFields
              _tlKey
              _tlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TeamListResource) rq
