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
-- Module      : Network.Google.Resource.Content.Accounttax.Custombatch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves and updates tax settings of multiple accounts in a single
-- request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounttax.custombatch@.
module Network.Google.Resource.Content.Accounttax.Custombatch
    (
    -- * REST Resource
      AccounttaxCustombatchResource

    -- * Creating a Request
    , accounttaxCustombatch
    , AccounttaxCustombatch

    -- * Request Lenses
    , ac1Xgafv
    , ac1UploadProtocol
    , ac1AccessToken
    , ac1UploadType
    , ac1Payload
    , ac1Callback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounttax.custombatch@ method which the
-- 'AccounttaxCustombatch' request conforms to.
type AccounttaxCustombatchResource =
     "content" :>
       "v2.1" :>
         "accounttax" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] AccounttaxCustomBatchRequest :>
                           Post '[JSON] AccounttaxCustomBatchResponse

-- | Retrieves and updates tax settings of multiple accounts in a single
-- request.
--
-- /See:/ 'accounttaxCustombatch' smart constructor.
data AccounttaxCustombatch =
  AccounttaxCustombatch'
    { _ac1Xgafv :: !(Maybe Xgafv)
    , _ac1UploadProtocol :: !(Maybe Text)
    , _ac1AccessToken :: !(Maybe Text)
    , _ac1UploadType :: !(Maybe Text)
    , _ac1Payload :: !AccounttaxCustomBatchRequest
    , _ac1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccounttaxCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ac1Xgafv'
--
-- * 'ac1UploadProtocol'
--
-- * 'ac1AccessToken'
--
-- * 'ac1UploadType'
--
-- * 'ac1Payload'
--
-- * 'ac1Callback'
accounttaxCustombatch
    :: AccounttaxCustomBatchRequest -- ^ 'ac1Payload'
    -> AccounttaxCustombatch
accounttaxCustombatch pAc1Payload_ =
  AccounttaxCustombatch'
    { _ac1Xgafv = Nothing
    , _ac1UploadProtocol = Nothing
    , _ac1AccessToken = Nothing
    , _ac1UploadType = Nothing
    , _ac1Payload = pAc1Payload_
    , _ac1Callback = Nothing
    }


-- | V1 error format.
ac1Xgafv :: Lens' AccounttaxCustombatch (Maybe Xgafv)
ac1Xgafv = lens _ac1Xgafv (\ s a -> s{_ac1Xgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ac1UploadProtocol :: Lens' AccounttaxCustombatch (Maybe Text)
ac1UploadProtocol
  = lens _ac1UploadProtocol
      (\ s a -> s{_ac1UploadProtocol = a})

-- | OAuth access token.
ac1AccessToken :: Lens' AccounttaxCustombatch (Maybe Text)
ac1AccessToken
  = lens _ac1AccessToken
      (\ s a -> s{_ac1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ac1UploadType :: Lens' AccounttaxCustombatch (Maybe Text)
ac1UploadType
  = lens _ac1UploadType
      (\ s a -> s{_ac1UploadType = a})

-- | Multipart request metadata.
ac1Payload :: Lens' AccounttaxCustombatch AccounttaxCustomBatchRequest
ac1Payload
  = lens _ac1Payload (\ s a -> s{_ac1Payload = a})

-- | JSONP
ac1Callback :: Lens' AccounttaxCustombatch (Maybe Text)
ac1Callback
  = lens _ac1Callback (\ s a -> s{_ac1Callback = a})

instance GoogleRequest AccounttaxCustombatch where
        type Rs AccounttaxCustombatch =
             AccounttaxCustomBatchResponse
        type Scopes AccounttaxCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccounttaxCustombatch'{..}
          = go _ac1Xgafv _ac1UploadProtocol _ac1AccessToken
              _ac1UploadType
              _ac1Callback
              (Just AltJSON)
              _ac1Payload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccounttaxCustombatchResource)
                      mempty
