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
    , instancesReset'
    , InstancesReset'

    -- * Request Lenses
    , irrProject
    , irrZone
    , irrInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.reset@ method which the
-- 'InstancesReset'' request conforms to.
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
-- /See:/ 'instancesReset'' smart constructor.
data InstancesReset' = InstancesReset'
    { _irrProject  :: !Text
    , _irrZone     :: !Text
    , _irrInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesReset'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'irrProject'
--
-- * 'irrZone'
--
-- * 'irrInstance'
instancesReset'
    :: Text -- ^ 'irrProject'
    -> Text -- ^ 'irrZone'
    -> Text -- ^ 'irrInstance'
    -> InstancesReset'
instancesReset' pIrrProject_ pIrrZone_ pIrrInstance_ =
    InstancesReset'
    { _irrProject = pIrrProject_
    , _irrZone = pIrrZone_
    , _irrInstance = pIrrInstance_
    }

-- | Project ID for this request.
irrProject :: Lens' InstancesReset' Text
irrProject
  = lens _irrProject (\ s a -> s{_irrProject = a})

-- | The name of the zone for this request.
irrZone :: Lens' InstancesReset' Text
irrZone = lens _irrZone (\ s a -> s{_irrZone = a})

-- | Name of the instance scoping this request.
irrInstance :: Lens' InstancesReset' Text
irrInstance
  = lens _irrInstance (\ s a -> s{_irrInstance = a})

instance GoogleRequest InstancesReset' where
        type Rs InstancesReset' = Operation
        requestClient InstancesReset'{..}
          = go _irrProject _irrZone _irrInstance (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy InstancesResetResource)
                      mempty
