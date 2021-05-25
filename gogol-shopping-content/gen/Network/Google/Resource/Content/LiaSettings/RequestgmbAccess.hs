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
-- Module      : Network.Google.Resource.Content.LiaSettings.RequestgmbAccess
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Requests access to a specified Google My Business account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.liasettings.requestgmbaccess@.
module Network.Google.Resource.Content.LiaSettings.RequestgmbAccess
    (
    -- * REST Resource
      LiaSettingsRequestgmbAccessResource

    -- * Creating a Request
    , liaSettingsRequestgmbAccess
    , LiaSettingsRequestgmbAccess

    -- * Request Lenses
    , lsraGmbEmail
    , lsraXgafv
    , lsraMerchantId
    , lsraUploadProtocol
    , lsraAccessToken
    , lsraUploadType
    , lsraAccountId
    , lsraCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.requestgmbaccess@ method which the
-- 'LiaSettingsRequestgmbAccess' request conforms to.
type LiaSettingsRequestgmbAccessResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "liasettings" :>
             Capture "accountId" (Textual Word64) :>
               "requestgmbaccess" :>
                 QueryParam "gmbEmail" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON] LiaSettingsRequestGmbAccessResponse

-- | Requests access to a specified Google My Business account.
--
-- /See:/ 'liaSettingsRequestgmbAccess' smart constructor.
data LiaSettingsRequestgmbAccess =
  LiaSettingsRequestgmbAccess'
    { _lsraGmbEmail :: !Text
    , _lsraXgafv :: !(Maybe Xgafv)
    , _lsraMerchantId :: !(Textual Word64)
    , _lsraUploadProtocol :: !(Maybe Text)
    , _lsraAccessToken :: !(Maybe Text)
    , _lsraUploadType :: !(Maybe Text)
    , _lsraAccountId :: !(Textual Word64)
    , _lsraCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsRequestgmbAccess' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsraGmbEmail'
--
-- * 'lsraXgafv'
--
-- * 'lsraMerchantId'
--
-- * 'lsraUploadProtocol'
--
-- * 'lsraAccessToken'
--
-- * 'lsraUploadType'
--
-- * 'lsraAccountId'
--
-- * 'lsraCallback'
liaSettingsRequestgmbAccess
    :: Text -- ^ 'lsraGmbEmail'
    -> Word64 -- ^ 'lsraMerchantId'
    -> Word64 -- ^ 'lsraAccountId'
    -> LiaSettingsRequestgmbAccess
liaSettingsRequestgmbAccess pLsraGmbEmail_ pLsraMerchantId_ pLsraAccountId_ =
  LiaSettingsRequestgmbAccess'
    { _lsraGmbEmail = pLsraGmbEmail_
    , _lsraXgafv = Nothing
    , _lsraMerchantId = _Coerce # pLsraMerchantId_
    , _lsraUploadProtocol = Nothing
    , _lsraAccessToken = Nothing
    , _lsraUploadType = Nothing
    , _lsraAccountId = _Coerce # pLsraAccountId_
    , _lsraCallback = Nothing
    }


-- | The email of the Google My Business account.
lsraGmbEmail :: Lens' LiaSettingsRequestgmbAccess Text
lsraGmbEmail
  = lens _lsraGmbEmail (\ s a -> s{_lsraGmbEmail = a})

-- | V1 error format.
lsraXgafv :: Lens' LiaSettingsRequestgmbAccess (Maybe Xgafv)
lsraXgafv
  = lens _lsraXgafv (\ s a -> s{_lsraXgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
lsraMerchantId :: Lens' LiaSettingsRequestgmbAccess Word64
lsraMerchantId
  = lens _lsraMerchantId
      (\ s a -> s{_lsraMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lsraUploadProtocol :: Lens' LiaSettingsRequestgmbAccess (Maybe Text)
lsraUploadProtocol
  = lens _lsraUploadProtocol
      (\ s a -> s{_lsraUploadProtocol = a})

-- | OAuth access token.
lsraAccessToken :: Lens' LiaSettingsRequestgmbAccess (Maybe Text)
lsraAccessToken
  = lens _lsraAccessToken
      (\ s a -> s{_lsraAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lsraUploadType :: Lens' LiaSettingsRequestgmbAccess (Maybe Text)
lsraUploadType
  = lens _lsraUploadType
      (\ s a -> s{_lsraUploadType = a})

-- | The ID of the account for which GMB access is requested.
lsraAccountId :: Lens' LiaSettingsRequestgmbAccess Word64
lsraAccountId
  = lens _lsraAccountId
      (\ s a -> s{_lsraAccountId = a})
      . _Coerce

-- | JSONP
lsraCallback :: Lens' LiaSettingsRequestgmbAccess (Maybe Text)
lsraCallback
  = lens _lsraCallback (\ s a -> s{_lsraCallback = a})

instance GoogleRequest LiaSettingsRequestgmbAccess
         where
        type Rs LiaSettingsRequestgmbAccess =
             LiaSettingsRequestGmbAccessResponse
        type Scopes LiaSettingsRequestgmbAccess =
             '["https://www.googleapis.com/auth/content"]
        requestClient LiaSettingsRequestgmbAccess'{..}
          = go _lsraMerchantId _lsraAccountId
              (Just _lsraGmbEmail)
              _lsraXgafv
              _lsraUploadProtocol
              _lsraAccessToken
              _lsraUploadType
              _lsraCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy LiaSettingsRequestgmbAccessResource)
                      mempty
