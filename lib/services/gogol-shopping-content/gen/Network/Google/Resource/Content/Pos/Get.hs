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
-- Module      : Network.Google.Resource.Content.Pos.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the given store.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pos.get@.
module Network.Google.Resource.Content.Pos.Get
    (
    -- * REST Resource
      PosGetResource

    -- * Creating a Request
    , posGet
    , PosGet

    -- * Request Lenses
    , pXgafv
    , pMerchantId
    , pStoreCode
    , pUploadProtocol
    , pAccessToken
    , pUploadType
    , pTargetMerchantId
    , pCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.pos.get@ method which the
-- 'PosGet' request conforms to.
type PosGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "pos" :>
             Capture "targetMerchantId" (Textual Word64) :>
               "store" :>
                 Capture "storeCode" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] PosStore

-- | Retrieves information about the given store.
--
-- /See:/ 'posGet' smart constructor.
data PosGet =
  PosGet'
    { _pXgafv :: !(Maybe Xgafv)
    , _pMerchantId :: !(Textual Word64)
    , _pStoreCode :: !Text
    , _pUploadProtocol :: !(Maybe Text)
    , _pAccessToken :: !(Maybe Text)
    , _pUploadType :: !(Maybe Text)
    , _pTargetMerchantId :: !(Textual Word64)
    , _pCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pXgafv'
--
-- * 'pMerchantId'
--
-- * 'pStoreCode'
--
-- * 'pUploadProtocol'
--
-- * 'pAccessToken'
--
-- * 'pUploadType'
--
-- * 'pTargetMerchantId'
--
-- * 'pCallback'
posGet
    :: Word64 -- ^ 'pMerchantId'
    -> Text -- ^ 'pStoreCode'
    -> Word64 -- ^ 'pTargetMerchantId'
    -> PosGet
posGet pPMerchantId_ pPStoreCode_ pPTargetMerchantId_ =
  PosGet'
    { _pXgafv = Nothing
    , _pMerchantId = _Coerce # pPMerchantId_
    , _pStoreCode = pPStoreCode_
    , _pUploadProtocol = Nothing
    , _pAccessToken = Nothing
    , _pUploadType = Nothing
    , _pTargetMerchantId = _Coerce # pPTargetMerchantId_
    , _pCallback = Nothing
    }


-- | V1 error format.
pXgafv :: Lens' PosGet (Maybe Xgafv)
pXgafv = lens _pXgafv (\ s a -> s{_pXgafv = a})

-- | The ID of the POS or inventory data provider.
pMerchantId :: Lens' PosGet Word64
pMerchantId
  = lens _pMerchantId (\ s a -> s{_pMerchantId = a}) .
      _Coerce

-- | A store code that is unique per merchant.
pStoreCode :: Lens' PosGet Text
pStoreCode
  = lens _pStoreCode (\ s a -> s{_pStoreCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pUploadProtocol :: Lens' PosGet (Maybe Text)
pUploadProtocol
  = lens _pUploadProtocol
      (\ s a -> s{_pUploadProtocol = a})

-- | OAuth access token.
pAccessToken :: Lens' PosGet (Maybe Text)
pAccessToken
  = lens _pAccessToken (\ s a -> s{_pAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pUploadType :: Lens' PosGet (Maybe Text)
pUploadType
  = lens _pUploadType (\ s a -> s{_pUploadType = a})

-- | The ID of the target merchant.
pTargetMerchantId :: Lens' PosGet Word64
pTargetMerchantId
  = lens _pTargetMerchantId
      (\ s a -> s{_pTargetMerchantId = a})
      . _Coerce

-- | JSONP
pCallback :: Lens' PosGet (Maybe Text)
pCallback
  = lens _pCallback (\ s a -> s{_pCallback = a})

instance GoogleRequest PosGet where
        type Rs PosGet = PosStore
        type Scopes PosGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient PosGet'{..}
          = go _pMerchantId _pTargetMerchantId _pStoreCode
              _pXgafv
              _pUploadProtocol
              _pAccessToken
              _pUploadType
              _pCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy PosGetResource) mempty
