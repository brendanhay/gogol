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
-- Module      : Network.Google.Resource.Compute.Disks.AddResourcePolicies
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds existing resource policies to a disk. You can only add one policy
-- which will be applied to this disk for scheduling snapshot creation.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.addResourcePolicies@.
module Network.Google.Resource.Compute.Disks.AddResourcePolicies
    (
    -- * REST Resource
      DisksAddResourcePoliciesResource

    -- * Creating a Request
    , disksAddResourcePolicies
    , DisksAddResourcePolicies

    -- * Request Lenses
    , darpRequestId
    , darpProject
    , darpDisk
    , darpZone
    , darpPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.disks.addResourcePolicies@ method which the
-- 'DisksAddResourcePolicies' request conforms to.
type DisksAddResourcePoliciesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     "addResourcePolicies" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] DisksAddResourcePoliciesRequest :>
                             Post '[JSON] Operation

-- | Adds existing resource policies to a disk. You can only add one policy
-- which will be applied to this disk for scheduling snapshot creation.
--
-- /See:/ 'disksAddResourcePolicies' smart constructor.
data DisksAddResourcePolicies =
  DisksAddResourcePolicies'
    { _darpRequestId :: !(Maybe Text)
    , _darpProject :: !Text
    , _darpDisk :: !Text
    , _darpZone :: !Text
    , _darpPayload :: !DisksAddResourcePoliciesRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisksAddResourcePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'darpRequestId'
--
-- * 'darpProject'
--
-- * 'darpDisk'
--
-- * 'darpZone'
--
-- * 'darpPayload'
disksAddResourcePolicies
    :: Text -- ^ 'darpProject'
    -> Text -- ^ 'darpDisk'
    -> Text -- ^ 'darpZone'
    -> DisksAddResourcePoliciesRequest -- ^ 'darpPayload'
    -> DisksAddResourcePolicies
disksAddResourcePolicies pDarpProject_ pDarpDisk_ pDarpZone_ pDarpPayload_ =
  DisksAddResourcePolicies'
    { _darpRequestId = Nothing
    , _darpProject = pDarpProject_
    , _darpDisk = pDarpDisk_
    , _darpZone = pDarpZone_
    , _darpPayload = pDarpPayload_
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
darpRequestId :: Lens' DisksAddResourcePolicies (Maybe Text)
darpRequestId
  = lens _darpRequestId
      (\ s a -> s{_darpRequestId = a})

-- | Project ID for this request.
darpProject :: Lens' DisksAddResourcePolicies Text
darpProject
  = lens _darpProject (\ s a -> s{_darpProject = a})

-- | The disk name for this request.
darpDisk :: Lens' DisksAddResourcePolicies Text
darpDisk = lens _darpDisk (\ s a -> s{_darpDisk = a})

-- | The name of the zone for this request.
darpZone :: Lens' DisksAddResourcePolicies Text
darpZone = lens _darpZone (\ s a -> s{_darpZone = a})

-- | Multipart request metadata.
darpPayload :: Lens' DisksAddResourcePolicies DisksAddResourcePoliciesRequest
darpPayload
  = lens _darpPayload (\ s a -> s{_darpPayload = a})

instance GoogleRequest DisksAddResourcePolicies where
        type Rs DisksAddResourcePolicies = Operation
        type Scopes DisksAddResourcePolicies =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient DisksAddResourcePolicies'{..}
          = go _darpProject _darpZone _darpDisk _darpRequestId
              (Just AltJSON)
              _darpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy DisksAddResourcePoliciesResource)
                      mempty
