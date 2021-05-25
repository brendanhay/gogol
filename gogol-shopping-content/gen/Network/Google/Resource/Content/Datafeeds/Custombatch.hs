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
-- Module      : Network.Google.Resource.Content.Datafeeds.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes, fetches, gets, inserts and updates multiple datafeeds in a
-- single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.datafeeds.custombatch@.
module Network.Google.Resource.Content.Datafeeds.Custombatch
    (
    -- * REST Resource
      DatafeedsCustombatchResource

    -- * Creating a Request
    , datafeedsCustombatch
    , DatafeedsCustombatch

    -- * Request Lenses
    , dXgafv
    , dUploadProtocol
    , dAccessToken
    , dUploadType
    , dPayload
    , dCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.datafeeds.custombatch@ method which the
-- 'DatafeedsCustombatch' request conforms to.
type DatafeedsCustombatchResource =
     "content" :>
       "v2.1" :>
         "datafeeds" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DatafeedsCustomBatchRequest :>
                           Post '[JSON] DatafeedsCustomBatchResponse

-- | Deletes, fetches, gets, inserts and updates multiple datafeeds in a
-- single request.
--
-- /See:/ 'datafeedsCustombatch' smart constructor.
data DatafeedsCustombatch =
  DatafeedsCustombatch'
    { _dXgafv :: !(Maybe Xgafv)
    , _dUploadProtocol :: !(Maybe Text)
    , _dAccessToken :: !(Maybe Text)
    , _dUploadType :: !(Maybe Text)
    , _dPayload :: !DatafeedsCustomBatchRequest
    , _dCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DatafeedsCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dXgafv'
--
-- * 'dUploadProtocol'
--
-- * 'dAccessToken'
--
-- * 'dUploadType'
--
-- * 'dPayload'
--
-- * 'dCallback'
datafeedsCustombatch
    :: DatafeedsCustomBatchRequest -- ^ 'dPayload'
    -> DatafeedsCustombatch
datafeedsCustombatch pDPayload_ =
  DatafeedsCustombatch'
    { _dXgafv = Nothing
    , _dUploadProtocol = Nothing
    , _dAccessToken = Nothing
    , _dUploadType = Nothing
    , _dPayload = pDPayload_
    , _dCallback = Nothing
    }


-- | V1 error format.
dXgafv :: Lens' DatafeedsCustombatch (Maybe Xgafv)
dXgafv = lens _dXgafv (\ s a -> s{_dXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
dUploadProtocol :: Lens' DatafeedsCustombatch (Maybe Text)
dUploadProtocol
  = lens _dUploadProtocol
      (\ s a -> s{_dUploadProtocol = a})

-- | OAuth access token.
dAccessToken :: Lens' DatafeedsCustombatch (Maybe Text)
dAccessToken
  = lens _dAccessToken (\ s a -> s{_dAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
dUploadType :: Lens' DatafeedsCustombatch (Maybe Text)
dUploadType
  = lens _dUploadType (\ s a -> s{_dUploadType = a})

-- | Multipart request metadata.
dPayload :: Lens' DatafeedsCustombatch DatafeedsCustomBatchRequest
dPayload = lens _dPayload (\ s a -> s{_dPayload = a})

-- | JSONP
dCallback :: Lens' DatafeedsCustombatch (Maybe Text)
dCallback
  = lens _dCallback (\ s a -> s{_dCallback = a})

instance GoogleRequest DatafeedsCustombatch where
        type Rs DatafeedsCustombatch =
             DatafeedsCustomBatchResponse
        type Scopes DatafeedsCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient DatafeedsCustombatch'{..}
          = go _dXgafv _dUploadProtocol _dAccessToken
              _dUploadType
              _dCallback
              (Just AltJSON)
              _dPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy DatafeedsCustombatchResource)
                      mempty
