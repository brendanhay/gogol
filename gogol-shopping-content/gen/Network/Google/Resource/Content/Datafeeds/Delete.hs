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
-- Module      : Network.Google.Resource.Content.Datafeeds.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a datafeed configuration from your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeeds.delete@.
module Network.Google.Resource.Content.Datafeeds.Delete
    (
    -- * REST Resource
      DatafeedsDeleteResource

    -- * Creating a Request
    , datafeedsDelete
    , DatafeedsDelete

    -- * Request Lenses
    , ddXgafv
    , ddMerchantId
    , ddUploadProtocol
    , ddAccessToken
    , ddUploadType
    , ddDatafeedId
    , ddCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.delete@ method which the
-- 'DatafeedsDelete' request conforms to.
type DatafeedsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a datafeed configuration from your Merchant Center account.
--
-- /See:/ 'datafeedsDelete' smart constructor.
data DatafeedsDelete =
  DatafeedsDelete'
    { _ddXgafv :: !(Maybe Xgafv)
    , _ddMerchantId :: !(Textual Word64)
    , _ddUploadProtocol :: !(Maybe Text)
    , _ddAccessToken :: !(Maybe Text)
    , _ddUploadType :: !(Maybe Text)
    , _ddDatafeedId :: !(Textual Word64)
    , _ddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddXgafv'
--
-- * 'ddMerchantId'
--
-- * 'ddUploadProtocol'
--
-- * 'ddAccessToken'
--
-- * 'ddUploadType'
--
-- * 'ddDatafeedId'
--
-- * 'ddCallback'
datafeedsDelete
    :: Word64 -- ^ 'ddMerchantId'
    -> Word64 -- ^ 'ddDatafeedId'
    -> DatafeedsDelete
datafeedsDelete pDdMerchantId_ pDdDatafeedId_ =
  DatafeedsDelete'
    { _ddXgafv = Nothing
    , _ddMerchantId = _Coerce # pDdMerchantId_
    , _ddUploadProtocol = Nothing
    , _ddAccessToken = Nothing
    , _ddUploadType = Nothing
    , _ddDatafeedId = _Coerce # pDdDatafeedId_
    , _ddCallback = Nothing
    }


-- | V1 error format.
ddXgafv :: Lens' DatafeedsDelete (Maybe Xgafv)
ddXgafv = lens _ddXgafv (\ s a -> s{_ddXgafv = a})

-- | The ID of the account that manages the datafeed. This account cannot be
-- a multi-client account.
ddMerchantId :: Lens' DatafeedsDelete Word64
ddMerchantId
  = lens _ddMerchantId (\ s a -> s{_ddMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ddUploadProtocol :: Lens' DatafeedsDelete (Maybe Text)
ddUploadProtocol
  = lens _ddUploadProtocol
      (\ s a -> s{_ddUploadProtocol = a})

-- | OAuth access token.
ddAccessToken :: Lens' DatafeedsDelete (Maybe Text)
ddAccessToken
  = lens _ddAccessToken
      (\ s a -> s{_ddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ddUploadType :: Lens' DatafeedsDelete (Maybe Text)
ddUploadType
  = lens _ddUploadType (\ s a -> s{_ddUploadType = a})

-- | The ID of the datafeed.
ddDatafeedId :: Lens' DatafeedsDelete Word64
ddDatafeedId
  = lens _ddDatafeedId (\ s a -> s{_ddDatafeedId = a})
      . _Coerce

-- | JSONP
ddCallback :: Lens' DatafeedsDelete (Maybe Text)
ddCallback
  = lens _ddCallback (\ s a -> s{_ddCallback = a})

instance GoogleRequest DatafeedsDelete where
        type Rs DatafeedsDelete = ()
        type Scopes DatafeedsDelete =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedsDelete'{..}
          = go _ddMerchantId _ddDatafeedId _ddXgafv
              _ddUploadProtocol
              _ddAccessToken
              _ddUploadType
              _ddCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedsDeleteResource)
                      mempty
