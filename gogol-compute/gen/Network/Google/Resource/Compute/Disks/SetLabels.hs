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
-- Module      : Network.Google.Resource.Compute.Disks.SetLabels
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the labels on a disk. To learn more about labels, read the Labeling
-- Resources documentation.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.setLabels@.
module Network.Google.Resource.Compute.Disks.SetLabels
    (
    -- * REST Resource
      DisksSetLabelsResource

    -- * Creating a Request
    , disksSetLabels
    , DisksSetLabels

    -- * Request Lenses
    , dslRequestId
    , dslProject
    , dslZone
    , dslPayload
    , dslResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.disks.setLabels@ method which the
-- 'DisksSetLabels' request conforms to.
type DisksSetLabelsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   Capture "resource" Text :>
                     "setLabels" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ZoneSetLabelsRequest :>
                             Post '[JSON] Operation

-- | Sets the labels on a disk. To learn more about labels, read the Labeling
-- Resources documentation.
--
-- /See:/ 'disksSetLabels' smart constructor.
data DisksSetLabels =
  DisksSetLabels'
    { _dslRequestId :: !(Maybe Text)
    , _dslProject :: !Text
    , _dslZone :: !Text
    , _dslPayload :: !ZoneSetLabelsRequest
    , _dslResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisksSetLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dslRequestId'
--
-- * 'dslProject'
--
-- * 'dslZone'
--
-- * 'dslPayload'
--
-- * 'dslResource'
disksSetLabels
    :: Text -- ^ 'dslProject'
    -> Text -- ^ 'dslZone'
    -> ZoneSetLabelsRequest -- ^ 'dslPayload'
    -> Text -- ^ 'dslResource'
    -> DisksSetLabels
disksSetLabels pDslProject_ pDslZone_ pDslPayload_ pDslResource_ =
  DisksSetLabels'
    { _dslRequestId = Nothing
    , _dslProject = pDslProject_
    , _dslZone = pDslZone_
    , _dslPayload = pDslPayload_
    , _dslResource = pDslResource_
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
dslRequestId :: Lens' DisksSetLabels (Maybe Text)
dslRequestId
  = lens _dslRequestId (\ s a -> s{_dslRequestId = a})

-- | Project ID for this request.
dslProject :: Lens' DisksSetLabels Text
dslProject
  = lens _dslProject (\ s a -> s{_dslProject = a})

-- | The name of the zone for this request.
dslZone :: Lens' DisksSetLabels Text
dslZone = lens _dslZone (\ s a -> s{_dslZone = a})

-- | Multipart request metadata.
dslPayload :: Lens' DisksSetLabels ZoneSetLabelsRequest
dslPayload
  = lens _dslPayload (\ s a -> s{_dslPayload = a})

-- | Name or id of the resource for this request.
dslResource :: Lens' DisksSetLabels Text
dslResource
  = lens _dslResource (\ s a -> s{_dslResource = a})

instance GoogleRequest DisksSetLabels where
        type Rs DisksSetLabels = Operation
        type Scopes DisksSetLabels =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient DisksSetLabels'{..}
          = go _dslProject _dslZone _dslResource _dslRequestId
              (Just AltJSON)
              _dslPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy DisksSetLabelsResource)
                      mempty
