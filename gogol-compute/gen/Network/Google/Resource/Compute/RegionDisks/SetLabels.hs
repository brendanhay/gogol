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
-- Module      : Network.Google.Resource.Compute.RegionDisks.SetLabels
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the labels on the target regional disk.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDisks.setLabels@.
module Network.Google.Resource.Compute.RegionDisks.SetLabels
    (
    -- * REST Resource
      RegionDisksSetLabelsResource

    -- * Creating a Request
    , regionDisksSetLabels
    , RegionDisksSetLabels

    -- * Request Lenses
    , rdslRequestId
    , rdslProject
    , rdslPayload
    , rdslResource
    , rdslRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionDisks.setLabels@ method which the
-- 'RegionDisksSetLabels' request conforms to.
type RegionDisksSetLabelsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "disks" :>
                   Capture "resource" Text :>
                     "setLabels" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RegionSetLabelsRequest :>
                             Post '[JSON] Operation

-- | Sets the labels on the target regional disk.
--
-- /See:/ 'regionDisksSetLabels' smart constructor.
data RegionDisksSetLabels = RegionDisksSetLabels'
    { _rdslRequestId :: !(Maybe Text)
    , _rdslProject   :: !Text
    , _rdslPayload   :: !RegionSetLabelsRequest
    , _rdslResource  :: !Text
    , _rdslRegion    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionDisksSetLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdslRequestId'
--
-- * 'rdslProject'
--
-- * 'rdslPayload'
--
-- * 'rdslResource'
--
-- * 'rdslRegion'
regionDisksSetLabels
    :: Text -- ^ 'rdslProject'
    -> RegionSetLabelsRequest -- ^ 'rdslPayload'
    -> Text -- ^ 'rdslResource'
    -> Text -- ^ 'rdslRegion'
    -> RegionDisksSetLabels
regionDisksSetLabels pRdslProject_ pRdslPayload_ pRdslResource_ pRdslRegion_ =
    RegionDisksSetLabels'
    { _rdslRequestId = Nothing
    , _rdslProject = pRdslProject_
    , _rdslPayload = pRdslPayload_
    , _rdslResource = pRdslResource_
    , _rdslRegion = pRdslRegion_
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
rdslRequestId :: Lens' RegionDisksSetLabels (Maybe Text)
rdslRequestId
  = lens _rdslRequestId
      (\ s a -> s{_rdslRequestId = a})

-- | Project ID for this request.
rdslProject :: Lens' RegionDisksSetLabels Text
rdslProject
  = lens _rdslProject (\ s a -> s{_rdslProject = a})

-- | Multipart request metadata.
rdslPayload :: Lens' RegionDisksSetLabels RegionSetLabelsRequest
rdslPayload
  = lens _rdslPayload (\ s a -> s{_rdslPayload = a})

-- | Name or id of the resource for this request.
rdslResource :: Lens' RegionDisksSetLabels Text
rdslResource
  = lens _rdslResource (\ s a -> s{_rdslResource = a})

-- | The region for this request.
rdslRegion :: Lens' RegionDisksSetLabels Text
rdslRegion
  = lens _rdslRegion (\ s a -> s{_rdslRegion = a})

instance GoogleRequest RegionDisksSetLabels where
        type Rs RegionDisksSetLabels = Operation
        type Scopes RegionDisksSetLabels =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionDisksSetLabels'{..}
          = go _rdslProject _rdslRegion _rdslResource
              _rdslRequestId
              (Just AltJSON)
              _rdslPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionDisksSetLabelsResource)
                      mempty
