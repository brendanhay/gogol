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
-- Module      : Network.Google.Resource.Content.Datafeedstatuses.Custombatch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets multiple Merchant Center datafeed statuses in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeedstatuses.custombatch@.
module Network.Google.Resource.Content.Datafeedstatuses.Custombatch
    (
    -- * REST Resource
      DatafeedstatusesCustombatchResource

    -- * Creating a Request
    , datafeedstatusesCustombatch
    , DatafeedstatusesCustombatch

    -- * Request Lenses
    , dcXgafv
    , dcUploadProtocol
    , dcAccessToken
    , dcUploadType
    , dcPayload
    , dcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeedstatuses.custombatch@ method which the
-- 'DatafeedstatusesCustombatch' request conforms to.
type DatafeedstatusesCustombatchResource =
     "content" :>
       "v2.1" :>
         "datafeedstatuses" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DatafeedstatusesCustomBatchRequest :>
                           Post '[JSON] DatafeedstatusesCustomBatchResponse

-- | Gets multiple Merchant Center datafeed statuses in a single request.
--
-- /See:/ 'datafeedstatusesCustombatch' smart constructor.
data DatafeedstatusesCustombatch =
  DatafeedstatusesCustombatch'
    { _dcXgafv :: !(Maybe Xgafv)
    , _dcUploadProtocol :: !(Maybe Text)
    , _dcAccessToken :: !(Maybe Text)
    , _dcUploadType :: !(Maybe Text)
    , _dcPayload :: !DatafeedstatusesCustomBatchRequest
    , _dcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedstatusesCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcXgafv'
--
-- * 'dcUploadProtocol'
--
-- * 'dcAccessToken'
--
-- * 'dcUploadType'
--
-- * 'dcPayload'
--
-- * 'dcCallback'
datafeedstatusesCustombatch
    :: DatafeedstatusesCustomBatchRequest -- ^ 'dcPayload'
    -> DatafeedstatusesCustombatch
datafeedstatusesCustombatch pDcPayload_ =
  DatafeedstatusesCustombatch'
    { _dcXgafv = Nothing
    , _dcUploadProtocol = Nothing
    , _dcAccessToken = Nothing
    , _dcUploadType = Nothing
    , _dcPayload = pDcPayload_
    , _dcCallback = Nothing
    }


-- | V1 error format.
dcXgafv :: Lens' DatafeedstatusesCustombatch (Maybe Xgafv)
dcXgafv = lens _dcXgafv (\ s a -> s{_dcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dcUploadProtocol :: Lens' DatafeedstatusesCustombatch (Maybe Text)
dcUploadProtocol
  = lens _dcUploadProtocol
      (\ s a -> s{_dcUploadProtocol = a})

-- | OAuth access token.
dcAccessToken :: Lens' DatafeedstatusesCustombatch (Maybe Text)
dcAccessToken
  = lens _dcAccessToken
      (\ s a -> s{_dcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dcUploadType :: Lens' DatafeedstatusesCustombatch (Maybe Text)
dcUploadType
  = lens _dcUploadType (\ s a -> s{_dcUploadType = a})

-- | Multipart request metadata.
dcPayload :: Lens' DatafeedstatusesCustombatch DatafeedstatusesCustomBatchRequest
dcPayload
  = lens _dcPayload (\ s a -> s{_dcPayload = a})

-- | JSONP
dcCallback :: Lens' DatafeedstatusesCustombatch (Maybe Text)
dcCallback
  = lens _dcCallback (\ s a -> s{_dcCallback = a})

instance GoogleRequest DatafeedstatusesCustombatch
         where
        type Rs DatafeedstatusesCustombatch =
             DatafeedstatusesCustomBatchResponse
        type Scopes DatafeedstatusesCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedstatusesCustombatch'{..}
          = go _dcXgafv _dcUploadProtocol _dcAccessToken
              _dcUploadType
              _dcCallback
              (Just AltJSON)
              _dcPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedstatusesCustombatchResource)
                      mempty
