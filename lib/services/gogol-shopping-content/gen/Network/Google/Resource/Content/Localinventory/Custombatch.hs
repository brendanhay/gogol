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
-- Module      : Network.Google.Resource.Content.Localinventory.Custombatch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates local inventory for multiple products or stores in a single
-- request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.localinventory.custombatch@.
module Network.Google.Resource.Content.Localinventory.Custombatch
    (
    -- * REST Resource
      LocalinventoryCustombatchResource

    -- * Creating a Request
    , localinventoryCustombatch
    , LocalinventoryCustombatch

    -- * Request Lenses
    , lcXgafv
    , lcUploadProtocol
    , lcAccessToken
    , lcUploadType
    , lcPayload
    , lcCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.localinventory.custombatch@ method which the
-- 'LocalinventoryCustombatch' request conforms to.
type LocalinventoryCustombatchResource =
     "content" :>
       "v2.1" :>
         "localinventory" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] LocalinventoryCustomBatchRequest :>
                           Post '[JSON] LocalinventoryCustomBatchResponse

-- | Updates local inventory for multiple products or stores in a single
-- request.
--
-- /See:/ 'localinventoryCustombatch' smart constructor.
data LocalinventoryCustombatch =
  LocalinventoryCustombatch'
    { _lcXgafv :: !(Maybe Xgafv)
    , _lcUploadProtocol :: !(Maybe Text)
    , _lcAccessToken :: !(Maybe Text)
    , _lcUploadType :: !(Maybe Text)
    , _lcPayload :: !LocalinventoryCustomBatchRequest
    , _lcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocalinventoryCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcXgafv'
--
-- * 'lcUploadProtocol'
--
-- * 'lcAccessToken'
--
-- * 'lcUploadType'
--
-- * 'lcPayload'
--
-- * 'lcCallback'
localinventoryCustombatch
    :: LocalinventoryCustomBatchRequest -- ^ 'lcPayload'
    -> LocalinventoryCustombatch
localinventoryCustombatch pLcPayload_ =
  LocalinventoryCustombatch'
    { _lcXgafv = Nothing
    , _lcUploadProtocol = Nothing
    , _lcAccessToken = Nothing
    , _lcUploadType = Nothing
    , _lcPayload = pLcPayload_
    , _lcCallback = Nothing
    }


-- | V1 error format.
lcXgafv :: Lens' LocalinventoryCustombatch (Maybe Xgafv)
lcXgafv = lens _lcXgafv (\ s a -> s{_lcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lcUploadProtocol :: Lens' LocalinventoryCustombatch (Maybe Text)
lcUploadProtocol
  = lens _lcUploadProtocol
      (\ s a -> s{_lcUploadProtocol = a})

-- | OAuth access token.
lcAccessToken :: Lens' LocalinventoryCustombatch (Maybe Text)
lcAccessToken
  = lens _lcAccessToken
      (\ s a -> s{_lcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lcUploadType :: Lens' LocalinventoryCustombatch (Maybe Text)
lcUploadType
  = lens _lcUploadType (\ s a -> s{_lcUploadType = a})

-- | Multipart request metadata.
lcPayload :: Lens' LocalinventoryCustombatch LocalinventoryCustomBatchRequest
lcPayload
  = lens _lcPayload (\ s a -> s{_lcPayload = a})

-- | JSONP
lcCallback :: Lens' LocalinventoryCustombatch (Maybe Text)
lcCallback
  = lens _lcCallback (\ s a -> s{_lcCallback = a})

instance GoogleRequest LocalinventoryCustombatch
         where
        type Rs LocalinventoryCustombatch =
             LocalinventoryCustomBatchResponse
        type Scopes LocalinventoryCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient LocalinventoryCustombatch'{..}
          = go _lcXgafv _lcUploadProtocol _lcAccessToken
              _lcUploadType
              _lcCallback
              (Just AltJSON)
              _lcPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy LocalinventoryCustombatchResource)
                      mempty
