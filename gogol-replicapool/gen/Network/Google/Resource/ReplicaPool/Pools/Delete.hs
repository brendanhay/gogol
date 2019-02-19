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
-- Module      : Network.Google.Resource.ReplicaPool.Pools.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a replica pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.pools.delete@.
module Network.Google.Resource.ReplicaPool.Pools.Delete
    (
    -- * REST Resource
      PoolsDeleteResource

    -- * Creating a Request
    , poolsDelete
    , PoolsDelete

    -- * Request Lenses
    , pdPoolName
    , pdZone
    , pdPayload
    , pdProjectName
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.delete@ method which the
-- 'PoolsDelete' request conforms to.
type PoolsDeleteResource =
     "replicapool" :>
       "v1beta1" :>
         "projects" :>
           Capture "projectName" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "pools" :>
                   Capture "poolName" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] PoolsDeleteRequest :> Post '[JSON] ()

-- | Deletes a replica pool.
--
-- /See:/ 'poolsDelete' smart constructor.
data PoolsDelete =
  PoolsDelete'
    { _pdPoolName    :: !Text
    , _pdZone        :: !Text
    , _pdPayload     :: !PoolsDeleteRequest
    , _pdProjectName :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoolsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdPoolName'
--
-- * 'pdZone'
--
-- * 'pdPayload'
--
-- * 'pdProjectName'
poolsDelete
    :: Text -- ^ 'pdPoolName'
    -> Text -- ^ 'pdZone'
    -> PoolsDeleteRequest -- ^ 'pdPayload'
    -> Text -- ^ 'pdProjectName'
    -> PoolsDelete
poolsDelete pPdPoolName_ pPdZone_ pPdPayload_ pPdProjectName_ =
  PoolsDelete'
    { _pdPoolName = pPdPoolName_
    , _pdZone = pPdZone_
    , _pdPayload = pPdPayload_
    , _pdProjectName = pPdProjectName_
    }


-- | The name of the replica pool for this request.
pdPoolName :: Lens' PoolsDelete Text
pdPoolName
  = lens _pdPoolName (\ s a -> s{_pdPoolName = a})

-- | The zone for this replica pool.
pdZone :: Lens' PoolsDelete Text
pdZone = lens _pdZone (\ s a -> s{_pdZone = a})

-- | Multipart request metadata.
pdPayload :: Lens' PoolsDelete PoolsDeleteRequest
pdPayload
  = lens _pdPayload (\ s a -> s{_pdPayload = a})

-- | The project ID for this replica pool.
pdProjectName :: Lens' PoolsDelete Text
pdProjectName
  = lens _pdProjectName
      (\ s a -> s{_pdProjectName = a})

instance GoogleRequest PoolsDelete where
        type Rs PoolsDelete = ()
        type Scopes PoolsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/replicapool"]
        requestClient PoolsDelete'{..}
          = go _pdProjectName _pdZone _pdPoolName
              (Just AltJSON)
              _pdPayload
              replicaPoolService
          where go
                  = buildClient (Proxy :: Proxy PoolsDeleteResource)
                      mempty
