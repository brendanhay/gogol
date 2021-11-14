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
-- Module      : Network.Google.Resource.Content.ReturnpolicyOnline.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new return policy.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnpolicyonline.create@.
module Network.Google.Resource.Content.ReturnpolicyOnline.Create
    (
    -- * REST Resource
      ReturnpolicyOnlineCreateResource

    -- * Creating a Request
    , returnpolicyOnlineCreate
    , ReturnpolicyOnlineCreate

    -- * Request Lenses
    , rocXgafv
    , rocMerchantId
    , rocUploadProtocol
    , rocAccessToken
    , rocUploadType
    , rocPayload
    , rocCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.returnpolicyonline.create@ method which the
-- 'ReturnpolicyOnlineCreate' request conforms to.
type ReturnpolicyOnlineCreateResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Int64) :>
           "returnpolicyonline" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ReturnPolicyOnline :>
                           Post '[JSON] ReturnPolicyOnline

-- | Creates a new return policy.
--
-- /See:/ 'returnpolicyOnlineCreate' smart constructor.
data ReturnpolicyOnlineCreate =
  ReturnpolicyOnlineCreate'
    { _rocXgafv :: !(Maybe Xgafv)
    , _rocMerchantId :: !(Textual Int64)
    , _rocUploadProtocol :: !(Maybe Text)
    , _rocAccessToken :: !(Maybe Text)
    , _rocUploadType :: !(Maybe Text)
    , _rocPayload :: !ReturnPolicyOnline
    , _rocCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyOnlineCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rocXgafv'
--
-- * 'rocMerchantId'
--
-- * 'rocUploadProtocol'
--
-- * 'rocAccessToken'
--
-- * 'rocUploadType'
--
-- * 'rocPayload'
--
-- * 'rocCallback'
returnpolicyOnlineCreate
    :: Int64 -- ^ 'rocMerchantId'
    -> ReturnPolicyOnline -- ^ 'rocPayload'
    -> ReturnpolicyOnlineCreate
returnpolicyOnlineCreate pRocMerchantId_ pRocPayload_ =
  ReturnpolicyOnlineCreate'
    { _rocXgafv = Nothing
    , _rocMerchantId = _Coerce # pRocMerchantId_
    , _rocUploadProtocol = Nothing
    , _rocAccessToken = Nothing
    , _rocUploadType = Nothing
    , _rocPayload = pRocPayload_
    , _rocCallback = Nothing
    }


-- | V1 error format.
rocXgafv :: Lens' ReturnpolicyOnlineCreate (Maybe Xgafv)
rocXgafv = lens _rocXgafv (\ s a -> s{_rocXgafv = a})

-- | Required. The id of the merchant for which to retrieve the return policy
-- online object.
rocMerchantId :: Lens' ReturnpolicyOnlineCreate Int64
rocMerchantId
  = lens _rocMerchantId
      (\ s a -> s{_rocMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rocUploadProtocol :: Lens' ReturnpolicyOnlineCreate (Maybe Text)
rocUploadProtocol
  = lens _rocUploadProtocol
      (\ s a -> s{_rocUploadProtocol = a})

-- | OAuth access token.
rocAccessToken :: Lens' ReturnpolicyOnlineCreate (Maybe Text)
rocAccessToken
  = lens _rocAccessToken
      (\ s a -> s{_rocAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rocUploadType :: Lens' ReturnpolicyOnlineCreate (Maybe Text)
rocUploadType
  = lens _rocUploadType
      (\ s a -> s{_rocUploadType = a})

-- | Multipart request metadata.
rocPayload :: Lens' ReturnpolicyOnlineCreate ReturnPolicyOnline
rocPayload
  = lens _rocPayload (\ s a -> s{_rocPayload = a})

-- | JSONP
rocCallback :: Lens' ReturnpolicyOnlineCreate (Maybe Text)
rocCallback
  = lens _rocCallback (\ s a -> s{_rocCallback = a})

instance GoogleRequest ReturnpolicyOnlineCreate where
        type Rs ReturnpolicyOnlineCreate = ReturnPolicyOnline
        type Scopes ReturnpolicyOnlineCreate =
             '["https://www.googleapis.com/auth/content"]
        requestClient ReturnpolicyOnlineCreate'{..}
          = go _rocMerchantId _rocXgafv _rocUploadProtocol
              _rocAccessToken
              _rocUploadType
              _rocCallback
              (Just AltJSON)
              _rocPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ReturnpolicyOnlineCreateResource)
                      mempty
