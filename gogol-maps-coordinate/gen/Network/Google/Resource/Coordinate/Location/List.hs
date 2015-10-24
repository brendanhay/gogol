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
-- Retrieves a list of locations for a worker.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.location.list@.
module Network.Google.Resource.Coordinate.Location.List
    (
    -- * REST Resource
      LocationListResource

    -- * Creating a Request
    , locationList
    , LocationList

    -- * Request Lenses
    , llWorkerEmail
    , llStartTimestampMs
    , llTeamId
    , llPageToken
    , llMaxResults
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @coordinate.location.list@ method which the
-- 'LocationList' request conforms to.
type LocationListResource =
     "coordinate" :>
       "v1" :>
         "teams" :>
           Capture "teamId" Text :>
             "workers" :>
               Capture "workerEmail" Text :>
                 "locations" :>
                   QueryParam "startTimestampMs" (Textual Word64) :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] LocationListResponse

-- | Retrieves a list of locations for a worker.
--
-- /See:/ 'locationList' smart constructor.
data LocationList = LocationList
    { _llWorkerEmail      :: !Text
    , _llStartTimestampMs :: !(Textual Word64)
    , _llTeamId           :: !Text
    , _llPageToken        :: !(Maybe Text)
    , _llMaxResults       :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LocationList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'llWorkerEmail'
--
-- * 'llStartTimestampMs'
--
-- * 'llTeamId'
--
-- * 'llPageToken'
--
-- * 'llMaxResults'
locationList
    :: Text -- ^ 'llWorkerEmail'
    -> Word64 -- ^ 'llStartTimestampMs'
    -> Text -- ^ 'llTeamId'
    -> LocationList
locationList pLlWorkerEmail_ pLlStartTimestampMs_ pLlTeamId_ =
    LocationList
    { _llWorkerEmail = pLlWorkerEmail_
    , _llStartTimestampMs = _Coerce # pLlStartTimestampMs_
    , _llTeamId = pLlTeamId_
    , _llPageToken = Nothing
    , _llMaxResults = Nothing
    }

-- | Worker email address.
llWorkerEmail :: Lens' LocationList Text
llWorkerEmail
  = lens _llWorkerEmail
      (\ s a -> s{_llWorkerEmail = a})

-- | Start timestamp in milliseconds since the epoch.
llStartTimestampMs :: Lens' LocationList Word64
llStartTimestampMs
  = lens _llStartTimestampMs
      (\ s a -> s{_llStartTimestampMs = a})
      . _Coerce

-- | Team ID
llTeamId :: Lens' LocationList Text
llTeamId = lens _llTeamId (\ s a -> s{_llTeamId = a})

-- | Continuation token
llPageToken :: Lens' LocationList (Maybe Text)
llPageToken
  = lens _llPageToken (\ s a -> s{_llPageToken = a})

-- | Maximum number of results to return in one page.
llMaxResults :: Lens' LocationList (Maybe Word32)
llMaxResults
  = lens _llMaxResults (\ s a -> s{_llMaxResults = a})
      . mapping _Coerce

instance GoogleRequest LocationList where
        type Rs LocationList = LocationListResponse
        requestClient LocationList{..}
          = go _llTeamId _llWorkerEmail
              (Just _llStartTimestampMs)
              _llPageToken
              _llMaxResults
              (Just AltJSON)
              mapsCoordinateService
          where go
                  = buildClient (Proxy :: Proxy LocationListResource)
                      mempty
