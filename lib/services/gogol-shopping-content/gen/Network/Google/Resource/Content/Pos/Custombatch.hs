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
-- Module      : Network.Google.Resource.Content.Pos.Custombatch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Batches multiple POS-related calls in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pos.custombatch@.
module Network.Google.Resource.Content.Pos.Custombatch
    (
    -- * REST Resource
      PosCustombatchResource

    -- * Creating a Request
    , posCustombatch
    , PosCustombatch

    -- * Request Lenses
    , posXgafv
    , posUploadProtocol
    , posAccessToken
    , posUploadType
    , posPayload
    , posCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.pos.custombatch@ method which the
-- 'PosCustombatch' request conforms to.
type PosCustombatchResource =
     "content" :>
       "v2.1" :>
         "pos" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] PosCustomBatchRequest :>
                           Post '[JSON] PosCustomBatchResponse

-- | Batches multiple POS-related calls in a single request.
--
-- /See:/ 'posCustombatch' smart constructor.
data PosCustombatch =
  PosCustombatch'
    { _posXgafv :: !(Maybe Xgafv)
    , _posUploadProtocol :: !(Maybe Text)
    , _posAccessToken :: !(Maybe Text)
    , _posUploadType :: !(Maybe Text)
    , _posPayload :: !PosCustomBatchRequest
    , _posCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PosCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posXgafv'
--
-- * 'posUploadProtocol'
--
-- * 'posAccessToken'
--
-- * 'posUploadType'
--
-- * 'posPayload'
--
-- * 'posCallback'
posCustombatch
    :: PosCustomBatchRequest -- ^ 'posPayload'
    -> PosCustombatch
posCustombatch pPosPayload_ =
  PosCustombatch'
    { _posXgafv = Nothing
    , _posUploadProtocol = Nothing
    , _posAccessToken = Nothing
    , _posUploadType = Nothing
    , _posPayload = pPosPayload_
    , _posCallback = Nothing
    }


-- | V1 error format.
posXgafv :: Lens' PosCustombatch (Maybe Xgafv)
posXgafv = lens _posXgafv (\ s a -> s{_posXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
posUploadProtocol :: Lens' PosCustombatch (Maybe Text)
posUploadProtocol
  = lens _posUploadProtocol
      (\ s a -> s{_posUploadProtocol = a})

-- | OAuth access token.
posAccessToken :: Lens' PosCustombatch (Maybe Text)
posAccessToken
  = lens _posAccessToken
      (\ s a -> s{_posAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
posUploadType :: Lens' PosCustombatch (Maybe Text)
posUploadType
  = lens _posUploadType
      (\ s a -> s{_posUploadType = a})

-- | Multipart request metadata.
posPayload :: Lens' PosCustombatch PosCustomBatchRequest
posPayload
  = lens _posPayload (\ s a -> s{_posPayload = a})

-- | JSONP
posCallback :: Lens' PosCustombatch (Maybe Text)
posCallback
  = lens _posCallback (\ s a -> s{_posCallback = a})

instance GoogleRequest PosCustombatch where
        type Rs PosCustombatch = PosCustomBatchResponse
        type Scopes PosCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient PosCustombatch'{..}
          = go _posXgafv _posUploadProtocol _posAccessToken
              _posUploadType
              _posCallback
              (Just AltJSON)
              _posPayload
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy PosCustombatchResource)
                      mempty
