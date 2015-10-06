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
-- Module      : Network.Google.Resource.Coordinate.Location.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of locations for a worker.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @CoordinateLocationList@.
module Network.Google.Resource.Coordinate.Location.List
    (
    -- * REST Resource
      LocationListResource

    -- * Creating a Request
    , locationList'
    , LocationList'

    -- * Request Lenses
    , llQuotaUser
    , llPrettyPrint
    , llWorkerEmail
    , llUserIP
    , llStartTimestampMs
    , llTeamId
    , llKey
    , llPageToken
    , llOAuthToken
    , llMaxResults
    , llFields
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateLocationList@ which the
-- 'LocationList'' request conforms to.
type LocationListResource =
     "teams" :>
       Capture "teamId" Text :>
         "workers" :>
           Capture "workerEmail" Text :>
             "locations" :>
               QueryParam "startTimestampMs" Word64 :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] LocationListResponse

-- | Retrieves a list of locations for a worker.
--
-- /See:/ 'locationList'' smart constructor.
data LocationList' = LocationList'
    { _llQuotaUser        :: !(Maybe Text)
    , _llPrettyPrint      :: !Bool
    , _llWorkerEmail      :: !Text
    , _llUserIP           :: !(Maybe Text)
    , _llStartTimestampMs :: !Word64
    , _llTeamId           :: !Text
    , _llKey              :: !(Maybe AuthKey)
    , _llPageToken        :: !(Maybe Text)
    , _llOAuthToken       :: !(Maybe OAuthToken)
    , _llMaxResults       :: !(Maybe Word32)
    , _llFields           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llQuotaUser'
--
-- * 'llPrettyPrint'
--
-- * 'llWorkerEmail'
--
-- * 'llUserIP'
--
-- * 'llStartTimestampMs'
--
-- * 'llTeamId'
--
-- * 'llKey'
--
-- * 'llPageToken'
--
-- * 'llOAuthToken'
--
-- * 'llMaxResults'
--
-- * 'llFields'
locationList'
    :: Text -- ^ 'workerEmail'
    -> Word64 -- ^ 'startTimestampMs'
    -> Text -- ^ 'teamId'
    -> LocationList'
locationList' pLlWorkerEmail_ pLlStartTimestampMs_ pLlTeamId_ =
    LocationList'
    { _llQuotaUser = Nothing
    , _llPrettyPrint = True
    , _llWorkerEmail = pLlWorkerEmail_
    , _llUserIP = Nothing
    , _llStartTimestampMs = pLlStartTimestampMs_
    , _llTeamId = pLlTeamId_
    , _llKey = Nothing
    , _llPageToken = Nothing
    , _llOAuthToken = Nothing
    , _llMaxResults = Nothing
    , _llFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
llQuotaUser :: Lens' LocationList' (Maybe Text)
llQuotaUser
  = lens _llQuotaUser (\ s a -> s{_llQuotaUser = a})

-- | Returns response with indentations and line breaks.
llPrettyPrint :: Lens' LocationList' Bool
llPrettyPrint
  = lens _llPrettyPrint
      (\ s a -> s{_llPrettyPrint = a})

-- | Worker email address.
llWorkerEmail :: Lens' LocationList' Text
llWorkerEmail
  = lens _llWorkerEmail
      (\ s a -> s{_llWorkerEmail = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
llUserIP :: Lens' LocationList' (Maybe Text)
llUserIP = lens _llUserIP (\ s a -> s{_llUserIP = a})

-- | Start timestamp in milliseconds since the epoch.
llStartTimestampMs :: Lens' LocationList' Word64
llStartTimestampMs
  = lens _llStartTimestampMs
      (\ s a -> s{_llStartTimestampMs = a})

-- | Team ID
llTeamId :: Lens' LocationList' Text
llTeamId = lens _llTeamId (\ s a -> s{_llTeamId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
llKey :: Lens' LocationList' (Maybe AuthKey)
llKey = lens _llKey (\ s a -> s{_llKey = a})

-- | Continuation token
llPageToken :: Lens' LocationList' (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | OAuth 2.0 token for the current user.
llOAuthToken :: Lens' LocationList' (Maybe OAuthToken)
llOAuthToken
  = lens _llOAuthToken (\ s a -> s{_llOAuthToken = a})

-- | Maximum number of results to return in one page.
llMaxResults :: Lens' LocationList' (Maybe Word32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
llFields :: Lens' LocationList' (Maybe Text)
llFields = lens _llFields (\ s a -> s{_llFields = a})

instance GoogleAuth LocationList' where
        authKey = llKey . _Just
        authToken = llOAuthToken . _Just

instance GoogleRequest LocationList' where
        type Rs LocationList' = LocationListResponse
        request = requestWith mapsCoordinateRequest
        requestWith rq LocationList'{..}
          = go _llTeamId _llWorkerEmail
              (Just _llStartTimestampMs)
              _llPageToken
              _llMaxResults
              _llQuotaUser
              (Just _llPrettyPrint)
              _llUserIP
              _llFields
              _llKey
              _llOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy LocationListResource)
                      rq
