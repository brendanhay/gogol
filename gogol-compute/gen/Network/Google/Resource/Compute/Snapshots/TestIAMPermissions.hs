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
-- Module      : Network.Google.Resource.Compute.Snapshots.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.snapshots.testIamPermissions@.
module Network.Google.Resource.Compute.Snapshots.TestIAMPermissions
    (
    -- * REST Resource
      SnapshotsTestIAMPermissionsResource

    -- * Creating a Request
    , snapshotsTestIAMPermissions
    , SnapshotsTestIAMPermissions

    -- * Request Lenses
    , stipProject
    , stipPayload
    , stipResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.snapshots.testIamPermissions@ method which the
-- 'SnapshotsTestIAMPermissions' request conforms to.
type SnapshotsTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "snapshots" :>
                 Capture "resource" Text :>
                   "testIamPermissions" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] TestPermissionsRequest :>
                         Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'snapshotsTestIAMPermissions' smart constructor.
data SnapshotsTestIAMPermissions = SnapshotsTestIAMPermissions'
    { _stipProject  :: !Text
    , _stipPayload  :: !TestPermissionsRequest
    , _stipResource :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SnapshotsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stipProject'
--
-- * 'stipPayload'
--
-- * 'stipResource'
snapshotsTestIAMPermissions
    :: Text -- ^ 'stipProject'
    -> TestPermissionsRequest -- ^ 'stipPayload'
    -> Text -- ^ 'stipResource'
    -> SnapshotsTestIAMPermissions
snapshotsTestIAMPermissions pStipProject_ pStipPayload_ pStipResource_ =
    SnapshotsTestIAMPermissions'
    { _stipProject = pStipProject_
    , _stipPayload = pStipPayload_
    , _stipResource = pStipResource_
    }

-- | Project ID for this request.
stipProject :: Lens' SnapshotsTestIAMPermissions Text
stipProject
  = lens _stipProject (\ s a -> s{_stipProject = a})

-- | Multipart request metadata.
stipPayload :: Lens' SnapshotsTestIAMPermissions TestPermissionsRequest
stipPayload
  = lens _stipPayload (\ s a -> s{_stipPayload = a})

-- | Name or id of the resource for this request.
stipResource :: Lens' SnapshotsTestIAMPermissions Text
stipResource
  = lens _stipResource (\ s a -> s{_stipResource = a})

instance GoogleRequest SnapshotsTestIAMPermissions
         where
        type Rs SnapshotsTestIAMPermissions =
             TestPermissionsResponse
        type Scopes SnapshotsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SnapshotsTestIAMPermissions'{..}
          = go _stipProject _stipResource (Just AltJSON)
              _stipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SnapshotsTestIAMPermissionsResource)
                      mempty
