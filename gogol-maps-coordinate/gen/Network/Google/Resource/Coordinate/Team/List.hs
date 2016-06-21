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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of teams for a user.
--
-- /See:/ <https://developers.google.com/coordinate/ Google Maps Coordinate API Reference> for @coordinate.team.list@.
module Network.Google.Resource.Coordinate.Team.List
    (
    -- * REST Resource
      TeamListResource

    -- * Creating a Request
    , teamList
    , TeamList

    -- * Request Lenses
    , tlDispatcher
    , tlAdmin
    , tlWorker
    ) where

import           Network.Google.MapsCoordinate.Types
import           Network.Google.Prelude

-- | A resource alias for @coordinate.team.list@ method which the
-- 'TeamList' request conforms to.
type TeamListResource =
     "coordinate" :>
       "v1" :>
         "teams" :>
           QueryParam "dispatcher" Bool :>
             QueryParam "admin" Bool :>
               QueryParam "worker" Bool :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] TeamListResponse

-- | Retrieves a list of teams for a user.
--
-- /See:/ 'teamList' smart constructor.
data TeamList = TeamList'
    { _tlDispatcher :: !(Maybe Bool)
    , _tlAdmin      :: !(Maybe Bool)
    , _tlWorker     :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TeamList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlDispatcher'
--
-- * 'tlAdmin'
--
-- * 'tlWorker'
teamList
    :: TeamList
teamList =
    TeamList'
    { _tlDispatcher = Nothing
    , _tlAdmin = Nothing
    , _tlWorker = Nothing
    }

-- | Whether to include teams for which the user has the Dispatcher role.
tlDispatcher :: Lens' TeamList (Maybe Bool)
tlDispatcher
  = lens _tlDispatcher (\ s a -> s{_tlDispatcher = a})

-- | Whether to include teams for which the user has the Admin role.
tlAdmin :: Lens' TeamList (Maybe Bool)
tlAdmin = lens _tlAdmin (\ s a -> s{_tlAdmin = a})

-- | Whether to include teams for which the user has the Worker role.
tlWorker :: Lens' TeamList (Maybe Bool)
tlWorker = lens _tlWorker (\ s a -> s{_tlWorker = a})

instance GoogleRequest TeamList where
        type Rs TeamList = TeamListResponse
        type Scopes TeamList =
             '["https://www.googleapis.com/auth/coordinate",
               "https://www.googleapis.com/auth/coordinate.readonly"]
        requestClient TeamList'{..}
          = go _tlDispatcher _tlAdmin _tlWorker (Just AltJSON)
              mapsCoordinateService
          where go
                  = buildClient (Proxy :: Proxy TeamListResource)
                      mempty
