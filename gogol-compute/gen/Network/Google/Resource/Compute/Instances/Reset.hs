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
-- Module      : Network.Google.Resource.Compute.Instances.Reset
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs a hard reset on the instance.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.reset@.
module Network.Google.Resource.Compute.Instances.Reset
    (
    -- * REST Resource
      InstancesResetResource

    -- * Creating a Request
    , instancesReset
    , InstancesReset

    -- * Request Lenses
    , irProject
    , irZone
    , irInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.reset@ method which the
-- 'InstancesReset' request conforms to.
type InstancesResetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "reset" :>
                 QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Performs a hard reset on the instance.
--
-- /See:/ 'instancesReset' smart constructor.
data InstancesReset = InstancesReset
    { _irProject  :: !Text
    , _irZone     :: !Text
    , _irInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesReset' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irProject'
--
-- * 'irZone'
--
-- * 'irInstance'
instancesReset
    :: Text -- ^ 'irProject'
    -> Text -- ^ 'irZone'
    -> Text -- ^ 'irInstance'
    -> InstancesReset
instancesReset pIrProject_ pIrZone_ pIrInstance_ =
    InstancesReset
    { _irProject = pIrProject_
    , _irZone = pIrZone_
    , _irInstance = pIrInstance_
    }

-- | Project ID for this request.
irProject :: Lens' InstancesReset Text
irProject
  = lens _irProject (\ s a -> s{_irProject = a})

-- | The name of the zone for this request.
irZone :: Lens' InstancesReset Text
irZone = lens _irZone (\ s a -> s{_irZone = a})

-- | Name of the instance scoping this request.
irInstance :: Lens' InstancesReset Text
irInstance
  = lens _irInstance (\ s a -> s{_irInstance = a})

instance GoogleRequest InstancesReset where
        type Rs InstancesReset = Operation
        requestClient InstancesReset{..}
          = go _irProject _irZone _irInstance (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy InstancesResetResource)
                      mempty
