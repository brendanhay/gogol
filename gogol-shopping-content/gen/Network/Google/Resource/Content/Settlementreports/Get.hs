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
-- Module      : Network.Google.Resource.Content.Settlementreports.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a settlement report from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.settlementreports.get@.
module Network.Google.Resource.Content.Settlementreports.Get
    (
    -- * REST Resource
      SettlementreportsGetResource

    -- * Creating a Request
    , settlementreportsGet
    , SettlementreportsGet

    -- * Request Lenses
    , sggXgafv
    , sggMerchantId
    , sggUploadProtocol
    , sggAccessToken
    , sggUploadType
    , sggSettlementId
    , sggCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.settlementreports.get@ method which the
-- 'SettlementreportsGet' request conforms to.
type SettlementreportsGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "settlementreports" :>
             Capture "settlementId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] SettlementReport

-- | Retrieves a settlement report from your Merchant Center account.
--
-- /See:/ 'settlementreportsGet' smart constructor.
data SettlementreportsGet =
  SettlementreportsGet'
    { _sggXgafv :: !(Maybe Xgafv)
    , _sggMerchantId :: !(Textual Word64)
    , _sggUploadProtocol :: !(Maybe Text)
    , _sggAccessToken :: !(Maybe Text)
    , _sggUploadType :: !(Maybe Text)
    , _sggSettlementId :: !Text
    , _sggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettlementreportsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sggXgafv'
--
-- * 'sggMerchantId'
--
-- * 'sggUploadProtocol'
--
-- * 'sggAccessToken'
--
-- * 'sggUploadType'
--
-- * 'sggSettlementId'
--
-- * 'sggCallback'
settlementreportsGet
    :: Word64 -- ^ 'sggMerchantId'
    -> Text -- ^ 'sggSettlementId'
    -> SettlementreportsGet
settlementreportsGet pSggMerchantId_ pSggSettlementId_ =
  SettlementreportsGet'
    { _sggXgafv = Nothing
    , _sggMerchantId = _Coerce # pSggMerchantId_
    , _sggUploadProtocol = Nothing
    , _sggAccessToken = Nothing
    , _sggUploadType = Nothing
    , _sggSettlementId = pSggSettlementId_
    , _sggCallback = Nothing
    }


-- | V1 error format.
sggXgafv :: Lens' SettlementreportsGet (Maybe Xgafv)
sggXgafv = lens _sggXgafv (\ s a -> s{_sggXgafv = a})

-- | The Merchant Center account of the settlement report.
sggMerchantId :: Lens' SettlementreportsGet Word64
sggMerchantId
  = lens _sggMerchantId
      (\ s a -> s{_sggMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sggUploadProtocol :: Lens' SettlementreportsGet (Maybe Text)
sggUploadProtocol
  = lens _sggUploadProtocol
      (\ s a -> s{_sggUploadProtocol = a})

-- | OAuth access token.
sggAccessToken :: Lens' SettlementreportsGet (Maybe Text)
sggAccessToken
  = lens _sggAccessToken
      (\ s a -> s{_sggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sggUploadType :: Lens' SettlementreportsGet (Maybe Text)
sggUploadType
  = lens _sggUploadType
      (\ s a -> s{_sggUploadType = a})

-- | The Google-provided ID of the settlement.
sggSettlementId :: Lens' SettlementreportsGet Text
sggSettlementId
  = lens _sggSettlementId
      (\ s a -> s{_sggSettlementId = a})

-- | JSONP
sggCallback :: Lens' SettlementreportsGet (Maybe Text)
sggCallback
  = lens _sggCallback (\ s a -> s{_sggCallback = a})

instance GoogleRequest SettlementreportsGet where
        type Rs SettlementreportsGet = SettlementReport
        type Scopes SettlementreportsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient SettlementreportsGet'{..}
          = go _sggMerchantId _sggSettlementId _sggXgafv
              _sggUploadProtocol
              _sggAccessToken
              _sggUploadType
              _sggCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy SettlementreportsGetResource)
                      mempty
