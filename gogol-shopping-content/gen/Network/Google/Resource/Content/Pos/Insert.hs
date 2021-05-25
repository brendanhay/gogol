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
-- Module      : Network.Google.Resource.Content.Pos.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a store for the given merchant.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pos.insert@.
module Network.Google.Resource.Content.Pos.Insert
    (
    -- * REST Resource
      PosInsertResource

    -- * Creating a Request
    , posInsert
    , PosInsert

    -- * Request Lenses
    , posoXgafv
    , posoMerchantId
    , posoUploadProtocol
    , posoAccessToken
    , posoUploadType
    , posoTargetMerchantId
    , posoPayload
    , posoCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.pos.insert@ method which the
-- 'PosInsert' request conforms to.
type PosInsertResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "pos" :>
             Capture "targetMerchantId" (Textual Word64) :>
               "store" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] PosStore :> Post '[JSON] PosStore

-- | Creates a store for the given merchant.
--
-- /See:/ 'posInsert' smart constructor.
data PosInsert =
  PosInsert'
    { _posoXgafv :: !(Maybe Xgafv)
    , _posoMerchantId :: !(Textual Word64)
    , _posoUploadProtocol :: !(Maybe Text)
    , _posoAccessToken :: !(Maybe Text)
    , _posoUploadType :: !(Maybe Text)
    , _posoTargetMerchantId :: !(Textual Word64)
    , _posoPayload :: !PosStore
    , _posoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posoXgafv'
--
-- * 'posoMerchantId'
--
-- * 'posoUploadProtocol'
--
-- * 'posoAccessToken'
--
-- * 'posoUploadType'
--
-- * 'posoTargetMerchantId'
--
-- * 'posoPayload'
--
-- * 'posoCallback'
posInsert
    :: Word64 -- ^ 'posoMerchantId'
    -> Word64 -- ^ 'posoTargetMerchantId'
    -> PosStore -- ^ 'posoPayload'
    -> PosInsert
posInsert pPosoMerchantId_ pPosoTargetMerchantId_ pPosoPayload_ =
  PosInsert'
    { _posoXgafv = Nothing
    , _posoMerchantId = _Coerce # pPosoMerchantId_
    , _posoUploadProtocol = Nothing
    , _posoAccessToken = Nothing
    , _posoUploadType = Nothing
    , _posoTargetMerchantId = _Coerce # pPosoTargetMerchantId_
    , _posoPayload = pPosoPayload_
    , _posoCallback = Nothing
    }


-- | V1 error format.
posoXgafv :: Lens' PosInsert (Maybe Xgafv)
posoXgafv
  = lens _posoXgafv (\ s a -> s{_posoXgafv = a})

-- | The ID of the POS or inventory data provider.
posoMerchantId :: Lens' PosInsert Word64
posoMerchantId
  = lens _posoMerchantId
      (\ s a -> s{_posoMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
posoUploadProtocol :: Lens' PosInsert (Maybe Text)
posoUploadProtocol
  = lens _posoUploadProtocol
      (\ s a -> s{_posoUploadProtocol = a})

-- | OAuth access token.
posoAccessToken :: Lens' PosInsert (Maybe Text)
posoAccessToken
  = lens _posoAccessToken
      (\ s a -> s{_posoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
posoUploadType :: Lens' PosInsert (Maybe Text)
posoUploadType
  = lens _posoUploadType
      (\ s a -> s{_posoUploadType = a})

-- | The ID of the target merchant.
posoTargetMerchantId :: Lens' PosInsert Word64
posoTargetMerchantId
  = lens _posoTargetMerchantId
      (\ s a -> s{_posoTargetMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
posoPayload :: Lens' PosInsert PosStore
posoPayload
  = lens _posoPayload (\ s a -> s{_posoPayload = a})

-- | JSONP
posoCallback :: Lens' PosInsert (Maybe Text)
posoCallback
  = lens _posoCallback (\ s a -> s{_posoCallback = a})

instance GoogleRequest PosInsert where
        type Rs PosInsert = PosStore
        type Scopes PosInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient PosInsert'{..}
          = go _posoMerchantId _posoTargetMerchantId _posoXgafv
              _posoUploadProtocol
              _posoAccessToken
              _posoUploadType
              _posoCallback
              (Just AltJSON)
              _posoPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy PosInsertResource)
                      mempty
