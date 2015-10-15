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
-- Module      : Network.Google.Resource.Compute.Instances.SetTags
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets tags for the specified instance to the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesSetTags@.
module Network.Google.Resource.Compute.Instances.SetTags
    (
    -- * REST Resource
      InstancesSetTagsResource

    -- * Creating a Request
    , instancesSetTags'
    , InstancesSetTags'

    -- * Request Lenses
    , istProject
    , istZone
    , istPayload
    , istInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesSetTags@ method which the
-- 'InstancesSetTags'' request conforms to.
type InstancesSetTagsResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             Capture "instance" Text :>
               "setTags" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] Tags :> Post '[JSON] Operation

-- | Sets tags for the specified instance to the data included in the
-- request.
--
-- /See:/ 'instancesSetTags'' smart constructor.
data InstancesSetTags' = InstancesSetTags'
    { _istProject  :: !Text
    , _istZone     :: !Text
    , _istPayload  :: !Tags
    , _istInstance :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetTags'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'istProject'
--
-- * 'istZone'
--
-- * 'istPayload'
--
-- * 'istInstance'
instancesSetTags'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Tags -- ^ 'payload'
    -> Text -- ^ 'instance'
    -> InstancesSetTags'
instancesSetTags' pIstProject_ pIstZone_ pIstPayload_ pIstInstance_ =
    InstancesSetTags'
    { _istProject = pIstProject_
    , _istZone = pIstZone_
    , _istPayload = pIstPayload_
    , _istInstance = pIstInstance_
    }

-- | Project ID for this request.
istProject :: Lens' InstancesSetTags' Text
istProject
  = lens _istProject (\ s a -> s{_istProject = a})

-- | The name of the zone for this request.
istZone :: Lens' InstancesSetTags' Text
istZone = lens _istZone (\ s a -> s{_istZone = a})

-- | Multipart request metadata.
istPayload :: Lens' InstancesSetTags' Tags
istPayload
  = lens _istPayload (\ s a -> s{_istPayload = a})

-- | Name of the instance scoping this request.
istInstance :: Lens' InstancesSetTags' Text
istInstance
  = lens _istInstance (\ s a -> s{_istInstance = a})

instance GoogleRequest InstancesSetTags' where
        type Rs InstancesSetTags' = Operation
        requestClient InstancesSetTags'{..}
          = go _istProject _istZone _istInstance (Just AltJSON)
              _istPayload
              compute
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetTagsResource)
                      mempty
