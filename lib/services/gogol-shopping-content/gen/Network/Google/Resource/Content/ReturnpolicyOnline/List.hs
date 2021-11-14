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
-- Module      : Network.Google.Resource.Content.ReturnpolicyOnline.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all existing return policies.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnpolicyonline.list@.
module Network.Google.Resource.Content.ReturnpolicyOnline.List
    (
    -- * REST Resource
      ReturnpolicyOnlineListResource

    -- * Creating a Request
    , returnpolicyOnlineList
    , ReturnpolicyOnlineList

    -- * Request Lenses
    , rolXgafv
    , rolMerchantId
    , rolUploadProtocol
    , rolAccessToken
    , rolUploadType
    , rolCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.returnpolicyonline.list@ method which the
-- 'ReturnpolicyOnlineList' request conforms to.
type ReturnpolicyOnlineListResource =
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
                         Get '[JSON] ListReturnPolicyOnlineResponse

-- | Lists all existing return policies.
--
-- /See:/ 'returnpolicyOnlineList' smart constructor.
data ReturnpolicyOnlineList =
  ReturnpolicyOnlineList'
    { _rolXgafv :: !(Maybe Xgafv)
    , _rolMerchantId :: !(Textual Int64)
    , _rolUploadProtocol :: !(Maybe Text)
    , _rolAccessToken :: !(Maybe Text)
    , _rolUploadType :: !(Maybe Text)
    , _rolCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyOnlineList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rolXgafv'
--
-- * 'rolMerchantId'
--
-- * 'rolUploadProtocol'
--
-- * 'rolAccessToken'
--
-- * 'rolUploadType'
--
-- * 'rolCallback'
returnpolicyOnlineList
    :: Int64 -- ^ 'rolMerchantId'
    -> ReturnpolicyOnlineList
returnpolicyOnlineList pRolMerchantId_ =
  ReturnpolicyOnlineList'
    { _rolXgafv = Nothing
    , _rolMerchantId = _Coerce # pRolMerchantId_
    , _rolUploadProtocol = Nothing
    , _rolAccessToken = Nothing
    , _rolUploadType = Nothing
    , _rolCallback = Nothing
    }


-- | V1 error format.
rolXgafv :: Lens' ReturnpolicyOnlineList (Maybe Xgafv)
rolXgafv = lens _rolXgafv (\ s a -> s{_rolXgafv = a})

-- | Required. The id of the merchant for which to retrieve the return policy
-- online object.
rolMerchantId :: Lens' ReturnpolicyOnlineList Int64
rolMerchantId
  = lens _rolMerchantId
      (\ s a -> s{_rolMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rolUploadProtocol :: Lens' ReturnpolicyOnlineList (Maybe Text)
rolUploadProtocol
  = lens _rolUploadProtocol
      (\ s a -> s{_rolUploadProtocol = a})

-- | OAuth access token.
rolAccessToken :: Lens' ReturnpolicyOnlineList (Maybe Text)
rolAccessToken
  = lens _rolAccessToken
      (\ s a -> s{_rolAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rolUploadType :: Lens' ReturnpolicyOnlineList (Maybe Text)
rolUploadType
  = lens _rolUploadType
      (\ s a -> s{_rolUploadType = a})

-- | JSONP
rolCallback :: Lens' ReturnpolicyOnlineList (Maybe Text)
rolCallback
  = lens _rolCallback (\ s a -> s{_rolCallback = a})

instance GoogleRequest ReturnpolicyOnlineList where
        type Rs ReturnpolicyOnlineList =
             ListReturnPolicyOnlineResponse
        type Scopes ReturnpolicyOnlineList =
             '["https://www.googleapis.com/auth/content"]
        requestClient ReturnpolicyOnlineList'{..}
          = go _rolMerchantId _rolXgafv _rolUploadProtocol
              _rolAccessToken
              _rolUploadType
              _rolCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ReturnpolicyOnlineListResource)
                      mempty
