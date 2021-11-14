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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one inventory item by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.inventoryItems.get@.
module Network.Google.Resource.DFAReporting.InventoryItems.Get
    (
    -- * REST Resource
      InventoryItemsGetResource

    -- * Creating a Request
    , inventoryItemsGet
    , InventoryItemsGet

    -- * Request Lenses
    , iigXgafv
    , iigUploadProtocol
    , iigAccessToken
    , iigUploadType
    , iigProFileId
    , iigId
    , iigProjectId
    , iigCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.inventoryItems.get@ method which the
-- 'InventoryItemsGet' request conforms to.
type InventoryItemsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "projects" :>
               Capture "projectId" (Textual Int64) :>
                 "inventoryItems" :>
                   Capture "id" (Textual Int64) :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] InventoryItem

-- | Gets one inventory item by ID.
--
-- /See:/ 'inventoryItemsGet' smart constructor.
data InventoryItemsGet =
  InventoryItemsGet'
    { _iigXgafv :: !(Maybe Xgafv)
    , _iigUploadProtocol :: !(Maybe Text)
    , _iigAccessToken :: !(Maybe Text)
    , _iigUploadType :: !(Maybe Text)
    , _iigProFileId :: !(Textual Int64)
    , _iigId :: !(Textual Int64)
    , _iigProjectId :: !(Textual Int64)
    , _iigCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InventoryItemsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iigXgafv'
--
-- * 'iigUploadProtocol'
--
-- * 'iigAccessToken'
--
-- * 'iigUploadType'
--
-- * 'iigProFileId'
--
-- * 'iigId'
--
-- * 'iigProjectId'
--
-- * 'iigCallback'
inventoryItemsGet
    :: Int64 -- ^ 'iigProFileId'
    -> Int64 -- ^ 'iigId'
    -> Int64 -- ^ 'iigProjectId'
    -> InventoryItemsGet
inventoryItemsGet pIigProFileId_ pIigId_ pIigProjectId_ =
  InventoryItemsGet'
    { _iigXgafv = Nothing
    , _iigUploadProtocol = Nothing
    , _iigAccessToken = Nothing
    , _iigUploadType = Nothing
    , _iigProFileId = _Coerce # pIigProFileId_
    , _iigId = _Coerce # pIigId_
    , _iigProjectId = _Coerce # pIigProjectId_
    , _iigCallback = Nothing
    }


-- | V1 error format.
iigXgafv :: Lens' InventoryItemsGet (Maybe Xgafv)
iigXgafv = lens _iigXgafv (\ s a -> s{_iigXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
iigUploadProtocol :: Lens' InventoryItemsGet (Maybe Text)
iigUploadProtocol
  = lens _iigUploadProtocol
      (\ s a -> s{_iigUploadProtocol = a})

-- | OAuth access token.
iigAccessToken :: Lens' InventoryItemsGet (Maybe Text)
iigAccessToken
  = lens _iigAccessToken
      (\ s a -> s{_iigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
iigUploadType :: Lens' InventoryItemsGet (Maybe Text)
iigUploadType
  = lens _iigUploadType
      (\ s a -> s{_iigUploadType = a})

-- | User profile ID associated with this request.
iigProFileId :: Lens' InventoryItemsGet Int64
iigProFileId
  = lens _iigProFileId (\ s a -> s{_iigProFileId = a})
      . _Coerce

-- | Inventory item ID.
iigId :: Lens' InventoryItemsGet Int64
iigId
  = lens _iigId (\ s a -> s{_iigId = a}) . _Coerce

-- | Project ID for order documents.
iigProjectId :: Lens' InventoryItemsGet Int64
iigProjectId
  = lens _iigProjectId (\ s a -> s{_iigProjectId = a})
      . _Coerce

-- | JSONP
iigCallback :: Lens' InventoryItemsGet (Maybe Text)
iigCallback
  = lens _iigCallback (\ s a -> s{_iigCallback = a})

instance GoogleRequest InventoryItemsGet where
        type Rs InventoryItemsGet = InventoryItem
        type Scopes InventoryItemsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient InventoryItemsGet'{..}
          = go _iigProFileId _iigProjectId _iigId _iigXgafv
              _iigUploadProtocol
              _iigAccessToken
              _iigUploadType
              _iigCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy InventoryItemsGetResource)
                      mempty
