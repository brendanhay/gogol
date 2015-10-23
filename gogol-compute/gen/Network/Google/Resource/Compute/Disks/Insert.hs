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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a persistent disk in the specified project using the data
-- included in the request.
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
                   QueryParam "sourceImage" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Disk :> Post '[JSON] Operation

-- | Creates a persistent disk in the specified project using the data
-- included in the request.
--
-- /See:/ 'disksInsert' smart constructor.
data DisksInsert = DisksInsert
    { _diSourceImage :: !(Maybe Text)
    , _diProject     :: !Text
    , _diZone        :: !Text
    , _diPayload     :: !Disk
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    DisksInsert
    { _diSourceImage = Nothing
    , _diProject = pDiProject_
    , _diZone = pDiZone_
    , _diPayload = pDiPayload_
    }

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
        requestClient DisksInsert{..}
          = go _diProject _diZone _diSourceImage (Just AltJSON)
              _diPayload
              computeService
          where go
                  = buildClient (Proxy :: Proxy DisksInsertResource)
                      mempty
