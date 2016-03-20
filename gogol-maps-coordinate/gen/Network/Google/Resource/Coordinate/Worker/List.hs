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
-- Module      : Network.Google.Resource.Coordinate.Worker.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of workers in a team.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.worker.list@.
module Network.Google.Resource.Coordinate.Worker.List
    (
    -- * REST Resource
      WorkerListResource

    -- * Creating a Request
    , workerList
    , WorkerList

    -- * Request Lenses
    , wlTeamId
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @coordinate.worker.list@ method which the
-- 'WorkerList' request conforms to.
type WorkerListResource =
     "coordinate" :>
       "v1" :>
         "teams" :>
           Capture "teamId" Text :>
             "workers" :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] WorkerListResponse

-- | Retrieves a list of workers in a team.
--
-- /See:/ 'workerList' smart constructor.
newtype WorkerList = WorkerList
    { _wlTeamId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkerList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wlTeamId'
workerList
    :: Text -- ^ 'wlTeamId'
    -> WorkerList
workerList pWlTeamId_ =
    WorkerList
    { _wlTeamId = pWlTeamId_
    }

-- | Team ID
wlTeamId :: Lens' WorkerList Text
wlTeamId = lens _wlTeamId (\ s a -> s{_wlTeamId = a})

instance GoogleRequest WorkerList where
        type Rs WorkerList = WorkerListResponse
        requestClient WorkerList{..}
          = go _wlTeamId (Just AltJSON) mapsCoordinateService
          where go
                  = buildClient (Proxy :: Proxy WorkerListResource)
                      mempty
