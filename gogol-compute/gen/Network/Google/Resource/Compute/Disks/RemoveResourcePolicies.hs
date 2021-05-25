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
-- Module      : Network.Google.Resource.Compute.Disks.RemoveResourcePolicies
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes resource policies from a disk.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.removeResourcePolicies@.
module Network.Google.Resource.Compute.Disks.RemoveResourcePolicies
    (
    -- * REST Resource
      DisksRemoveResourcePoliciesResource

    -- * Creating a Request
    , disksRemoveResourcePolicies
    , DisksRemoveResourcePolicies

    -- * Request Lenses
    , drrpRequestId
    , drrpProject
    , drrpDisk
    , drrpZone
    , drrpPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.disks.removeResourcePolicies@ method which the
-- 'DisksRemoveResourcePolicies' request conforms to.
type DisksRemoveResourcePoliciesResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     "removeResourcePolicies" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] DisksRemoveResourcePoliciesRequest :>
                             Post '[JSON] Operation

-- | Removes resource policies from a disk.
--
-- /See:/ 'disksRemoveResourcePolicies' smart constructor.
data DisksRemoveResourcePolicies =
  DisksRemoveResourcePolicies'
    { _drrpRequestId :: !(Maybe Text)
    , _drrpProject :: !Text
    , _drrpDisk :: !Text
    , _drrpZone :: !Text
    , _drrpPayload :: !DisksRemoveResourcePoliciesRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisksRemoveResourcePolicies' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drrpRequestId'
--
-- * 'drrpProject'
--
-- * 'drrpDisk'
--
-- * 'drrpZone'
--
-- * 'drrpPayload'
disksRemoveResourcePolicies
    :: Text -- ^ 'drrpProject'
    -> Text -- ^ 'drrpDisk'
    -> Text -- ^ 'drrpZone'
    -> DisksRemoveResourcePoliciesRequest -- ^ 'drrpPayload'
    -> DisksRemoveResourcePolicies
disksRemoveResourcePolicies pDrrpProject_ pDrrpDisk_ pDrrpZone_ pDrrpPayload_ =
  DisksRemoveResourcePolicies'
    { _drrpRequestId = Nothing
    , _drrpProject = pDrrpProject_
    , _drrpDisk = pDrrpDisk_
    , _drrpZone = pDrrpZone_
    , _drrpPayload = pDrrpPayload_
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
drrpRequestId :: Lens' DisksRemoveResourcePolicies (Maybe Text)
drrpRequestId
  = lens _drrpRequestId
      (\ s a -> s{_drrpRequestId = a})

-- | Project ID for this request.
drrpProject :: Lens' DisksRemoveResourcePolicies Text
drrpProject
  = lens _drrpProject (\ s a -> s{_drrpProject = a})

-- | The disk name for this request.
drrpDisk :: Lens' DisksRemoveResourcePolicies Text
drrpDisk = lens _drrpDisk (\ s a -> s{_drrpDisk = a})

-- | The name of the zone for this request.
drrpZone :: Lens' DisksRemoveResourcePolicies Text
drrpZone = lens _drrpZone (\ s a -> s{_drrpZone = a})

-- | Multipart request metadata.
drrpPayload :: Lens' DisksRemoveResourcePolicies DisksRemoveResourcePoliciesRequest
drrpPayload
  = lens _drrpPayload (\ s a -> s{_drrpPayload = a})

instance GoogleRequest DisksRemoveResourcePolicies
         where
        type Rs DisksRemoveResourcePolicies = Operation
        type Scopes DisksRemoveResourcePolicies =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient DisksRemoveResourcePolicies'{..}
          = go _drrpProject _drrpZone _drrpDisk _drrpRequestId
              (Just AltJSON)
              _drrpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy DisksRemoveResourcePoliciesResource)
                      mempty
