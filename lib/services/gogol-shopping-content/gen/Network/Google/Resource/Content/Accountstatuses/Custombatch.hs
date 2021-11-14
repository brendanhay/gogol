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
-- Module      : Network.Google.Resource.Content.Accountstatuses.Custombatch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves multiple Merchant Center account statuses in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accountstatuses.custombatch@.
module Network.Google.Resource.Content.Accountstatuses.Custombatch
    (
    -- * REST Resource
      AccountstatusesCustombatchResource

    -- * Creating a Request
    , accountstatusesCustombatch
    , AccountstatusesCustombatch

    -- * Request Lenses
    , acXgafv
    , acUploadProtocol
    , acAccessToken
    , acUploadType
    , acPayload
    , acCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accountstatuses.custombatch@ method which the
-- 'AccountstatusesCustombatch' request conforms to.
type AccountstatusesCustombatchResource =
     "content" :>
       "v2.1" :>
         "accountstatuses" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AccountstatusesCustomBatchRequest :>
                           Post '[JSON] AccountstatusesCustomBatchResponse

-- | Retrieves multiple Merchant Center account statuses in a single request.
--
-- /See:/ 'accountstatusesCustombatch' smart constructor.
data AccountstatusesCustombatch =
  AccountstatusesCustombatch'
    { _acXgafv :: !(Maybe Xgafv)
    , _acUploadProtocol :: !(Maybe Text)
    , _acAccessToken :: !(Maybe Text)
    , _acUploadType :: !(Maybe Text)
    , _acPayload :: !AccountstatusesCustomBatchRequest
    , _acCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountstatusesCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acXgafv'
--
-- * 'acUploadProtocol'
--
-- * 'acAccessToken'
--
-- * 'acUploadType'
--
-- * 'acPayload'
--
-- * 'acCallback'
accountstatusesCustombatch
    :: AccountstatusesCustomBatchRequest -- ^ 'acPayload'
    -> AccountstatusesCustombatch
accountstatusesCustombatch pAcPayload_ =
  AccountstatusesCustombatch'
    { _acXgafv = Nothing
    , _acUploadProtocol = Nothing
    , _acAccessToken = Nothing
    , _acUploadType = Nothing
    , _acPayload = pAcPayload_
    , _acCallback = Nothing
    }


-- | V1 error format.
acXgafv :: Lens' AccountstatusesCustombatch (Maybe Xgafv)
acXgafv = lens _acXgafv (\ s a -> s{_acXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acUploadProtocol :: Lens' AccountstatusesCustombatch (Maybe Text)
acUploadProtocol
  = lens _acUploadProtocol
      (\ s a -> s{_acUploadProtocol = a})

-- | OAuth access token.
acAccessToken :: Lens' AccountstatusesCustombatch (Maybe Text)
acAccessToken
  = lens _acAccessToken
      (\ s a -> s{_acAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acUploadType :: Lens' AccountstatusesCustombatch (Maybe Text)
acUploadType
  = lens _acUploadType (\ s a -> s{_acUploadType = a})

-- | Multipart request metadata.
acPayload :: Lens' AccountstatusesCustombatch AccountstatusesCustomBatchRequest
acPayload
  = lens _acPayload (\ s a -> s{_acPayload = a})

-- | JSONP
acCallback :: Lens' AccountstatusesCustombatch (Maybe Text)
acCallback
  = lens _acCallback (\ s a -> s{_acCallback = a})

instance GoogleRequest AccountstatusesCustombatch
         where
        type Rs AccountstatusesCustombatch =
             AccountstatusesCustomBatchResponse
        type Scopes AccountstatusesCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountstatusesCustombatch'{..}
          = go _acXgafv _acUploadProtocol _acAccessToken
              _acUploadType
              _acCallback
              (Just AltJSON)
              _acPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountstatusesCustombatchResource)
                      mempty
