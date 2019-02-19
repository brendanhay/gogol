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
-- Module      : Network.Google.Resource.ReplicaPool.Pools.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all replica pools.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.pools.list@.
module Network.Google.Resource.ReplicaPool.Pools.List
    (
    -- * REST Resource
      PoolsListResource

    -- * Creating a Request
    , poolsList
    , PoolsList

    -- * Request Lenses
    , plZone
    , plProjectName
    , plPageToken
    , plMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.list@ method which the
-- 'PoolsList' request conforms to.
type PoolsListResource =
     "replicapool" :>
       "v1beta1" :>
         "projects" :>
           Capture "projectName" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "pools" :>
                   QueryParam "pageToken" Text :>
                     QueryParam "maxResults" (Textual Int32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PoolsListResponse

-- | List all replica pools.
--
-- /See:/ 'poolsList' smart constructor.
data PoolsList =
  PoolsList'
    { _plZone        :: !Text
    , _plProjectName :: !Text
    , _plPageToken   :: !(Maybe Text)
    , _plMaxResults  :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoolsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plZone'
--
-- * 'plProjectName'
--
-- * 'plPageToken'
--
-- * 'plMaxResults'
poolsList
    :: Text -- ^ 'plZone'
    -> Text -- ^ 'plProjectName'
    -> PoolsList
poolsList pPlZone_ pPlProjectName_ =
  PoolsList'
    { _plZone = pPlZone_
    , _plProjectName = pPlProjectName_
    , _plPageToken = Nothing
    , _plMaxResults = 500
    }


-- | The zone for this replica pool.
plZone :: Lens' PoolsList Text
plZone = lens _plZone (\ s a -> s{_plZone = a})

-- | The project ID for this request.
plProjectName :: Lens' PoolsList Text
plProjectName
  = lens _plProjectName
      (\ s a -> s{_plProjectName = a})

-- | Set this to the nextPageToken value returned by a previous list request
-- to obtain the next page of results from the previous list request.
plPageToken :: Lens' PoolsList (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | Maximum count of results to be returned. Acceptable values are 0 to 100,
-- inclusive. (Default: 50)
plMaxResults :: Lens' PoolsList Int32
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})
      . _Coerce

instance GoogleRequest PoolsList where
        type Rs PoolsList = PoolsListResponse
        type Scopes PoolsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly",
               "https://www.googleapis.com/auth/replicapool",
               "https://www.googleapis.com/auth/replicapool.readonly"]
        requestClient PoolsList'{..}
          = go _plProjectName _plZone _plPageToken
              (Just _plMaxResults)
              (Just AltJSON)
              replicaPoolService
          where go
                  = buildClient (Proxy :: Proxy PoolsListResource)
                      mempty
