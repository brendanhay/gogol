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
-- Module      : Network.Google.Resource.Compute.Disks.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a persistent disk in the specified project using the data in the
-- request. You can create a disk with a sourceImage, a sourceSnapshot, or
-- create an empty 500 GB data disk by omitting all properties. You can
-- also create a disk that is larger than the default size by specifying
-- the sizeGb property.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.insert@.
module Network.Google.Resource.Compute.Disks.Insert
    (
    -- * REST Resource
      DisksInsertResource

    -- * Creating a Request
    , disksInsert
    , DisksInsert

    -- * Request Lenses
    , diRequestId
    , diSourceImage
    , diProject
    , diZone
    , diPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.disks.insert@ method which the
-- 'DisksInsert' request conforms to.
type DisksInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   QueryParam "requestId" Text :>
                     QueryParam "sourceImage" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Disk :> Post '[JSON] Operation

-- | Creates a persistent disk in the specified project using the data in the
-- request. You can create a disk with a sourceImage, a sourceSnapshot, or
-- create an empty 500 GB data disk by omitting all properties. You can
-- also create a disk that is larger than the default size by specifying
-- the sizeGb property.
--
-- /See:/ 'disksInsert' smart constructor.
data DisksInsert =
  DisksInsert'
    { _diRequestId   :: !(Maybe Text)
    , _diSourceImage :: !(Maybe Text)
    , _diProject     :: !Text
    , _diZone        :: !Text
    , _diPayload     :: !Disk
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diRequestId'
--
-- * 'diSourceImage'
--
-- * 'diProject'
--
-- * 'diZone'
--
-- * 'diPayload'
disksInsert
    :: Text -- ^ 'diProject'
    -> Text -- ^ 'diZone'
    -> Disk -- ^ 'diPayload'
    -> DisksInsert
disksInsert pDiProject_ pDiZone_ pDiPayload_ =
  DisksInsert'
    { _diRequestId = Nothing
    , _diSourceImage = Nothing
    , _diProject = pDiProject_
    , _diZone = pDiZone_
    , _diPayload = pDiPayload_
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
diRequestId :: Lens' DisksInsert (Maybe Text)
diRequestId
  = lens _diRequestId (\ s a -> s{_diRequestId = a})

-- | Optional. Source image to restore onto a disk.
diSourceImage :: Lens' DisksInsert (Maybe Text)
diSourceImage
  = lens _diSourceImage
      (\ s a -> s{_diSourceImage = a})

-- | Project ID for this request.
diProject :: Lens' DisksInsert Text
diProject
  = lens _diProject (\ s a -> s{_diProject = a})

-- | The name of the zone for this request.
diZone :: Lens' DisksInsert Text
diZone = lens _diZone (\ s a -> s{_diZone = a})

-- | Multipart request metadata.
diPayload :: Lens' DisksInsert Disk
diPayload
  = lens _diPayload (\ s a -> s{_diPayload = a})

instance GoogleRequest DisksInsert where
        type Rs DisksInsert = Operation
        type Scopes DisksInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient DisksInsert'{..}
          = go _diProject _diZone _diRequestId _diSourceImage
              (Just AltJSON)
              _diPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy DisksInsertResource)
                      mempty
