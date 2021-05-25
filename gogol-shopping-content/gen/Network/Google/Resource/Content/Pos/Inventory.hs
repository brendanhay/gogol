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
-- Module      : Network.Google.Resource.Content.Pos.Inventory
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submit inventory for the given merchant.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pos.inventory@.
module Network.Google.Resource.Content.Pos.Inventory
    (
    -- * REST Resource
      PosInventoryResource

    -- * Creating a Request
    , posInventory'
    , PosInventory'

    -- * Request Lenses
    , piXgafv
    , piMerchantId
    , piUploadProtocol
    , piAccessToken
    , piUploadType
    , piTargetMerchantId
    , piPayload
    , piCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.pos.inventory@ method which the
-- 'PosInventory'' request conforms to.
type PosInventoryResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "pos" :>
             Capture "targetMerchantId" (Textual Word64) :>
               "inventory" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] PosInventoryRequest :>
                               Post '[JSON] PosInventoryResponse

-- | Submit inventory for the given merchant.
--
-- /See:/ 'posInventory'' smart constructor.
data PosInventory' =
  PosInventory''
    { _piXgafv :: !(Maybe Xgafv)
    , _piMerchantId :: !(Textual Word64)
    , _piUploadProtocol :: !(Maybe Text)
    , _piAccessToken :: !(Maybe Text)
    , _piUploadType :: !(Maybe Text)
    , _piTargetMerchantId :: !(Textual Word64)
    , _piPayload :: !PosInventoryRequest
    , _piCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosInventory'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piXgafv'
--
-- * 'piMerchantId'
--
-- * 'piUploadProtocol'
--
-- * 'piAccessToken'
--
-- * 'piUploadType'
--
-- * 'piTargetMerchantId'
--
-- * 'piPayload'
--
-- * 'piCallback'
posInventory'
    :: Word64 -- ^ 'piMerchantId'
    -> Word64 -- ^ 'piTargetMerchantId'
    -> PosInventoryRequest -- ^ 'piPayload'
    -> PosInventory'
posInventory' pPiMerchantId_ pPiTargetMerchantId_ pPiPayload_ =
  PosInventory''
    { _piXgafv = Nothing
    , _piMerchantId = _Coerce # pPiMerchantId_
    , _piUploadProtocol = Nothing
    , _piAccessToken = Nothing
    , _piUploadType = Nothing
    , _piTargetMerchantId = _Coerce # pPiTargetMerchantId_
    , _piPayload = pPiPayload_
    , _piCallback = Nothing
    }


-- | V1 error format.
piXgafv :: Lens' PosInventory' (Maybe Xgafv)
piXgafv = lens _piXgafv (\ s a -> s{_piXgafv = a})

-- | The ID of the POS or inventory data provider.
piMerchantId :: Lens' PosInventory' Word64
piMerchantId
  = lens _piMerchantId (\ s a -> s{_piMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piUploadProtocol :: Lens' PosInventory' (Maybe Text)
piUploadProtocol
  = lens _piUploadProtocol
      (\ s a -> s{_piUploadProtocol = a})

-- | OAuth access token.
piAccessToken :: Lens' PosInventory' (Maybe Text)
piAccessToken
  = lens _piAccessToken
      (\ s a -> s{_piAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piUploadType :: Lens' PosInventory' (Maybe Text)
piUploadType
  = lens _piUploadType (\ s a -> s{_piUploadType = a})

-- | The ID of the target merchant.
piTargetMerchantId :: Lens' PosInventory' Word64
piTargetMerchantId
  = lens _piTargetMerchantId
      (\ s a -> s{_piTargetMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
piPayload :: Lens' PosInventory' PosInventoryRequest
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

-- | JSONP
piCallback :: Lens' PosInventory' (Maybe Text)
piCallback
  = lens _piCallback (\ s a -> s{_piCallback = a})

instance GoogleRequest PosInventory' where
        type Rs PosInventory' = PosInventoryResponse
        type Scopes PosInventory' =
             '["https://www.googleapis.com/auth/content"]
        requestClient PosInventory''{..}
          = go _piMerchantId _piTargetMerchantId _piXgafv
              _piUploadProtocol
              _piAccessToken
              _piUploadType
              _piCallback
              (Just AltJSON)
              _piPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy PosInventoryResource)
                      mempty
