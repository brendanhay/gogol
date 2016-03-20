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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves jobs created or modified since the given timestamp.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.jobs.list@.
module Network.Google.Resource.Coordinate.Jobs.List
    (
    -- * REST Resource
      JobsListResource

    -- * Creating a Request
    , jobsList
    , JobsList

    -- * Request Lenses
    , jlTeamId
    , jlMinModifiedTimestampMs
    , jlOmitJobChanges
    , jlPageToken
    , jlMaxResults
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @coordinate.jobs.list@ method which the
-- 'JobsList' request conforms to.
type JobsListResource =
     "coordinate" :>
       "v1" :>
         "teams" :>
           Capture "teamId" Text :>
             "jobs" :>
               QueryParam "minModifiedTimestampMs" (Textual Word64)
                 :>
                 QueryParam "omitJobChanges" Bool :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Word32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] JobListResponse

-- | Retrieves jobs created or modified since the given timestamp.
--
-- /See:/ 'jobsList' smart constructor.
data JobsList = JobsList
    { _jlTeamId                 :: !Text
    , _jlMinModifiedTimestampMs :: !(Maybe (Textual Word64))
    , _jlOmitJobChanges         :: !(Maybe Bool)
    , _jlPageToken              :: !(Maybe Text)
    , _jlMaxResults             :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'JobsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jlTeamId'
--
-- * 'jlMinModifiedTimestampMs'
--
-- * 'jlOmitJobChanges'
--
-- * 'jlPageToken'
--
-- * 'jlMaxResults'
jobsList
    :: Text -- ^ 'jlTeamId'
    -> JobsList
jobsList pJlTeamId_ =
    JobsList
    { _jlTeamId = pJlTeamId_
    , _jlMinModifiedTimestampMs = Nothing
    , _jlOmitJobChanges = Nothing
    , _jlPageToken = Nothing
    , _jlMaxResults = Nothing
    }

-- | Team ID
jlTeamId :: Lens' JobsList Text
jlTeamId = lens _jlTeamId (\ s a -> s{_jlTeamId = a})

-- | Minimum time a job was modified in milliseconds since epoch.
jlMinModifiedTimestampMs :: Lens' JobsList (Maybe Word64)
jlMinModifiedTimestampMs
  = lens _jlMinModifiedTimestampMs
      (\ s a -> s{_jlMinModifiedTimestampMs = a})
      . mapping _Coerce

-- | Whether to omit detail job history information.
jlOmitJobChanges :: Lens' JobsList (Maybe Bool)
jlOmitJobChanges
  = lens _jlOmitJobChanges
      (\ s a -> s{_jlOmitJobChanges = a})

-- | Continuation token
jlPageToken :: Lens' JobsList (Maybe Text)
jlPageToken
  = lens _jlPageToken (\ s a -> s{_jlPageToken = a})

-- | Maximum number of results to return in one page.
jlMaxResults :: Lens' JobsList (Maybe Word32)
jlMaxResults
  = lens _jlMaxResults (\ s a -> s{_jlMaxResults = a})
      . mapping _Coerce

instance GoogleRequest JobsList where
        type Rs JobsList = JobListResponse
        requestClient JobsList{..}
          = go _jlTeamId _jlMinModifiedTimestampMs
              _jlOmitJobChanges
              _jlPageToken
              _jlMaxResults
              (Just AltJSON)
              mapsCoordinateService
          where go
                  = buildClient (Proxy :: Proxy JobsListResource)
                      mempty
