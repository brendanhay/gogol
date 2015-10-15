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
-- Module      : Network.Google.Resource.Compute.Instances.SetMetadata
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets metadata for the specified instance to the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesSetMetadata@.
module Network.Google.Resource.Compute.Instances.SetMetadata
    (
    -- * REST Resource
      InstancesSetMetadataResource

    -- * Creating a Request
    , instancesSetMetadata'
    , InstancesSetMetadata'

    -- * Request Lenses
    , ismProject
    , ismZone
    , ismPayload
    , ismInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesSetMetadata@ method which the
-- 'InstancesSetMetadata'' request conforms to.
type InstancesSetMetadataResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "setMetadata" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Metadata :> Post '[JSON] Operation

-- | Sets metadata for the specified instance to the data included in the
-- request.
--
-- /See:/ 'instancesSetMetadata'' smart constructor.
data InstancesSetMetadata' = InstancesSetMetadata'
    { _ismProject  :: !Text
    , _ismZone     :: !Text
    , _ismPayload  :: !Metadata
    , _ismInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetMetadata'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ismProject'
--
-- * 'ismZone'
--
-- * 'ismPayload'
--
-- * 'ismInstance'
instancesSetMetadata'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Metadata -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesSetMetadata'
instancesSetMetadata' pIsmProject_ pIsmZone_ pIsmPayload_ pIsmInstance_ =
    InstancesSetMetadata'
    { _ismProject = pIsmProject_
    , _ismZone = pIsmZone_
    , _ismPayload = pIsmPayload_
    , _ismInstance = pIsmInstance_
    }

-- | Project ID for this request.
ismProject :: Lens' InstancesSetMetadata' Text
ismProject
  = lens _ismProject (\ s a -> s{_ismProject = a})

-- | The name of the zone for this request.
ismZone :: Lens' InstancesSetMetadata' Text
ismZone = lens _ismZone (\ s a -> s{_ismZone = a})

-- | Multipart request metadata.
ismPayload :: Lens' InstancesSetMetadata' Metadata
ismPayload
  = lens _ismPayload (\ s a -> s{_ismPayload = a})

-- | Name of the instance scoping this request.
ismInstance :: Lens' InstancesSetMetadata' Text
ismInstance
  = lens _ismInstance (\ s a -> s{_ismInstance = a})

instance GoogleRequest InstancesSetMetadata' where
        type Rs InstancesSetMetadata' = Operation
        requestClient InstancesSetMetadata'{..}
          = go _ismProject _ismZone _ismInstance (Just AltJSON)
              _ismPayload
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetMetadataResource)
                      mempty
