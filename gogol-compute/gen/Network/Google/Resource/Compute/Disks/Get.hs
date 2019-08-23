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
-- Module      : Network.Google.Resource.Compute.Disks.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a specified persistent disk. Gets a list of available persistent
-- disks by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.get@.
module Network.Google.Resource.Compute.Disks.Get
    (
    -- * REST Resource
      DisksGetResource

    -- * Creating a Request
    , disksGet
    , DisksGet

    -- * Request Lenses
    , dgProject
    , dgDisk
    , dgZone
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.disks.get@ method which the
-- 'DisksGet' request conforms to.
type DisksGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   Capture "disk" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Disk

-- | Returns a specified persistent disk. Gets a list of available persistent
-- disks by making a list() request.
--
-- /See:/ 'disksGet' smart constructor.
data DisksGet =
  DisksGet'
    { _dgProject :: !Text
    , _dgDisk    :: !Text
    , _dgZone    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgProject'
--
-- * 'dgDisk'
--
-- * 'dgZone'
disksGet
    :: Text -- ^ 'dgProject'
    -> Text -- ^ 'dgDisk'
    -> Text -- ^ 'dgZone'
    -> DisksGet
disksGet pDgProject_ pDgDisk_ pDgZone_ =
  DisksGet' {_dgProject = pDgProject_, _dgDisk = pDgDisk_, _dgZone = pDgZone_}


-- | Project ID for this request.
dgProject :: Lens' DisksGet Text
dgProject
  = lens _dgProject (\ s a -> s{_dgProject = a})

-- | Name of the persistent disk to return.
dgDisk :: Lens' DisksGet Text
dgDisk = lens _dgDisk (\ s a -> s{_dgDisk = a})

-- | The name of the zone for this request.
dgZone :: Lens' DisksGet Text
dgZone = lens _dgZone (\ s a -> s{_dgZone = a})

instance GoogleRequest DisksGet where
        type Rs DisksGet = Disk
        type Scopes DisksGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient DisksGet'{..}
          = go _dgProject _dgZone _dgDisk (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy DisksGetResource)
                      mempty
