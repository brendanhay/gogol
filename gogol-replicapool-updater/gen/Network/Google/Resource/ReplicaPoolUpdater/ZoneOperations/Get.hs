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
-- Module      : Network.Google.Resource.ReplicaPoolUpdater.ZoneOperations.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the specified zone-specific operation resource.
--
-- /See:/ <https://cloud.google.com/compute/docs/instance-groups/manager/#applying_rolling_updates_using_the_updater_service Google Compute Engine Instance Group Updater API Reference> for @ReplicapoolupdaterZoneOperationsGet@.
module Network.Google.Resource.ReplicaPoolUpdater.ZoneOperations.Get
    (
    -- * REST Resource
      ZoneOperationsGetResource

    -- * Creating a Request
    , zoneOperationsGet'
    , ZoneOperationsGet'

    -- * Request Lenses
    , zogProject
    , zogOperation
    , zogZone
    ) where

import           Network.Google.Prelude
import           Network.Google.ReplicaPoolUpdater.Types

-- | A resource alias for @ReplicapoolupdaterZoneOperationsGet@ method which the
-- 'ZoneOperationsGet'' request conforms to.
type ZoneOperationsGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "operations" :>
             Capture "operation" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Operation

-- | Retrieves the specified zone-specific operation resource.
--
-- /See:/ 'zoneOperationsGet'' smart constructor.
data ZoneOperationsGet' = ZoneOperationsGet'
    { _zogProject   :: !Text
    , _zogOperation :: !Text
    , _zogZone      :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ZoneOperationsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'zogProject'
--
-- * 'zogOperation'
--
-- * 'zogZone'
zoneOperationsGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> Text -- ^ 'zone'
    -> ZoneOperationsGet'
zoneOperationsGet' pZogProject_ pZogOperation_ pZogZone_ =
    ZoneOperationsGet'
    { _zogProject = pZogProject_
    , _zogOperation = pZogOperation_
    , _zogZone = pZogZone_
    }

-- | Name of the project scoping this request.
zogProject :: Lens' ZoneOperationsGet' Text
zogProject
  = lens _zogProject (\ s a -> s{_zogProject = a})

-- | Name of the operation resource to return.
zogOperation :: Lens' ZoneOperationsGet' Text
zogOperation
  = lens _zogOperation (\ s a -> s{_zogOperation = a})

-- | Name of the zone scoping this request.
zogZone :: Lens' ZoneOperationsGet' Text
zogZone = lens _zogZone (\ s a -> s{_zogZone = a})

instance GoogleRequest ZoneOperationsGet' where
        type Rs ZoneOperationsGet' = Operation
        requestClient ZoneOperationsGet'{..}
          = go _zogProject _zogZone _zogOperation
              (Just AltJSON)
              replicaPoolUpdaterService
          where go
                  = buildClient
                      (Proxy :: Proxy ZoneOperationsGetResource)
                      mempty
