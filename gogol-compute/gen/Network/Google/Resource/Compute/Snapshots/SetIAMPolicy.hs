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
-- Module      : Network.Google.Resource.Compute.Snapshots.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.snapshots.setIamPolicy@.
module Network.Google.Resource.Compute.Snapshots.SetIAMPolicy
    (
    -- * REST Resource
      SnapshotsSetIAMPolicyResource

    -- * Creating a Request
    , snapshotsSetIAMPolicy
    , SnapshotsSetIAMPolicy

    -- * Request Lenses
    , ssipProject
    , ssipPayload
    , ssipResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.snapshots.setIamPolicy@ method which the
-- 'SnapshotsSetIAMPolicy' request conforms to.
type SnapshotsSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "snapshots" :>
                 Capture "resource" Text :>
                   "setIamPolicy" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GlobalSetPolicyRequest :>
                         Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'snapshotsSetIAMPolicy' smart constructor.
data SnapshotsSetIAMPolicy = SnapshotsSetIAMPolicy'
    { _ssipProject  :: !Text
    , _ssipPayload  :: !GlobalSetPolicyRequest
    , _ssipResource :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssipProject'
--
-- * 'ssipPayload'
--
-- * 'ssipResource'
snapshotsSetIAMPolicy
    :: Text -- ^ 'ssipProject'
    -> GlobalSetPolicyRequest -- ^ 'ssipPayload'
    -> Text -- ^ 'ssipResource'
    -> SnapshotsSetIAMPolicy
snapshotsSetIAMPolicy pSsipProject_ pSsipPayload_ pSsipResource_ =
    SnapshotsSetIAMPolicy'
    { _ssipProject = pSsipProject_
    , _ssipPayload = pSsipPayload_
    , _ssipResource = pSsipResource_
    }

-- | Project ID for this request.
ssipProject :: Lens' SnapshotsSetIAMPolicy Text
ssipProject
  = lens _ssipProject (\ s a -> s{_ssipProject = a})

-- | Multipart request metadata.
ssipPayload :: Lens' SnapshotsSetIAMPolicy GlobalSetPolicyRequest
ssipPayload
  = lens _ssipPayload (\ s a -> s{_ssipPayload = a})

-- | Name or id of the resource for this request.
ssipResource :: Lens' SnapshotsSetIAMPolicy Text
ssipResource
  = lens _ssipResource (\ s a -> s{_ssipResource = a})

instance GoogleRequest SnapshotsSetIAMPolicy where
        type Rs SnapshotsSetIAMPolicy = Policy
        type Scopes SnapshotsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SnapshotsSetIAMPolicy'{..}
          = go _ssipProject _ssipResource (Just AltJSON)
              _ssipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SnapshotsSetIAMPolicyResource)
                      mempty
