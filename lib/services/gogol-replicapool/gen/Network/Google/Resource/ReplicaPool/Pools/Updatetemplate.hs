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
-- Module      : Network.Google.Resource.ReplicaPool.Pools.Updatetemplate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the template used by the pool.
--
-- /See:/ <https://developers.google.com/compute/docs/replica-pool/ Replica Pool API Reference> for @replicapool.pools.updatetemplate@.
module Network.Google.Resource.ReplicaPool.Pools.Updatetemplate
    (
    -- * REST Resource
      PoolsUpdatetemplateResource

    -- * Creating a Request
    , poolsUpdatetemplate
    , PoolsUpdatetemplate

    -- * Request Lenses
    , puPoolName
    , puZone
    , puPayload
    , puProjectName
    ) where

import Network.Google.Prelude
import Network.Google.ReplicaPool.Types

-- | A resource alias for @replicapool.pools.updatetemplate@ method which the
-- 'PoolsUpdatetemplate' request conforms to.
type PoolsUpdatetemplateResource =
     "replicapool" :>
       "v1beta1" :>
         "projects" :>
           Capture "projectName" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "pools" :>
                   Capture "poolName" Text :>
                     "updateTemplate" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Template :> Post '[JSON] ()

-- | Update the template used by the pool.
--
-- /See:/ 'poolsUpdatetemplate' smart constructor.
data PoolsUpdatetemplate =
  PoolsUpdatetemplate'
    { _puPoolName :: !Text
    , _puZone :: !Text
    , _puPayload :: !Template
    , _puProjectName :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PoolsUpdatetemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puPoolName'
--
-- * 'puZone'
--
-- * 'puPayload'
--
-- * 'puProjectName'
poolsUpdatetemplate
    :: Text -- ^ 'puPoolName'
    -> Text -- ^ 'puZone'
    -> Template -- ^ 'puPayload'
    -> Text -- ^ 'puProjectName'
    -> PoolsUpdatetemplate
poolsUpdatetemplate pPuPoolName_ pPuZone_ pPuPayload_ pPuProjectName_ =
  PoolsUpdatetemplate'
    { _puPoolName = pPuPoolName_
    , _puZone = pPuZone_
    , _puPayload = pPuPayload_
    , _puProjectName = pPuProjectName_
    }


-- | The name of the replica pool for this request.
puPoolName :: Lens' PoolsUpdatetemplate Text
puPoolName
  = lens _puPoolName (\ s a -> s{_puPoolName = a})

-- | The zone for this replica pool.
puZone :: Lens' PoolsUpdatetemplate Text
puZone = lens _puZone (\ s a -> s{_puZone = a})

-- | Multipart request metadata.
puPayload :: Lens' PoolsUpdatetemplate Template
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | The project ID for this replica pool.
puProjectName :: Lens' PoolsUpdatetemplate Text
puProjectName
  = lens _puProjectName
      (\ s a -> s{_puProjectName = a})

instance GoogleRequest PoolsUpdatetemplate where
        type Rs PoolsUpdatetemplate = ()
        type Scopes PoolsUpdatetemplate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/ndev.cloudman",
               "https://www.googleapis.com/auth/replicapool"]
        requestClient PoolsUpdatetemplate'{..}
          = go _puProjectName _puZone _puPoolName
              (Just AltJSON)
              _puPayload
              replicaPoolService
          where go
                  = buildClient
                      (Proxy :: Proxy PoolsUpdatetemplateResource)
                      mempty
