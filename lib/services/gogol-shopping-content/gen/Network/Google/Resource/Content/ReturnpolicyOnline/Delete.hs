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
-- Module      : Network.Google.Resource.Content.ReturnpolicyOnline.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing return policy.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnpolicyonline.delete@.
module Network.Google.Resource.Content.ReturnpolicyOnline.Delete
    (
    -- * REST Resource
      ReturnpolicyOnlineDeleteResource

    -- * Creating a Request
    , returnpolicyOnlineDelete
    , ReturnpolicyOnlineDelete

    -- * Request Lenses
    , rodXgafv
    , rodReturnPolicyId
    , rodMerchantId
    , rodUploadProtocol
    , rodAccessToken
    , rodUploadType
    , rodCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.returnpolicyonline.delete@ method which the
-- 'ReturnpolicyOnlineDelete' request conforms to.
type ReturnpolicyOnlineDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing return policy.
--
-- /See:/ 'returnpolicyOnlineDelete' smart constructor.
data ReturnpolicyOnlineDelete =
  ReturnpolicyOnlineDelete'
    { _rodXgafv :: !(Maybe Xgafv)
    , _rodReturnPolicyId :: !Text
    , _rodMerchantId :: !(Textual Int64)
    , _rodUploadProtocol :: !(Maybe Text)
    , _rodAccessToken :: !(Maybe Text)
    , _rodUploadType :: !(Maybe Text)
    , _rodCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyOnlineDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rodXgafv'
--
-- * 'rodReturnPolicyId'
--
-- * 'rodMerchantId'
--
-- * 'rodUploadProtocol'
--
-- * 'rodAccessToken'
--
-- * 'rodUploadType'
--
-- * 'rodCallback'
returnpolicyOnlineDelete
    :: Text -- ^ 'rodReturnPolicyId'
    -> Int64 -- ^ 'rodMerchantId'
    -> ReturnpolicyOnlineDelete
returnpolicyOnlineDelete pRodReturnPolicyId_ pRodMerchantId_ =
  ReturnpolicyOnlineDelete'
    { _rodXgafv = Nothing
    , _rodReturnPolicyId = pRodReturnPolicyId_
    , _rodMerchantId = _Coerce # pRodMerchantId_
    , _rodUploadProtocol = Nothing
    , _rodAccessToken = Nothing
    , _rodUploadType = Nothing
    , _rodCallback = Nothing
    }


-- | V1 error format.
rodXgafv :: Lens' ReturnpolicyOnlineDelete (Maybe Xgafv)
rodXgafv = lens _rodXgafv (\ s a -> s{_rodXgafv = a})

-- | Required. The id of the return policy to delete.
rodReturnPolicyId :: Lens' ReturnpolicyOnlineDelete Text
rodReturnPolicyId
  = lens _rodReturnPolicyId
      (\ s a -> s{_rodReturnPolicyId = a})

-- | Required. The id of the merchant for which to retrieve the return policy
-- online object.
rodMerchantId :: Lens' ReturnpolicyOnlineDelete Int64
rodMerchantId
  = lens _rodMerchantId
      (\ s a -> s{_rodMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rodUploadProtocol :: Lens' ReturnpolicyOnlineDelete (Maybe Text)
rodUploadProtocol
  = lens _rodUploadProtocol
      (\ s a -> s{_rodUploadProtocol = a})

-- | OAuth access token.
rodAccessToken :: Lens' ReturnpolicyOnlineDelete (Maybe Text)
rodAccessToken
  = lens _rodAccessToken
      (\ s a -> s{_rodAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rodUploadType :: Lens' ReturnpolicyOnlineDelete (Maybe Text)
rodUploadType
  = lens _rodUploadType
      (\ s a -> s{_rodUploadType = a})

-- | JSONP
rodCallback :: Lens' ReturnpolicyOnlineDelete (Maybe Text)
rodCallback
  = lens _rodCallback (\ s a -> s{_rodCallback = a})

instance GoogleRequest ReturnpolicyOnlineDelete where
        type Rs ReturnpolicyOnlineDelete = ()
        type Scopes ReturnpolicyOnlineDelete =
             '["https://www.googleapis.com/auth/content"]
        requestClient ReturnpolicyOnlineDelete'{..}
          = go _rodMerchantId _rodReturnPolicyId _rodXgafv
              _rodUploadProtocol
              _rodAccessToken
              _rodUploadType
              _rodCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ReturnpolicyOnlineDeleteResource)
                      mempty
