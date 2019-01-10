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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets network tags for the specified instance to the data included in the
-- request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setTags@.
module Network.Google.Resource.Compute.Instances.SetTags
    (
    -- * REST Resource
      InstancesSetTagsResource

    -- * Creating a Request
    , instancesSetTags
    , InstancesSetTags

    -- * Request Lenses
    , istRequestId
    , istProject
    , istZone
    , istPayload
    , istInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.setTags@ method which the
-- 'InstancesSetTags' request conforms to.
type InstancesSetTagsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setTags" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Tags :> Post '[JSON] Operation

-- | Sets network tags for the specified instance to the data included in the
-- request.
--
-- /See:/ 'instancesSetTags' smart constructor.
data InstancesSetTags = InstancesSetTags'
    { _istRequestId :: !(Maybe Text)
    , _istProject   :: !Text
    , _istZone      :: !Text
    , _istPayload   :: !Tags
    , _istInstance  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesSetTags' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'istRequestId'
--
-- * 'istProject'
--
-- * 'istZone'
--
-- * 'istPayload'
--
-- * 'istInstance'
instancesSetTags
    :: Text -- ^ 'istProject'
    -> Text -- ^ 'istZone'
    -> Tags -- ^ 'istPayload'
    -> Text -- ^ 'istInstance'
    -> InstancesSetTags
instancesSetTags pIstProject_ pIstZone_ pIstPayload_ pIstInstance_ =
    InstancesSetTags'
    { _istRequestId = Nothing
    , _istProject = pIstProject_
    , _istZone = pIstZone_
    , _istPayload = pIstPayload_
    , _istInstance = pIstInstance_
    }

-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
istRequestId :: Lens' InstancesSetTags (Maybe Text)
istRequestId
  = lens _istRequestId (\ s a -> s{_istRequestId = a})

-- | Project ID for this request.
istProject :: Lens' InstancesSetTags Text
istProject
  = lens _istProject (\ s a -> s{_istProject = a})

-- | The name of the zone for this request.
istZone :: Lens' InstancesSetTags Text
istZone = lens _istZone (\ s a -> s{_istZone = a})

-- | Multipart request metadata.
istPayload :: Lens' InstancesSetTags Tags
istPayload
  = lens _istPayload (\ s a -> s{_istPayload = a})

-- | Name of the instance scoping this request.
istInstance :: Lens' InstancesSetTags Text
istInstance
  = lens _istInstance (\ s a -> s{_istInstance = a})

instance GoogleRequest InstancesSetTags where
        type Rs InstancesSetTags = Operation
        type Scopes InstancesSetTags =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesSetTags'{..}
          = go _istProject _istZone _istInstance _istRequestId
              (Just AltJSON)
              _istPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetTagsResource)
                      mempty
