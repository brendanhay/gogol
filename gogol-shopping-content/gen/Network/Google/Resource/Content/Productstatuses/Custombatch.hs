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
-- Module      : Network.Google.Resource.Content.Productstatuses.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the statuses of multiple products in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.productstatuses.custombatch@.
module Network.Google.Resource.Content.Productstatuses.Custombatch
    (
    -- * REST Resource
      ProductstatusesCustombatchResource

    -- * Creating a Request
    , productstatusesCustombatch
    , ProductstatusesCustombatch

    -- * Request Lenses
    , pccXgafv
    , pccUploadProtocol
    , pccAccessToken
    , pccUploadType
    , pccPayload
    , pccCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.productstatuses.custombatch@ method which the
-- 'ProductstatusesCustombatch' request conforms to.
type ProductstatusesCustombatchResource =
     "content" :>
       "v2.1" :>
         "productstatuses" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ProductstatusesCustomBatchRequest :>
                           Post '[JSON] ProductstatusesCustomBatchResponse

-- | Gets the statuses of multiple products in a single request.
--
-- /See:/ 'productstatusesCustombatch' smart constructor.
data ProductstatusesCustombatch =
  ProductstatusesCustombatch'
    { _pccXgafv :: !(Maybe Xgafv)
    , _pccUploadProtocol :: !(Maybe Text)
    , _pccAccessToken :: !(Maybe Text)
    , _pccUploadType :: !(Maybe Text)
    , _pccPayload :: !ProductstatusesCustomBatchRequest
    , _pccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProductstatusesCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pccXgafv'
--
-- * 'pccUploadProtocol'
--
-- * 'pccAccessToken'
--
-- * 'pccUploadType'
--
-- * 'pccPayload'
--
-- * 'pccCallback'
productstatusesCustombatch
    :: ProductstatusesCustomBatchRequest -- ^ 'pccPayload'
    -> ProductstatusesCustombatch
productstatusesCustombatch pPccPayload_ =
  ProductstatusesCustombatch'
    { _pccXgafv = Nothing
    , _pccUploadProtocol = Nothing
    , _pccAccessToken = Nothing
    , _pccUploadType = Nothing
    , _pccPayload = pPccPayload_
    , _pccCallback = Nothing
    }


-- | V1 error format.
pccXgafv :: Lens' ProductstatusesCustombatch (Maybe Xgafv)
pccXgafv = lens _pccXgafv (\ s a -> s{_pccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pccUploadProtocol :: Lens' ProductstatusesCustombatch (Maybe Text)
pccUploadProtocol
  = lens _pccUploadProtocol
      (\ s a -> s{_pccUploadProtocol = a})

-- | OAuth access token.
pccAccessToken :: Lens' ProductstatusesCustombatch (Maybe Text)
pccAccessToken
  = lens _pccAccessToken
      (\ s a -> s{_pccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pccUploadType :: Lens' ProductstatusesCustombatch (Maybe Text)
pccUploadType
  = lens _pccUploadType
      (\ s a -> s{_pccUploadType = a})

-- | Multipart request metadata.
pccPayload :: Lens' ProductstatusesCustombatch ProductstatusesCustomBatchRequest
pccPayload
  = lens _pccPayload (\ s a -> s{_pccPayload = a})

-- | JSONP
pccCallback :: Lens' ProductstatusesCustombatch (Maybe Text)
pccCallback
  = lens _pccCallback (\ s a -> s{_pccCallback = a})

instance GoogleRequest ProductstatusesCustombatch
         where
        type Rs ProductstatusesCustombatch =
             ProductstatusesCustomBatchResponse
        type Scopes ProductstatusesCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient ProductstatusesCustombatch'{..}
          = go _pccXgafv _pccUploadProtocol _pccAccessToken
              _pccUploadType
              _pccCallback
              (Just AltJSON)
              _pccPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy ProductstatusesCustombatchResource)
                      mempty
