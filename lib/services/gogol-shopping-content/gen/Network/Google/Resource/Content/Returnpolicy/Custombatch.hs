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
-- Module      : Network.Google.Resource.Content.Returnpolicy.Custombatch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batches multiple return policy related calls in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.returnpolicy.custombatch@.
module Network.Google.Resource.Content.Returnpolicy.Custombatch
    (
    -- * REST Resource
      ReturnpolicyCustombatchResource

    -- * Creating a Request
    , returnpolicyCustombatch
    , ReturnpolicyCustombatch

    -- * Request Lenses
    , rcXgafv
    , rcUploadProtocol
    , rcAccessToken
    , rcUploadType
    , rcPayload
    , rcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.returnpolicy.custombatch@ method which the
-- 'ReturnpolicyCustombatch' request conforms to.
type ReturnpolicyCustombatchResource =
     "content" :>
       "v2.1" :>
         "returnpolicy" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ReturnpolicyCustomBatchRequest :>
                           Post '[JSON] ReturnpolicyCustomBatchResponse

-- | Batches multiple return policy related calls in a single request.
--
-- /See:/ 'returnpolicyCustombatch' smart constructor.
data ReturnpolicyCustombatch =
  ReturnpolicyCustombatch'
    { _rcXgafv :: !(Maybe Xgafv)
    , _rcUploadProtocol :: !(Maybe Text)
    , _rcAccessToken :: !(Maybe Text)
    , _rcUploadType :: !(Maybe Text)
    , _rcPayload :: !ReturnpolicyCustomBatchRequest
    , _rcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReturnpolicyCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcXgafv'
--
-- * 'rcUploadProtocol'
--
-- * 'rcAccessToken'
--
-- * 'rcUploadType'
--
-- * 'rcPayload'
--
-- * 'rcCallback'
returnpolicyCustombatch
    :: ReturnpolicyCustomBatchRequest -- ^ 'rcPayload'
    -> ReturnpolicyCustombatch
returnpolicyCustombatch pRcPayload_ =
  ReturnpolicyCustombatch'
    { _rcXgafv = Nothing
    , _rcUploadProtocol = Nothing
    , _rcAccessToken = Nothing
    , _rcUploadType = Nothing
    , _rcPayload = pRcPayload_
    , _rcCallback = Nothing
    }


-- | V1 error format.
rcXgafv :: Lens' ReturnpolicyCustombatch (Maybe Xgafv)
rcXgafv = lens _rcXgafv (\ s a -> s{_rcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rcUploadProtocol :: Lens' ReturnpolicyCustombatch (Maybe Text)
rcUploadProtocol
  = lens _rcUploadProtocol
      (\ s a -> s{_rcUploadProtocol = a})

-- | OAuth access token.
rcAccessToken :: Lens' ReturnpolicyCustombatch (Maybe Text)
rcAccessToken
  = lens _rcAccessToken
      (\ s a -> s{_rcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rcUploadType :: Lens' ReturnpolicyCustombatch (Maybe Text)
rcUploadType
  = lens _rcUploadType (\ s a -> s{_rcUploadType = a})

-- | Multipart request metadata.
rcPayload :: Lens' ReturnpolicyCustombatch ReturnpolicyCustomBatchRequest
rcPayload
  = lens _rcPayload (\ s a -> s{_rcPayload = a})

-- | JSONP
rcCallback :: Lens' ReturnpolicyCustombatch (Maybe Text)
rcCallback
  = lens _rcCallback (\ s a -> s{_rcCallback = a})

instance GoogleRequest ReturnpolicyCustombatch where
        type Rs ReturnpolicyCustombatch =
             ReturnpolicyCustomBatchResponse
        type Scopes ReturnpolicyCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient ReturnpolicyCustombatch'{..}
          = go _rcXgafv _rcUploadProtocol _rcAccessToken
              _rcUploadType
              _rcCallback
              (Just AltJSON)
              _rcPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ReturnpolicyCustombatchResource)
                      mempty
