{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Coordinate.Location.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of locations for a worker.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.location.list@.
module Network.Google.API.Coordinate.Location.List
    (
    -- * REST Resource
      LocationListAPI

    -- * Creating a Request
    , locationList'
    , LocationList'

    -- * Request Lenses
    , llQuotaUser
    , llPrettyPrint
    , llWorkerEmail
    , llUserIp
    , llStartTimestampMs
    , llTeamId
    , llKey
    , llPageToken
    , llOauthToken
    , llMaxResults
    , llFields
    , llAlt
    ) where

import           Network.Google.Maps.Coordinate.Types
import           Network.Google.Prelude

-- | A resource alias for coordinate.location.list which the
-- 'LocationList'' request conforms to.
type LocationListAPI =
     "teams" :>
       Capture "teamId" Text :>
         "workers" :>
           Capture "workerEmail" Text :>
             "locations" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "startTimestampMs" Word64 :>
                       QueryParam "key" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Word32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :>
                                   Get '[JSON] LocationListResponse

-- | Retrieves a list of locations for a worker.
--
-- /See:/ 'locationList'' smart constructor.
data LocationList' = LocationList'
    { _llQuotaUser        :: !(Maybe Text)
    , _llPrettyPrint      :: !Bool
    , _llWorkerEmail      :: !Text
    , _llUserIp           :: !(Maybe Text)
    , _llStartTimestampMs :: !Word64
    , _llTeamId           :: !Text
    , _llKey              :: !(Maybe Text)
    , _llPageToken        :: !(Maybe Text)
    , _llOauthToken       :: !(Maybe Text)
    , _llMaxResults       :: !(Maybe Word32)
    , _llFields           :: !(Maybe Text)
    , _llAlt              :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'llUserIp'
--
-- * 'llStartTimestampMs'
--
-- * 'llTeamId'
--
-- * 'llKey'
--
-- * 'llPageToken'
--
-- * 'llOauthToken'
--
-- * 'llMaxResults'
--
-- * 'llFields'
--
-- * 'llAlt'
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
    , _llUserIp = Nothing
    , _llStartTimestampMs = pLlStartTimestampMs_
    , _llTeamId = pLlTeamId_
    , _llKey = Nothing
    , _llPageToken = Nothing
    , _llOauthToken = Nothing
    , _llMaxResults = Nothing
    , _llFields = Nothing
    , _llAlt = JSON
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
llUserIp :: Lens' LocationList' (Maybe Text)
llUserIp = lens _llUserIp (\ s a -> s{_llUserIp = a})

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
llKey :: Lens' LocationList' (Maybe Text)
llKey = lens _llKey (\ s a -> s{_llKey = a})

-- | Continuation token
llPageToken :: Lens' LocationList' (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | OAuth 2.0 token for the current user.
llOauthToken :: Lens' LocationList' (Maybe Text)
llOauthToken
  = lens _llOauthToken (\ s a -> s{_llOauthToken = a})

-- | Maximum number of results to return in one page.
llMaxResults :: Lens' LocationList' (Maybe Word32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
llFields :: Lens' LocationList' (Maybe Text)
llFields = lens _llFields (\ s a -> s{_llFields = a})

-- | Data format for the response.
llAlt :: Lens' LocationList' Alt
llAlt = lens _llAlt (\ s a -> s{_llAlt = a})

instance GoogleRequest LocationList' where
        type Rs LocationList' = LocationListResponse
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u LocationList'{..}
          = go _llQuotaUser (Just _llPrettyPrint)
              _llWorkerEmail
              _llUserIp
              (Just _llStartTimestampMs)
              _llTeamId
              _llKey
              _llPageToken
              _llOauthToken
              _llMaxResults
              _llFields
              (Just _llAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy LocationListAPI) r
                      u
