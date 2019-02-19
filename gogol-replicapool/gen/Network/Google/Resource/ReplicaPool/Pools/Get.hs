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
-- Module      : Network.Google.Resource.ReplicaPool.Pools.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a single replica pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.pools.get@.
module Network.Google.Resource.ReplicaPool.Pools.Get
    (
    -- * REST Resource
      PoolsGetResource

    -- * Creating a Request
    , poolsGet
    , PoolsGet

    -- * Request Lenses
    , pgPoolName
    , pgZone
    , pgProjectName
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.get@ method which the
-- 'PoolsGet' request conforms to.
type PoolsGetResource =
     "replicapool" :>
       "v1beta1" :>
         "projects" :>
           Capture "projectName" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "pools" :>
                   Capture "poolName" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Pool

-- | Gets information about a single replica pool.
--
-- /See:/ 'poolsGet' smart constructor.
data PoolsGet =
  PoolsGet'
    { _pgPoolName    :: !Text
    , _pgZone        :: !Text
    , _pgProjectName :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoolsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgPoolName'
--
-- * 'pgZone'
--
-- * 'pgProjectName'
poolsGet
    :: Text -- ^ 'pgPoolName'
    -> Text -- ^ 'pgZone'
    -> Text -- ^ 'pgProjectName'
    -> PoolsGet
poolsGet pPgPoolName_ pPgZone_ pPgProjectName_ =
  PoolsGet'
    { _pgPoolName = pPgPoolName_
    , _pgZone = pPgZone_
    , _pgProjectName = pPgProjectName_
    }


-- | The name of the replica pool for this request.
pgPoolName :: Lens' PoolsGet Text
pgPoolName
  = lens _pgPoolName (\ s a -> s{_pgPoolName = a})

-- | The zone for this replica pool.
pgZone :: Lens' PoolsGet Text
pgZone = lens _pgZone (\ s a -> s{_pgZone = a})

-- | The project ID for this replica pool.
pgProjectName :: Lens' PoolsGet Text
pgProjectName
  = lens _pgProjectName
      (\ s a -> s{_pgProjectName = a})

instance GoogleRequest PoolsGet where
        type Rs PoolsGet = Pool
        type Scopes PoolsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/ndev.cloudman.readonly",
               "https://www.googleapis.com/auth/replicapool",
               "https://www.googleapis.com/auth/replicapool.readonly"]
        requestClient PoolsGet'{..}
          = go _pgProjectName _pgZone _pgPoolName
              (Just AltJSON)
              replicaPoolService
          where go
                  = buildClient (Proxy :: Proxy PoolsGetResource)
                      mempty
