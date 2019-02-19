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
-- Module      : Network.Google.Resource.Compute.Instances.SetLabels
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets labels on an instance. To learn more about labels, read the
-- Labeling Resources documentation.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instances.setLabels@.
module Network.Google.Resource.Compute.Instances.SetLabels
    (
    -- * REST Resource
      InstancesSetLabelsResource

    -- * Creating a Request
    , instancesSetLabels
    , InstancesSetLabels

    -- * Request Lenses
    , islRequestId
    , islProject
    , islZone
    , islPayload
    , islInstance
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instances.setLabels@ method which the
-- 'InstancesSetLabels' request conforms to.
type InstancesSetLabelsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "instances" :>
                   Capture "instance" Text :>
                     "setLabels" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] InstancesSetLabelsRequest :>
                             Post '[JSON] Operation

-- | Sets labels on an instance. To learn more about labels, read the
-- Labeling Resources documentation.
--
-- /See:/ 'instancesSetLabels' smart constructor.
data InstancesSetLabels =
  InstancesSetLabels'
    { _islRequestId :: !(Maybe Text)
    , _islProject   :: !Text
    , _islZone      :: !Text
    , _islPayload   :: !InstancesSetLabelsRequest
    , _islInstance  :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstancesSetLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'islRequestId'
--
-- * 'islProject'
--
-- * 'islZone'
--
-- * 'islPayload'
--
-- * 'islInstance'
instancesSetLabels
    :: Text -- ^ 'islProject'
    -> Text -- ^ 'islZone'
    -> InstancesSetLabelsRequest -- ^ 'islPayload'
    -> Text -- ^ 'islInstance'
    -> InstancesSetLabels
instancesSetLabels pIslProject_ pIslZone_ pIslPayload_ pIslInstance_ =
  InstancesSetLabels'
    { _islRequestId = Nothing
    , _islProject = pIslProject_
    , _islZone = pIslZone_
    , _islPayload = pIslPayload_
    , _islInstance = pIslInstance_
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
islRequestId :: Lens' InstancesSetLabels (Maybe Text)
islRequestId
  = lens _islRequestId (\ s a -> s{_islRequestId = a})

-- | Project ID for this request.
islProject :: Lens' InstancesSetLabels Text
islProject
  = lens _islProject (\ s a -> s{_islProject = a})

-- | The name of the zone for this request.
islZone :: Lens' InstancesSetLabels Text
islZone = lens _islZone (\ s a -> s{_islZone = a})

-- | Multipart request metadata.
islPayload :: Lens' InstancesSetLabels InstancesSetLabelsRequest
islPayload
  = lens _islPayload (\ s a -> s{_islPayload = a})

-- | Name of the instance scoping this request.
islInstance :: Lens' InstancesSetLabels Text
islInstance
  = lens _islInstance (\ s a -> s{_islInstance = a})

instance GoogleRequest InstancesSetLabels where
        type Rs InstancesSetLabels = Operation
        type Scopes InstancesSetLabels =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstancesSetLabels'{..}
          = go _islProject _islZone _islInstance _islRequestId
              (Just AltJSON)
              _islPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy InstancesSetLabelsResource)
                      mempty
