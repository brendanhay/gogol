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
-- Module      : Network.Google.Resource.Compute.Snapshots.SetLabels
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the labels on a snapshot. To learn more about labels, read the
-- Labeling Resources documentation.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.snapshots.setLabels@.
module Network.Google.Resource.Compute.Snapshots.SetLabels
    (
    -- * REST Resource
      SnapshotsSetLabelsResource

    -- * Creating a Request
    , snapshotsSetLabels
    , SnapshotsSetLabels

    -- * Request Lenses
    , sslProject
    , sslPayload
    , sslResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.snapshots.setLabels@ method which the
-- 'SnapshotsSetLabels' request conforms to.
type SnapshotsSetLabelsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "snapshots" :>
                 Capture "resource" Text :>
                   "setLabels" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GlobalSetLabelsRequest :>
                         Post '[JSON] Operation

-- | Sets the labels on a snapshot. To learn more about labels, read the
-- Labeling Resources documentation.
--
-- /See:/ 'snapshotsSetLabels' smart constructor.
data SnapshotsSetLabels = SnapshotsSetLabels'
    { _sslProject  :: !Text
    , _sslPayload  :: !GlobalSetLabelsRequest
    , _sslResource :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsSetLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslProject'
--
-- * 'sslPayload'
--
-- * 'sslResource'
snapshotsSetLabels
    :: Text -- ^ 'sslProject'
    -> GlobalSetLabelsRequest -- ^ 'sslPayload'
    -> Text -- ^ 'sslResource'
    -> SnapshotsSetLabels
snapshotsSetLabels pSslProject_ pSslPayload_ pSslResource_ =
    SnapshotsSetLabels'
    { _sslProject = pSslProject_
    , _sslPayload = pSslPayload_
    , _sslResource = pSslResource_
    }

-- | Project ID for this request.
sslProject :: Lens' SnapshotsSetLabels Text
sslProject
  = lens _sslProject (\ s a -> s{_sslProject = a})

-- | Multipart request metadata.
sslPayload :: Lens' SnapshotsSetLabels GlobalSetLabelsRequest
sslPayload
  = lens _sslPayload (\ s a -> s{_sslPayload = a})

-- | Name or id of the resource for this request.
sslResource :: Lens' SnapshotsSetLabels Text
sslResource
  = lens _sslResource (\ s a -> s{_sslResource = a})

instance GoogleRequest SnapshotsSetLabels where
        type Rs SnapshotsSetLabels = Operation
        type Scopes SnapshotsSetLabels =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SnapshotsSetLabels'{..}
          = go _sslProject _sslResource (Just AltJSON)
              _sslPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SnapshotsSetLabelsResource)
                      mempty
