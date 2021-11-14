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
-- Module      : Network.Google.Resource.Content.Returnpolicy.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the return policies of the Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnpolicy.list@.
module Network.Google.Resource.Content.Returnpolicy.List
    (
    -- * REST Resource
      ReturnpolicyListResource

    -- * Creating a Request
    , returnpolicyList
    , ReturnpolicyList

    -- * Request Lenses
    , reteXgafv
    , reteMerchantId
    , reteUploadProtocol
    , reteAccessToken
    , reteUploadType
    , reteCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.returnpolicy.list@ method which the
-- 'ReturnpolicyList' request conforms to.
type ReturnpolicyListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "returnpolicy" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ReturnpolicyListResponse

-- | Lists the return policies of the Merchant Center account.
--
-- /See:/ 'returnpolicyList' smart constructor.
data ReturnpolicyList =
  ReturnpolicyList'
    { _reteXgafv :: !(Maybe Xgafv)
    , _reteMerchantId :: !(Textual Word64)
    , _reteUploadProtocol :: !(Maybe Text)
    , _reteAccessToken :: !(Maybe Text)
    , _reteUploadType :: !(Maybe Text)
    , _reteCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reteXgafv'
--
-- * 'reteMerchantId'
--
-- * 'reteUploadProtocol'
--
-- * 'reteAccessToken'
--
-- * 'reteUploadType'
--
-- * 'reteCallback'
returnpolicyList
    :: Word64 -- ^ 'reteMerchantId'
    -> ReturnpolicyList
returnpolicyList pReteMerchantId_ =
  ReturnpolicyList'
    { _reteXgafv = Nothing
    , _reteMerchantId = _Coerce # pReteMerchantId_
    , _reteUploadProtocol = Nothing
    , _reteAccessToken = Nothing
    , _reteUploadType = Nothing
    , _reteCallback = Nothing
    }


-- | V1 error format.
reteXgafv :: Lens' ReturnpolicyList (Maybe Xgafv)
reteXgafv
  = lens _reteXgafv (\ s a -> s{_reteXgafv = a})

-- | The Merchant Center account to list return policies for.
reteMerchantId :: Lens' ReturnpolicyList Word64
reteMerchantId
  = lens _reteMerchantId
      (\ s a -> s{_reteMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
reteUploadProtocol :: Lens' ReturnpolicyList (Maybe Text)
reteUploadProtocol
  = lens _reteUploadProtocol
      (\ s a -> s{_reteUploadProtocol = a})

-- | OAuth access token.
reteAccessToken :: Lens' ReturnpolicyList (Maybe Text)
reteAccessToken
  = lens _reteAccessToken
      (\ s a -> s{_reteAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
reteUploadType :: Lens' ReturnpolicyList (Maybe Text)
reteUploadType
  = lens _reteUploadType
      (\ s a -> s{_reteUploadType = a})

-- | JSONP
reteCallback :: Lens' ReturnpolicyList (Maybe Text)
reteCallback
  = lens _reteCallback (\ s a -> s{_reteCallback = a})

instance GoogleRequest ReturnpolicyList where
        type Rs ReturnpolicyList = ReturnpolicyListResponse
        type Scopes ReturnpolicyList =
             '["https://www.googleapis.com/auth/content"]
        requestClient ReturnpolicyList'{..}
          = go _reteMerchantId _reteXgafv _reteUploadProtocol
              _reteAccessToken
              _reteUploadType
              _reteCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ReturnpolicyListResource)
                      mempty
