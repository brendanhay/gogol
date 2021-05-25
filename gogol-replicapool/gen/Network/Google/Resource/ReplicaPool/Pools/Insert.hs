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
-- Module      : Network.Google.Resource.ReplicaPool.Pools.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new replica pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.pools.insert@.
module Network.Google.Resource.ReplicaPool.Pools.Insert
    (
    -- * REST Resource
      PoolsInsertResource

    -- * Creating a Request
    , poolsInsert
    , PoolsInsert

    -- * Request Lenses
    , piZone
    , piPayload
    , piProjectName
    ) where

import Network.Google.Prelude
import Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.insert@ method which the
-- 'PoolsInsert' request conforms to.
type PoolsInsertResource =
     "replicapool" :>
       "v1beta1" :>
         "projects" :>
           Capture "projectName" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "pools" :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Pool :> Post '[JSON] Pool

-- | Inserts a new replica pool.
--
-- /See:/ 'poolsInsert' smart constructor.
data PoolsInsert =
  PoolsInsert'
    { _piZone :: !Text
    , _piPayload :: !Pool
    , _piProjectName :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoolsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piZone'
--
-- * 'piPayload'
--
-- * 'piProjectName'
poolsInsert
    :: Text -- ^ 'piZone'
    -> Pool -- ^ 'piPayload'
    -> Text -- ^ 'piProjectName'
    -> PoolsInsert
poolsInsert pPiZone_ pPiPayload_ pPiProjectName_ =
  PoolsInsert'
    { _piZone = pPiZone_
    , _piPayload = pPiPayload_
    , _piProjectName = pPiProjectName_
    }


-- | The zone for this replica pool.
piZone :: Lens' PoolsInsert Text
piZone = lens _piZone (\ s a -> s{_piZone = a})

-- | Multipart request metadata.
piPayload :: Lens' PoolsInsert Pool
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

-- | The project ID for this replica pool.
piProjectName :: Lens' PoolsInsert Text
piProjectName
  = lens _piProjectName
      (\ s a -> s{_piProjectName = a})

instance GoogleRequest PoolsInsert where
        type Rs PoolsInsert = Pool
        type Scopes PoolsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/replicapool"]
        requestClient PoolsInsert'{..}
          = go _piProjectName _piZone (Just AltJSON) _piPayload
              replicaPoolService
          where go
                  = buildClient (Proxy :: Proxy PoolsInsertResource)
                      mempty
