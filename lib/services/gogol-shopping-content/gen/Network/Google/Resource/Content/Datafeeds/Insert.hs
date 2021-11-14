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
-- Module      : Network.Google.Resource.Content.Datafeeds.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Registers a datafeed configuration with your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeeds.insert@.
module Network.Google.Resource.Content.Datafeeds.Insert
    (
    -- * REST Resource
      DatafeedsInsertResource

    -- * Creating a Request
    , datafeedsInsert
    , DatafeedsInsert

    -- * Request Lenses
    , diXgafv
    , diMerchantId
    , diUploadProtocol
    , diAccessToken
    , diUploadType
    , diPayload
    , diCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.insert@ method which the
-- 'DatafeedsInsert' request conforms to.
type DatafeedsInsertResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeeds" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Datafeed :> Post '[JSON] Datafeed

-- | Registers a datafeed configuration with your Merchant Center account.
--
-- /See:/ 'datafeedsInsert' smart constructor.
data DatafeedsInsert =
  DatafeedsInsert'
    { _diXgafv :: !(Maybe Xgafv)
    , _diMerchantId :: !(Textual Word64)
    , _diUploadProtocol :: !(Maybe Text)
    , _diAccessToken :: !(Maybe Text)
    , _diUploadType :: !(Maybe Text)
    , _diPayload :: !Datafeed
    , _diCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diXgafv'
--
-- * 'diMerchantId'
--
-- * 'diUploadProtocol'
--
-- * 'diAccessToken'
--
-- * 'diUploadType'
--
-- * 'diPayload'
--
-- * 'diCallback'
datafeedsInsert
    :: Word64 -- ^ 'diMerchantId'
    -> Datafeed -- ^ 'diPayload'
    -> DatafeedsInsert
datafeedsInsert pDiMerchantId_ pDiPayload_ =
  DatafeedsInsert'
    { _diXgafv = Nothing
    , _diMerchantId = _Coerce # pDiMerchantId_
    , _diUploadProtocol = Nothing
    , _diAccessToken = Nothing
    , _diUploadType = Nothing
    , _diPayload = pDiPayload_
    , _diCallback = Nothing
    }


-- | V1 error format.
diXgafv :: Lens' DatafeedsInsert (Maybe Xgafv)
diXgafv = lens _diXgafv (\ s a -> s{_diXgafv = a})

-- | The ID of the account that manages the datafeed. This account cannot be
-- a multi-client account.
diMerchantId :: Lens' DatafeedsInsert Word64
diMerchantId
  = lens _diMerchantId (\ s a -> s{_diMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
diUploadProtocol :: Lens' DatafeedsInsert (Maybe Text)
diUploadProtocol
  = lens _diUploadProtocol
      (\ s a -> s{_diUploadProtocol = a})

-- | OAuth access token.
diAccessToken :: Lens' DatafeedsInsert (Maybe Text)
diAccessToken
  = lens _diAccessToken
      (\ s a -> s{_diAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
diUploadType :: Lens' DatafeedsInsert (Maybe Text)
diUploadType
  = lens _diUploadType (\ s a -> s{_diUploadType = a})

-- | Multipart request metadata.
diPayload :: Lens' DatafeedsInsert Datafeed
diPayload
  = lens _diPayload (\ s a -> s{_diPayload = a})

-- | JSONP
diCallback :: Lens' DatafeedsInsert (Maybe Text)
diCallback
  = lens _diCallback (\ s a -> s{_diCallback = a})

instance GoogleRequest DatafeedsInsert where
        type Rs DatafeedsInsert = Datafeed
        type Scopes DatafeedsInsert =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedsInsert'{..}
          = go _diMerchantId _diXgafv _diUploadProtocol
              _diAccessToken
              _diUploadType
              _diCallback
              (Just AltJSON)
              _diPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedsInsertResource)
                      mempty
