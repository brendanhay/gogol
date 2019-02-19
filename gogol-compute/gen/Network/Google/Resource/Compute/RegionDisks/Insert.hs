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
-- Module      : Network.Google.Resource.Compute.RegionDisks.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a persistent regional disk in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDisks.insert@.
module Network.Google.Resource.Compute.RegionDisks.Insert
    (
    -- * REST Resource
      RegionDisksInsertResource

    -- * Creating a Request
    , regionDisksInsert
    , RegionDisksInsert

    -- * Request Lenses
    , rdiRequestId
    , rdiSourceImage
    , rdiProject
    , rdiPayload
    , rdiRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.regionDisks.insert@ method which the
-- 'RegionDisksInsert' request conforms to.
type RegionDisksInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "disks" :>
                   QueryParam "requestId" Text :>
                     QueryParam "sourceImage" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Disk :> Post '[JSON] Operation

-- | Creates a persistent regional disk in the specified project using the
-- data included in the request.
--
-- /See:/ 'regionDisksInsert' smart constructor.
data RegionDisksInsert =
  RegionDisksInsert'
    { _rdiRequestId   :: !(Maybe Text)
    , _rdiSourceImage :: !(Maybe Text)
    , _rdiProject     :: !Text
    , _rdiPayload     :: !Disk
    , _rdiRegion      :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionDisksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdiRequestId'
--
-- * 'rdiSourceImage'
--
-- * 'rdiProject'
--
-- * 'rdiPayload'
--
-- * 'rdiRegion'
regionDisksInsert
    :: Text -- ^ 'rdiProject'
    -> Disk -- ^ 'rdiPayload'
    -> Text -- ^ 'rdiRegion'
    -> RegionDisksInsert
regionDisksInsert pRdiProject_ pRdiPayload_ pRdiRegion_ =
  RegionDisksInsert'
    { _rdiRequestId = Nothing
    , _rdiSourceImage = Nothing
    , _rdiProject = pRdiProject_
    , _rdiPayload = pRdiPayload_
    , _rdiRegion = pRdiRegion_
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
rdiRequestId :: Lens' RegionDisksInsert (Maybe Text)
rdiRequestId
  = lens _rdiRequestId (\ s a -> s{_rdiRequestId = a})

-- | Optional. Source image to restore onto a disk.
rdiSourceImage :: Lens' RegionDisksInsert (Maybe Text)
rdiSourceImage
  = lens _rdiSourceImage
      (\ s a -> s{_rdiSourceImage = a})

-- | Project ID for this request.
rdiProject :: Lens' RegionDisksInsert Text
rdiProject
  = lens _rdiProject (\ s a -> s{_rdiProject = a})

-- | Multipart request metadata.
rdiPayload :: Lens' RegionDisksInsert Disk
rdiPayload
  = lens _rdiPayload (\ s a -> s{_rdiPayload = a})

-- | Name of the region for this request.
rdiRegion :: Lens' RegionDisksInsert Text
rdiRegion
  = lens _rdiRegion (\ s a -> s{_rdiRegion = a})

instance GoogleRequest RegionDisksInsert where
        type Rs RegionDisksInsert = Operation
        type Scopes RegionDisksInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient RegionDisksInsert'{..}
          = go _rdiProject _rdiRegion _rdiRequestId
              _rdiSourceImage
              (Just AltJSON)
              _rdiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionDisksInsertResource)
                      mempty
