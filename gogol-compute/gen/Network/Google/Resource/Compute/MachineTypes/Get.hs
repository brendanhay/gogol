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
-- Module      : Network.Google.Resource.Compute.MachineTypes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified machine type resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.machineTypes.get@.
module Network.Google.Resource.Compute.MachineTypes.Get
    (
    -- * REST Resource
      MachineTypesGetResource

    -- * Creating a Request
    , machineTypesGet
    , MachineTypesGet

    -- * Request Lenses
    , mtgProject
    , mtgZone
    , mtgMachineType
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.machineTypes.get@ method which the
-- 'MachineTypesGet' request conforms to.
type MachineTypesGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "machineTypes" :>
             Capture "machineType" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] MachineType

-- | Returns the specified machine type resource.
--
-- /See:/ 'machineTypesGet' smart constructor.
data MachineTypesGet = MachineTypesGet
    { _mtgProject     :: !Text
    , _mtgZone        :: !Text
    , _mtgMachineType :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MachineTypesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtgProject'
--
-- * 'mtgZone'
--
-- * 'mtgMachineType'
machineTypesGet
    :: Text -- ^ 'mtgProject'
    -> Text -- ^ 'mtgZone'
    -> Text -- ^ 'mtgMachineType'
    -> MachineTypesGet
machineTypesGet pMtgProject_ pMtgZone_ pMtgMachineType_ =
    MachineTypesGet
    { _mtgProject = pMtgProject_
    , _mtgZone = pMtgZone_
    , _mtgMachineType = pMtgMachineType_
    }

-- | Project ID for this request.
mtgProject :: Lens' MachineTypesGet Text
mtgProject
  = lens _mtgProject (\ s a -> s{_mtgProject = a})

-- | The name of the zone for this request.
mtgZone :: Lens' MachineTypesGet Text
mtgZone = lens _mtgZone (\ s a -> s{_mtgZone = a})

-- | Name of the machine type resource to return.
mtgMachineType :: Lens' MachineTypesGet Text
mtgMachineType
  = lens _mtgMachineType
      (\ s a -> s{_mtgMachineType = a})

instance GoogleRequest MachineTypesGet where
        type Rs MachineTypesGet = MachineType
        requestClient MachineTypesGet{..}
          = go _mtgProject _mtgZone _mtgMachineType
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy MachineTypesGetResource)
                      mempty
