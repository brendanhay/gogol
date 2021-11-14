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
-- Module      : Network.Google.Resource.Content.LiaSettings.Custombatch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves and\/or updates the LIA settings of multiple accounts in a
-- single request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.liasettings.custombatch@.
module Network.Google.Resource.Content.LiaSettings.Custombatch
    (
    -- * REST Resource
      LiaSettingsCustombatchResource

    -- * Creating a Request
    , liaSettingsCustombatch
    , LiaSettingsCustombatch

    -- * Request Lenses
    , lscXgafv
    , lscUploadProtocol
    , lscAccessToken
    , lscUploadType
    , lscPayload
    , lscCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.custombatch@ method which the
-- 'LiaSettingsCustombatch' request conforms to.
type LiaSettingsCustombatchResource =
     "content" :>
       "v2.1" :>
         "liasettings" :>
           "batch" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] LiaSettingsCustomBatchRequest :>
                           Post '[JSON] LiaSettingsCustomBatchResponse

-- | Retrieves and\/or updates the LIA settings of multiple accounts in a
-- single request.
--
-- /See:/ 'liaSettingsCustombatch' smart constructor.
data LiaSettingsCustombatch =
  LiaSettingsCustombatch'
    { _lscXgafv :: !(Maybe Xgafv)
    , _lscUploadProtocol :: !(Maybe Text)
    , _lscAccessToken :: !(Maybe Text)
    , _lscUploadType :: !(Maybe Text)
    , _lscPayload :: !LiaSettingsCustomBatchRequest
    , _lscCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsCustombatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscXgafv'
--
-- * 'lscUploadProtocol'
--
-- * 'lscAccessToken'
--
-- * 'lscUploadType'
--
-- * 'lscPayload'
--
-- * 'lscCallback'
liaSettingsCustombatch
    :: LiaSettingsCustomBatchRequest -- ^ 'lscPayload'
    -> LiaSettingsCustombatch
liaSettingsCustombatch pLscPayload_ =
  LiaSettingsCustombatch'
    { _lscXgafv = Nothing
    , _lscUploadProtocol = Nothing
    , _lscAccessToken = Nothing
    , _lscUploadType = Nothing
    , _lscPayload = pLscPayload_
    , _lscCallback = Nothing
    }


-- | V1 error format.
lscXgafv :: Lens' LiaSettingsCustombatch (Maybe Xgafv)
lscXgafv = lens _lscXgafv (\ s a -> s{_lscXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lscUploadProtocol :: Lens' LiaSettingsCustombatch (Maybe Text)
lscUploadProtocol
  = lens _lscUploadProtocol
      (\ s a -> s{_lscUploadProtocol = a})

-- | OAuth access token.
lscAccessToken :: Lens' LiaSettingsCustombatch (Maybe Text)
lscAccessToken
  = lens _lscAccessToken
      (\ s a -> s{_lscAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lscUploadType :: Lens' LiaSettingsCustombatch (Maybe Text)
lscUploadType
  = lens _lscUploadType
      (\ s a -> s{_lscUploadType = a})

-- | Multipart request metadata.
lscPayload :: Lens' LiaSettingsCustombatch LiaSettingsCustomBatchRequest
lscPayload
  = lens _lscPayload (\ s a -> s{_lscPayload = a})

-- | JSONP
lscCallback :: Lens' LiaSettingsCustombatch (Maybe Text)
lscCallback
  = lens _lscCallback (\ s a -> s{_lscCallback = a})

instance GoogleRequest LiaSettingsCustombatch where
        type Rs LiaSettingsCustombatch =
             LiaSettingsCustomBatchResponse
        type Scopes LiaSettingsCustombatch =
             '["https://www.googleapis.com/auth/content"]
        requestClient LiaSettingsCustombatch'{..}
          = go _lscXgafv _lscUploadProtocol _lscAccessToken
              _lscUploadType
              _lscCallback
              (Just AltJSON)
              _lscPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy LiaSettingsCustombatchResource)
                      mempty
