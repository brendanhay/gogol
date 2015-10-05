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
-- Module      : Network.Google.Resource.Coordinate.Jobs.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves jobs created or modified since the given timestamp.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @CoordinateJobsList@.
module Network.Google.Resource.Coordinate.Jobs.List
    (
    -- * REST Resource
      JobsListResource

    -- * Creating a Request
    , jobsList'
    , JobsList'

    -- * Request Lenses
    , jlQuotaUser
    , jlPrettyPrint
    , jlUserIP
    , jlTeamId
    , jlMinModifiedTimestampMs
    , jlKey
    , jlOmitJobChanges
    , jlPageToken
    , jlOAuthToken
    , jlMaxResults
    , jlFields
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @CoordinateJobsList@ which the
-- 'JobsList'' request conforms to.
type JobsListResource =
     "teams" :>
       Capture "teamId" Text :>
         "jobs" :>
           QueryParam "minModifiedTimestampMs" Word64 :>
             QueryParam "omitJobChanges" Bool :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] JobListResponse

-- | Retrieves jobs created or modified since the given timestamp.
--
-- /See:/ 'jobsList'' smart constructor.
data JobsList' = JobsList'
    { _jlQuotaUser              :: !(Maybe Text)
    , _jlPrettyPrint            :: !Bool
    , _jlUserIP                 :: !(Maybe Text)
    , _jlTeamId                 :: !Text
    , _jlMinModifiedTimestampMs :: !(Maybe Word64)
    , _jlKey                    :: !(Maybe AuthKey)
    , _jlOmitJobChanges         :: !(Maybe Bool)
    , _jlPageToken              :: !(Maybe Text)
    , _jlOAuthToken             :: !(Maybe OAuthToken)
    , _jlMaxResults             :: !(Maybe Word32)
    , _jlFields                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jlQuotaUser'
--
-- * 'jlPrettyPrint'
--
-- * 'jlUserIP'
--
-- * 'jlTeamId'
--
-- * 'jlMinModifiedTimestampMs'
--
-- * 'jlKey'
--
-- * 'jlOmitJobChanges'
--
-- * 'jlPageToken'
--
-- * 'jlOAuthToken'
--
-- * 'jlMaxResults'
--
-- * 'jlFields'
jobsList'
    :: Text -- ^ 'teamId'
    -> JobsList'
jobsList' pJlTeamId_ =
    JobsList'
    { _jlQuotaUser = Nothing
    , _jlPrettyPrint = True
    , _jlUserIP = Nothing
    , _jlTeamId = pJlTeamId_
    , _jlMinModifiedTimestampMs = Nothing
    , _jlKey = Nothing
    , _jlOmitJobChanges = Nothing
    , _jlPageToken = Nothing
    , _jlOAuthToken = Nothing
    , _jlMaxResults = Nothing
    , _jlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
jlQuotaUser :: Lens' JobsList' (Maybe Text)
jlQuotaUser
  = lens _jlQuotaUser (\ s a -> s{_jlQuotaUser = a})

-- | Returns response with indentations and line breaks.
jlPrettyPrint :: Lens' JobsList' Bool
jlPrettyPrint
  = lens _jlPrettyPrint
      (\ s a -> s{_jlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
jlUserIP :: Lens' JobsList' (Maybe Text)
jlUserIP = lens _jlUserIP (\ s a -> s{_jlUserIP = a})

-- | Team ID
jlTeamId :: Lens' JobsList' Text
jlTeamId = lens _jlTeamId (\ s a -> s{_jlTeamId = a})

-- | Minimum time a job was modified in milliseconds since epoch.
jlMinModifiedTimestampMs :: Lens' JobsList' (Maybe Word64)
jlMinModifiedTimestampMs
  = lens _jlMinModifiedTimestampMs
      (\ s a -> s{_jlMinModifiedTimestampMs = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
jlKey :: Lens' JobsList' (Maybe AuthKey)
jlKey = lens _jlKey (\ s a -> s{_jlKey = a})

-- | Whether to omit detail job history information.
jlOmitJobChanges :: Lens' JobsList' (Maybe Bool)
jlOmitJobChanges
  = lens _jlOmitJobChanges
      (\ s a -> s{_jlOmitJobChanges = a})

-- | Continuation token
jlPageToken :: Lens' JobsList' (Maybe Text)
jlPageToken
  = lens _jlPageToken (\ s a -> s{_jlPageToken = a})

-- | OAuth 2.0 token for the current user.
jlOAuthToken :: Lens' JobsList' (Maybe OAuthToken)
jlOAuthToken
  = lens _jlOAuthToken (\ s a -> s{_jlOAuthToken = a})

-- | Maximum number of results to return in one page.
jlMaxResults :: Lens' JobsList' (Maybe Word32)
jlMaxResults
  = lens _jlMaxResults (\ s a -> s{_jlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
jlFields :: Lens' JobsList' (Maybe Text)
jlFields = lens _jlFields (\ s a -> s{_jlFields = a})

instance GoogleAuth JobsList' where
        authKey = jlKey . _Just
        authToken = jlOAuthToken . _Just

instance GoogleRequest JobsList' where
        type Rs JobsList' = JobListResponse
        request = requestWithRoute defReq mapsCoordinateURL
        requestWithRoute r u JobsList'{..}
          = go _jlTeamId _jlMinModifiedTimestampMs
              _jlOmitJobChanges
              _jlPageToken
              _jlMaxResults
              _jlQuotaUser
              (Just _jlPrettyPrint)
              _jlUserIP
              _jlFields
              _jlKey
              _jlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy JobsListResource) r
                      u
