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
-- Module      : Network.Google.Resource.Compute.Disks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified persistent disk. Deleting a disk removes its data
-- permanently and is irreversible. However, deleting a disk does not
-- delete any snapshots previously made from the disk. You must separately
-- delete snapshots.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.delete@.
module Network.Google.Resource.Compute.Disks.Delete
    (
    -- * REST Resource
      DisksDeleteResource

    -- * Creating a Request
    , disksDelete
    , DisksDelete

    -- * Request Lenses
    , ddProject
    , ddDisk
    , ddZone
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.disks.delete@ method which the
-- 'DisksDelete' request conforms to.
type DisksDeleteResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "disks" :>
             Capture "disk" Text :>
               QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified persistent disk. Deleting a disk removes its data
-- permanently and is irreversible. However, deleting a disk does not
-- delete any snapshots previously made from the disk. You must separately
-- delete snapshots.
--
-- /See:/ 'disksDelete' smart constructor.
data DisksDelete = DisksDelete
    { _ddProject :: !Text
    , _ddDisk    :: !Text
    , _ddZone    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddProject'
--
-- * 'ddDisk'
--
-- * 'ddZone'
disksDelete
    :: Text -- ^ 'ddProject'
    -> Text -- ^ 'ddDisk'
    -> Text -- ^ 'ddZone'
    -> DisksDelete
disksDelete pDdProject_ pDdDisk_ pDdZone_ =
    DisksDelete
    { _ddProject = pDdProject_
    , _ddDisk = pDdDisk_
    , _ddZone = pDdZone_
    }

-- | Project ID for this request.
ddProject :: Lens' DisksDelete Text
ddProject
  = lens _ddProject (\ s a -> s{_ddProject = a})

-- | Name of the persistent disk to delete.
ddDisk :: Lens' DisksDelete Text
ddDisk = lens _ddDisk (\ s a -> s{_ddDisk = a})

-- | The name of the zone for this request.
ddZone :: Lens' DisksDelete Text
ddZone = lens _ddZone (\ s a -> s{_ddZone = a})

instance GoogleRequest DisksDelete where
        type Rs DisksDelete = Operation
        requestClient DisksDelete{..}
          = go _ddProject _ddZone _ddDisk (Just AltJSON)
              computeService
          where go
                  = buildClient (Proxy :: Proxy DisksDeleteResource)
                      mempty
