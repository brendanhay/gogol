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
-- Module      : Network.Google.Resource.Content.Pos.Sale
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submit a sale event for the given merchant.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pos.sale@.
module Network.Google.Resource.Content.Pos.Sale
    (
    -- * REST Resource
      PosSaleResource

    -- * Creating a Request
    , posSale'
    , PosSale'

    -- * Request Lenses
    , psXgafv
    , psMerchantId
    , psUploadProtocol
    , psAccessToken
    , psUploadType
    , psTargetMerchantId
    , psPayload
    , psCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.pos.sale@ method which the
-- 'PosSale'' request conforms to.
type PosSaleResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "pos" :>
             Capture "targetMerchantId" (Textual Word64) :>
               "sale" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] PosSaleRequest :>
                               Post '[JSON] PosSaleResponse

-- | Submit a sale event for the given merchant.
--
-- /See:/ 'posSale'' smart constructor.
data PosSale' =
  PosSale''
    { _psXgafv :: !(Maybe Xgafv)
    , _psMerchantId :: !(Textual Word64)
    , _psUploadProtocol :: !(Maybe Text)
    , _psAccessToken :: !(Maybe Text)
    , _psUploadType :: !(Maybe Text)
    , _psTargetMerchantId :: !(Textual Word64)
    , _psPayload :: !PosSaleRequest
    , _psCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosSale'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psXgafv'
--
-- * 'psMerchantId'
--
-- * 'psUploadProtocol'
--
-- * 'psAccessToken'
--
-- * 'psUploadType'
--
-- * 'psTargetMerchantId'
--
-- * 'psPayload'
--
-- * 'psCallback'
posSale'
    :: Word64 -- ^ 'psMerchantId'
    -> Word64 -- ^ 'psTargetMerchantId'
    -> PosSaleRequest -- ^ 'psPayload'
    -> PosSale'
posSale' pPsMerchantId_ pPsTargetMerchantId_ pPsPayload_ =
  PosSale''
    { _psXgafv = Nothing
    , _psMerchantId = _Coerce # pPsMerchantId_
    , _psUploadProtocol = Nothing
    , _psAccessToken = Nothing
    , _psUploadType = Nothing
    , _psTargetMerchantId = _Coerce # pPsTargetMerchantId_
    , _psPayload = pPsPayload_
    , _psCallback = Nothing
    }


-- | V1 error format.
psXgafv :: Lens' PosSale' (Maybe Xgafv)
psXgafv = lens _psXgafv (\ s a -> s{_psXgafv = a})

-- | The ID of the POS or inventory data provider.
psMerchantId :: Lens' PosSale' Word64
psMerchantId
  = lens _psMerchantId (\ s a -> s{_psMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psUploadProtocol :: Lens' PosSale' (Maybe Text)
psUploadProtocol
  = lens _psUploadProtocol
      (\ s a -> s{_psUploadProtocol = a})

-- | OAuth access token.
psAccessToken :: Lens' PosSale' (Maybe Text)
psAccessToken
  = lens _psAccessToken
      (\ s a -> s{_psAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psUploadType :: Lens' PosSale' (Maybe Text)
psUploadType
  = lens _psUploadType (\ s a -> s{_psUploadType = a})

-- | The ID of the target merchant.
psTargetMerchantId :: Lens' PosSale' Word64
psTargetMerchantId
  = lens _psTargetMerchantId
      (\ s a -> s{_psTargetMerchantId = a})
      . _Coerce

-- | Multipart request metadata.
psPayload :: Lens' PosSale' PosSaleRequest
psPayload
  = lens _psPayload (\ s a -> s{_psPayload = a})

-- | JSONP
psCallback :: Lens' PosSale' (Maybe Text)
psCallback
  = lens _psCallback (\ s a -> s{_psCallback = a})

instance GoogleRequest PosSale' where
        type Rs PosSale' = PosSaleResponse
        type Scopes PosSale' =
             '["https://www.googleapis.com/auth/content"]
        requestClient PosSale''{..}
          = go _psMerchantId _psTargetMerchantId _psXgafv
              _psUploadProtocol
              _psAccessToken
              _psUploadType
              _psCallback
              (Just AltJSON)
              _psPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy PosSaleResource) mempty
