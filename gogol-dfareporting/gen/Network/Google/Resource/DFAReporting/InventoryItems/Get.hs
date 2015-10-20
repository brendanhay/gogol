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
-- Module      : Network.Google.Resource.DFAReporting.InventoryItems.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one inventory item by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.inventoryItems.get@.
module Network.Google.Resource.DFAReporting.InventoryItems.Get
    (
    -- * REST Resource
      InventoryItemsGetResource

    -- * Creating a Request
    , inventoryItemsGet
    , InventoryItemsGet

    -- * Request Lenses
    , iigProFileId
    , iigId
    , iigProjectId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.inventoryItems.get@ method which the
-- 'InventoryItemsGet' request conforms to.
type InventoryItemsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "projectId" Int64 :>
             "inventoryItems" :>
               Capture "id" Int64 :>
                 QueryParam "alt" AltJSON :> Get '[JSON] InventoryItem

-- | Gets one inventory item by ID.
--
-- /See:/ 'inventoryItemsGet' smart constructor.
data InventoryItemsGet = InventoryItemsGet
    { _iigProFileId :: !Int64
    , _iigId        :: !Int64
    , _iigProjectId :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryItemsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iigProFileId'
--
-- * 'iigId'
--
-- * 'iigProjectId'
inventoryItemsGet
    :: Int64 -- ^ 'iigProFileId'
    -> Int64 -- ^ 'iigId'
    -> Int64 -- ^ 'iigProjectId'
    -> InventoryItemsGet
inventoryItemsGet pIigProFileId_ pIigId_ pIigProjectId_ =
    InventoryItemsGet
    { _iigProFileId = pIigProFileId_
    , _iigId = pIigId_
    , _iigProjectId = pIigProjectId_
    }

-- | User profile ID associated with this request.
iigProFileId :: Lens' InventoryItemsGet Int64
iigProFileId
  = lens _iigProFileId (\ s a -> s{_iigProFileId = a})

-- | Inventory item ID.
iigId :: Lens' InventoryItemsGet Int64
iigId = lens _iigId (\ s a -> s{_iigId = a})

-- | Project ID for order documents.
iigProjectId :: Lens' InventoryItemsGet Int64
iigProjectId
  = lens _iigProjectId (\ s a -> s{_iigProjectId = a})

instance GoogleRequest InventoryItemsGet where
        type Rs InventoryItemsGet = InventoryItem
        requestClient InventoryItemsGet{..}
          = go _iigProFileId _iigProjectId _iigId
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy InventoryItemsGetResource)
                      mempty
