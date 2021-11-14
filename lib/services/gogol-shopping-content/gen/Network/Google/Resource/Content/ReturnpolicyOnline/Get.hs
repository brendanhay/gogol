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
-- Module      : Network.Google.Resource.Content.ReturnpolicyOnline.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an existing return policy.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnpolicyonline.get@.
module Network.Google.Resource.Content.ReturnpolicyOnline.Get
    (
    -- * REST Resource
      ReturnpolicyOnlineGetResource

    -- * Creating a Request
    , returnpolicyOnlineGet
    , ReturnpolicyOnlineGet

    -- * Request Lenses
    , rogXgafv
    , rogReturnPolicyId
    , rogMerchantId
    , rogUploadProtocol
    , rogAccessToken
    , rogUploadType
    , rogCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.returnpolicyonline.get@ method which the
-- 'ReturnpolicyOnlineGet' request conforms to.
type ReturnpolicyOnlineGetResource =
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
                           Get '[JSON] ReturnPolicyOnline

-- | Gets an existing return policy.
--
-- /See:/ 'returnpolicyOnlineGet' smart constructor.
data ReturnpolicyOnlineGet =
  ReturnpolicyOnlineGet'
    { _rogXgafv :: !(Maybe Xgafv)
    , _rogReturnPolicyId :: !Text
    , _rogMerchantId :: !(Textual Int64)
    , _rogUploadProtocol :: !(Maybe Text)
    , _rogAccessToken :: !(Maybe Text)
    , _rogUploadType :: !(Maybe Text)
    , _rogCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyOnlineGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rogXgafv'
--
-- * 'rogReturnPolicyId'
--
-- * 'rogMerchantId'
--
-- * 'rogUploadProtocol'
--
-- * 'rogAccessToken'
--
-- * 'rogUploadType'
--
-- * 'rogCallback'
returnpolicyOnlineGet
    :: Text -- ^ 'rogReturnPolicyId'
    -> Int64 -- ^ 'rogMerchantId'
    -> ReturnpolicyOnlineGet
returnpolicyOnlineGet pRogReturnPolicyId_ pRogMerchantId_ =
  ReturnpolicyOnlineGet'
    { _rogXgafv = Nothing
    , _rogReturnPolicyId = pRogReturnPolicyId_
    , _rogMerchantId = _Coerce # pRogMerchantId_
    , _rogUploadProtocol = Nothing
    , _rogAccessToken = Nothing
    , _rogUploadType = Nothing
    , _rogCallback = Nothing
    }


-- | V1 error format.
rogXgafv :: Lens' ReturnpolicyOnlineGet (Maybe Xgafv)
rogXgafv = lens _rogXgafv (\ s a -> s{_rogXgafv = a})

-- | Required. The id of the return policy to retrieve.
rogReturnPolicyId :: Lens' ReturnpolicyOnlineGet Text
rogReturnPolicyId
  = lens _rogReturnPolicyId
      (\ s a -> s{_rogReturnPolicyId = a})

-- | Required. The id of the merchant for which to retrieve the return policy
-- online object.
rogMerchantId :: Lens' ReturnpolicyOnlineGet Int64
rogMerchantId
  = lens _rogMerchantId
      (\ s a -> s{_rogMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rogUploadProtocol :: Lens' ReturnpolicyOnlineGet (Maybe Text)
rogUploadProtocol
  = lens _rogUploadProtocol
      (\ s a -> s{_rogUploadProtocol = a})

-- | OAuth access token.
rogAccessToken :: Lens' ReturnpolicyOnlineGet (Maybe Text)
rogAccessToken
  = lens _rogAccessToken
      (\ s a -> s{_rogAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rogUploadType :: Lens' ReturnpolicyOnlineGet (Maybe Text)
rogUploadType
  = lens _rogUploadType
      (\ s a -> s{_rogUploadType = a})

-- | JSONP
rogCallback :: Lens' ReturnpolicyOnlineGet (Maybe Text)
rogCallback
  = lens _rogCallback (\ s a -> s{_rogCallback = a})

instance GoogleRequest ReturnpolicyOnlineGet where
        type Rs ReturnpolicyOnlineGet = ReturnPolicyOnline
        type Scopes ReturnpolicyOnlineGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient ReturnpolicyOnlineGet'{..}
          = go _rogMerchantId _rogReturnPolicyId _rogXgafv
              _rogUploadProtocol
              _rogAccessToken
              _rogUploadType
              _rogCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ReturnpolicyOnlineGetResource)
                      mempty
