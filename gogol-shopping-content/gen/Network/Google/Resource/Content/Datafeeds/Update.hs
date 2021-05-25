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
-- Module      : Network.Google.Resource.Content.Datafeeds.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a datafeed configuration of your Merchant Center account. Any
-- fields that are not provided are deleted from the resource.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeeds.update@.
module Network.Google.Resource.Content.Datafeeds.Update
    (
    -- * REST Resource
      DatafeedsUpdateResource

    -- * Creating a Request
    , datafeedsUpdate
    , DatafeedsUpdate

    -- * Request Lenses
    , duXgafv
    , duMerchantId
    , duUploadProtocol
    , duAccessToken
    , duUploadType
    , duPayload
    , duDatafeedId
    , duCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.update@ method which the
-- 'DatafeedsUpdate' request conforms to.
type DatafeedsUpdateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "datafeeds" :>
             Capture "datafeedId" (Textual Word64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Datafeed :> Put '[JSON] Datafeed

-- | Updates a datafeed configuration of your Merchant Center account. Any
-- fields that are not provided are deleted from the resource.
--
-- /See:/ 'datafeedsUpdate' smart constructor.
data DatafeedsUpdate =
  DatafeedsUpdate'
    { _duXgafv :: !(Maybe Xgafv)
    , _duMerchantId :: !(Textual Word64)
    , _duUploadProtocol :: !(Maybe Text)
    , _duAccessToken :: !(Maybe Text)
    , _duUploadType :: !(Maybe Text)
    , _duPayload :: !Datafeed
    , _duDatafeedId :: !(Textual Word64)
    , _duCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'duXgafv'
--
-- * 'duMerchantId'
--
-- * 'duUploadProtocol'
--
-- * 'duAccessToken'
--
-- * 'duUploadType'
--
-- * 'duPayload'
--
-- * 'duDatafeedId'
--
-- * 'duCallback'
datafeedsUpdate
    :: Word64 -- ^ 'duMerchantId'
    -> Datafeed -- ^ 'duPayload'
    -> Word64 -- ^ 'duDatafeedId'
    -> DatafeedsUpdate
datafeedsUpdate pDuMerchantId_ pDuPayload_ pDuDatafeedId_ =
  DatafeedsUpdate'
    { _duXgafv = Nothing
    , _duMerchantId = _Coerce # pDuMerchantId_
    , _duUploadProtocol = Nothing
    , _duAccessToken = Nothing
    , _duUploadType = Nothing
    , _duPayload = pDuPayload_
    , _duDatafeedId = _Coerce # pDuDatafeedId_
    , _duCallback = Nothing
    }


-- | V1 error format.
duXgafv :: Lens' DatafeedsUpdate (Maybe Xgafv)
duXgafv = lens _duXgafv (\ s a -> s{_duXgafv = a})

-- | The ID of the account that manages the datafeed. This account cannot be
-- a multi-client account.
duMerchantId :: Lens' DatafeedsUpdate Word64
duMerchantId
  = lens _duMerchantId (\ s a -> s{_duMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
duUploadProtocol :: Lens' DatafeedsUpdate (Maybe Text)
duUploadProtocol
  = lens _duUploadProtocol
      (\ s a -> s{_duUploadProtocol = a})

-- | OAuth access token.
duAccessToken :: Lens' DatafeedsUpdate (Maybe Text)
duAccessToken
  = lens _duAccessToken
      (\ s a -> s{_duAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
duUploadType :: Lens' DatafeedsUpdate (Maybe Text)
duUploadType
  = lens _duUploadType (\ s a -> s{_duUploadType = a})

-- | Multipart request metadata.
duPayload :: Lens' DatafeedsUpdate Datafeed
duPayload
  = lens _duPayload (\ s a -> s{_duPayload = a})

-- | The ID of the datafeed.
duDatafeedId :: Lens' DatafeedsUpdate Word64
duDatafeedId
  = lens _duDatafeedId (\ s a -> s{_duDatafeedId = a})
      . _Coerce

-- | JSONP
duCallback :: Lens' DatafeedsUpdate (Maybe Text)
duCallback
  = lens _duCallback (\ s a -> s{_duCallback = a})

instance GoogleRequest DatafeedsUpdate where
        type Rs DatafeedsUpdate = Datafeed
        type Scopes DatafeedsUpdate =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedsUpdate'{..}
          = go _duMerchantId _duDatafeedId _duXgafv
              _duUploadProtocol
              _duAccessToken
              _duUploadType
              _duCallback
              (Just AltJSON)
              _duPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedsUpdateResource)
                      mempty
