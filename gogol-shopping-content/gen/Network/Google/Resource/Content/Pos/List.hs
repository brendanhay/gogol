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
-- Module      : Network.Google.Resource.Content.Pos.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the stores of the target merchant.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pos.list@.
module Network.Google.Resource.Content.Pos.List
    (
    -- * REST Resource
      PosListResource

    -- * Creating a Request
    , posList
    , PosList

    -- * Request Lenses
    , pllXgafv
    , pllMerchantId
    , pllUploadProtocol
    , pllAccessToken
    , pllUploadType
    , pllTargetMerchantId
    , pllCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.pos.list@ method which the
-- 'PosList' request conforms to.
type PosListResource =
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
                             Get '[JSON] PosListResponse

-- | Lists the stores of the target merchant.
--
-- /See:/ 'posList' smart constructor.
data PosList =
  PosList'
    { _pllXgafv :: !(Maybe Xgafv)
    , _pllMerchantId :: !(Textual Word64)
    , _pllUploadProtocol :: !(Maybe Text)
    , _pllAccessToken :: !(Maybe Text)
    , _pllUploadType :: !(Maybe Text)
    , _pllTargetMerchantId :: !(Textual Word64)
    , _pllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pllXgafv'
--
-- * 'pllMerchantId'
--
-- * 'pllUploadProtocol'
--
-- * 'pllAccessToken'
--
-- * 'pllUploadType'
--
-- * 'pllTargetMerchantId'
--
-- * 'pllCallback'
posList
    :: Word64 -- ^ 'pllMerchantId'
    -> Word64 -- ^ 'pllTargetMerchantId'
    -> PosList
posList pPllMerchantId_ pPllTargetMerchantId_ =
  PosList'
    { _pllXgafv = Nothing
    , _pllMerchantId = _Coerce # pPllMerchantId_
    , _pllUploadProtocol = Nothing
    , _pllAccessToken = Nothing
    , _pllUploadType = Nothing
    , _pllTargetMerchantId = _Coerce # pPllTargetMerchantId_
    , _pllCallback = Nothing
    }


-- | V1 error format.
pllXgafv :: Lens' PosList (Maybe Xgafv)
pllXgafv = lens _pllXgafv (\ s a -> s{_pllXgafv = a})

-- | The ID of the POS or inventory data provider.
pllMerchantId :: Lens' PosList Word64
pllMerchantId
  = lens _pllMerchantId
      (\ s a -> s{_pllMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pllUploadProtocol :: Lens' PosList (Maybe Text)
pllUploadProtocol
  = lens _pllUploadProtocol
      (\ s a -> s{_pllUploadProtocol = a})

-- | OAuth access token.
pllAccessToken :: Lens' PosList (Maybe Text)
pllAccessToken
  = lens _pllAccessToken
      (\ s a -> s{_pllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pllUploadType :: Lens' PosList (Maybe Text)
pllUploadType
  = lens _pllUploadType
      (\ s a -> s{_pllUploadType = a})

-- | The ID of the target merchant.
pllTargetMerchantId :: Lens' PosList Word64
pllTargetMerchantId
  = lens _pllTargetMerchantId
      (\ s a -> s{_pllTargetMerchantId = a})
      . _Coerce

-- | JSONP
pllCallback :: Lens' PosList (Maybe Text)
pllCallback
  = lens _pllCallback (\ s a -> s{_pllCallback = a})

instance GoogleRequest PosList where
        type Rs PosList = PosListResponse
        type Scopes PosList =
             '["https://www.googleapis.com/auth/content"]
        requestClient PosList'{..}
          = go _pllMerchantId _pllTargetMerchantId _pllXgafv
              _pllUploadProtocol
              _pllAccessToken
              _pllUploadType
              _pllCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy PosListResource) mempty
