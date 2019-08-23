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
-- Module      : Network.Google.Resource.ReplicaPool.Replicas.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all replicas in a pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.replicas.list@.
module Network.Google.Resource.ReplicaPool.Replicas.List
    (
    -- * REST Resource
      ReplicasListResource

    -- * Creating a Request
    , replicasList
    , ReplicasList

    -- * Request Lenses
    , rlPoolName
    , rlZone
    , rlProjectName
    , rlPageToken
    , rlMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.replicas.list@ method which the
-- 'ReplicasList' request conforms to.
type ReplicasListResource =
     "replicapool" :>
       "v1beta1" :>
         "projects" :>
           Capture "projectName" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "pools" :>
                   Capture "poolName" Text :>
                     "replicas" :>
                       QueryParam "pageToken" Text :>
                         QueryParam "maxResults" (Textual Int32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ReplicasListResponse

-- | Lists all replicas in a pool.
--
-- /See:/ 'replicasList' smart constructor.
data ReplicasList =
  ReplicasList'
    { _rlPoolName    :: !Text
    , _rlZone        :: !Text
    , _rlProjectName :: !Text
    , _rlPageToken   :: !(Maybe Text)
    , _rlMaxResults  :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReplicasList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlPoolName'
--
-- * 'rlZone'
--
-- * 'rlProjectName'
--
-- * 'rlPageToken'
--
-- * 'rlMaxResults'
replicasList
    :: Text -- ^ 'rlPoolName'
    -> Text -- ^ 'rlZone'
    -> Text -- ^ 'rlProjectName'
    -> ReplicasList
replicasList pRlPoolName_ pRlZone_ pRlProjectName_ =
  ReplicasList'
    { _rlPoolName = pRlPoolName_
    , _rlZone = pRlZone_
    , _rlProjectName = pRlProjectName_
    , _rlPageToken = Nothing
    , _rlMaxResults = 500
    }


-- | The replica pool name for this request.
rlPoolName :: Lens' ReplicasList Text
rlPoolName
  = lens _rlPoolName (\ s a -> s{_rlPoolName = a})

-- | The zone where the replica pool lives.
rlZone :: Lens' ReplicasList Text
rlZone = lens _rlZone (\ s a -> s{_rlZone = a})

-- | The project ID for this request.
rlProjectName :: Lens' ReplicasList Text
rlProjectName
  = lens _rlProjectName
      (\ s a -> s{_rlProjectName = a})

-- | Set this to the nextPageToken value returned by a previous list request
-- to obtain the next page of results from the previous list request.
rlPageToken :: Lens' ReplicasList (Maybe Text)
rlPageToken
  = lens _rlPageToken (\ s a -> s{_rlPageToken = a})

-- | Maximum count of results to be returned. Acceptable values are 0 to 100,
-- inclusive. (Default: 50)
rlMaxResults :: Lens' ReplicasList Int32
rlMaxResults
  = lens _rlMaxResults (\ s a -> s{_rlMaxResults = a})
      . _Coerce

instance GoogleRequest ReplicasList where
        type Rs ReplicasList = ReplicasListResponse
        type Scopes ReplicasList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly",
               "https://www.googleapis.com/auth/replicapool",
               "https://www.googleapis.com/auth/replicapool.readonly"]
        requestClient ReplicasList'{..}
          = go _rlProjectName _rlZone _rlPoolName _rlPageToken
              (Just _rlMaxResults)
              (Just AltJSON)
              replicaPoolService
          where go
                  = buildClient (Proxy :: Proxy ReplicasListResource)
                      mempty
