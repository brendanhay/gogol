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
-- Module      : Network.Google.Resource.Content.ReturnpolicyOnline.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing return policy.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnpolicyonline.patch@.
module Network.Google.Resource.Content.ReturnpolicyOnline.Patch
    (
    -- * REST Resource
      ReturnpolicyOnlinePatchResource

    -- * Creating a Request
    , returnpolicyOnlinePatch
    , ReturnpolicyOnlinePatch

    -- * Request Lenses
    , ropXgafv
    , ropReturnPolicyId
    , ropMerchantId
    , ropUploadProtocol
    , ropAccessToken
    , ropUploadType
    , ropPayload
    , ropCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.returnpolicyonline.patch@ method which the
-- 'ReturnpolicyOnlinePatch' request conforms to.
type ReturnpolicyOnlinePatchResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "returnpolicyonline" :>
             Capture "returnPolicyId" Text :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ReturnPolicyOnline :>
                             Patch '[JSON] ReturnPolicyOnline

-- | Updates an existing return policy.
--
-- /See:/ 'returnpolicyOnlinePatch' smart constructor.
data ReturnpolicyOnlinePatch =
  ReturnpolicyOnlinePatch'
    { _ropXgafv :: !(Maybe Xgafv)
    , _ropReturnPolicyId :: !Text
    , _ropMerchantId :: !(Textual Int64)
    , _ropUploadProtocol :: !(Maybe Text)
    , _ropAccessToken :: !(Maybe Text)
    , _ropUploadType :: !(Maybe Text)
    , _ropPayload :: !ReturnPolicyOnline
    , _ropCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyOnlinePatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ropXgafv'
--
-- * 'ropReturnPolicyId'
--
-- * 'ropMerchantId'
--
-- * 'ropUploadProtocol'
--
-- * 'ropAccessToken'
--
-- * 'ropUploadType'
--
-- * 'ropPayload'
--
-- * 'ropCallback'
returnpolicyOnlinePatch
    :: Text -- ^ 'ropReturnPolicyId'
    -> Int64 -- ^ 'ropMerchantId'
    -> ReturnPolicyOnline -- ^ 'ropPayload'
    -> ReturnpolicyOnlinePatch
returnpolicyOnlinePatch pRopReturnPolicyId_ pRopMerchantId_ pRopPayload_ =
  ReturnpolicyOnlinePatch'
    { _ropXgafv = Nothing
    , _ropReturnPolicyId = pRopReturnPolicyId_
    , _ropMerchantId = _Coerce # pRopMerchantId_
    , _ropUploadProtocol = Nothing
    , _ropAccessToken = Nothing
    , _ropUploadType = Nothing
    , _ropPayload = pRopPayload_
    , _ropCallback = Nothing
    }


-- | V1 error format.
ropXgafv :: Lens' ReturnpolicyOnlinePatch (Maybe Xgafv)
ropXgafv = lens _ropXgafv (\ s a -> s{_ropXgafv = a})

-- | Required. The id of the return policy to update.
ropReturnPolicyId :: Lens' ReturnpolicyOnlinePatch Text
ropReturnPolicyId
  = lens _ropReturnPolicyId
      (\ s a -> s{_ropReturnPolicyId = a})

-- | Required. The id of the merchant for which to retrieve the return policy
-- online object.
ropMerchantId :: Lens' ReturnpolicyOnlinePatch Int64
ropMerchantId
  = lens _ropMerchantId
      (\ s a -> s{_ropMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ropUploadProtocol :: Lens' ReturnpolicyOnlinePatch (Maybe Text)
ropUploadProtocol
  = lens _ropUploadProtocol
      (\ s a -> s{_ropUploadProtocol = a})

-- | OAuth access token.
ropAccessToken :: Lens' ReturnpolicyOnlinePatch (Maybe Text)
ropAccessToken
  = lens _ropAccessToken
      (\ s a -> s{_ropAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ropUploadType :: Lens' ReturnpolicyOnlinePatch (Maybe Text)
ropUploadType
  = lens _ropUploadType
      (\ s a -> s{_ropUploadType = a})

-- | Multipart request metadata.
ropPayload :: Lens' ReturnpolicyOnlinePatch ReturnPolicyOnline
ropPayload
  = lens _ropPayload (\ s a -> s{_ropPayload = a})

-- | JSONP
ropCallback :: Lens' ReturnpolicyOnlinePatch (Maybe Text)
ropCallback
  = lens _ropCallback (\ s a -> s{_ropCallback = a})

instance GoogleRequest ReturnpolicyOnlinePatch where
        type Rs ReturnpolicyOnlinePatch = ReturnPolicyOnline
        type Scopes ReturnpolicyOnlinePatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient ReturnpolicyOnlinePatch'{..}
          = go _ropMerchantId _ropReturnPolicyId _ropXgafv
              _ropUploadProtocol
              _ropAccessToken
              _ropUploadType
              _ropCallback
              (Just AltJSON)
              _ropPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ReturnpolicyOnlinePatchResource)
                      mempty
