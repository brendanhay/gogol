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
-- Module      : Network.Google.Resource.Content.LiaSettings.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the LIA settings of the account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.liasettings.get@.
module Network.Google.Resource.Content.LiaSettings.Get
    (
    -- * REST Resource
      LiaSettingsGetResource

    -- * Creating a Request
    , liaSettingsGet
    , LiaSettingsGet

    -- * Request Lenses
    , lsgXgafv
    , lsgMerchantId
    , lsgUploadProtocol
    , lsgAccessToken
    , lsgUploadType
    , lsgAccountId
    , lsgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.get@ method which the
-- 'LiaSettingsGet' request conforms to.
type LiaSettingsGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "liasettings" :>
             Capture "accountId" (Textual Word64) :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] LiaSettings

-- | Retrieves the LIA settings of the account.
--
-- /See:/ 'liaSettingsGet' smart constructor.
data LiaSettingsGet =
  LiaSettingsGet'
    { _lsgXgafv :: !(Maybe Xgafv)
    , _lsgMerchantId :: !(Textual Word64)
    , _lsgUploadProtocol :: !(Maybe Text)
    , _lsgAccessToken :: !(Maybe Text)
    , _lsgUploadType :: !(Maybe Text)
    , _lsgAccountId :: !(Textual Word64)
    , _lsgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LiaSettingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsgXgafv'
--
-- * 'lsgMerchantId'
--
-- * 'lsgUploadProtocol'
--
-- * 'lsgAccessToken'
--
-- * 'lsgUploadType'
--
-- * 'lsgAccountId'
--
-- * 'lsgCallback'
liaSettingsGet
    :: Word64 -- ^ 'lsgMerchantId'
    -> Word64 -- ^ 'lsgAccountId'
    -> LiaSettingsGet
liaSettingsGet pLsgMerchantId_ pLsgAccountId_ =
  LiaSettingsGet'
    { _lsgXgafv = Nothing
    , _lsgMerchantId = _Coerce # pLsgMerchantId_
    , _lsgUploadProtocol = Nothing
    , _lsgAccessToken = Nothing
    , _lsgUploadType = Nothing
    , _lsgAccountId = _Coerce # pLsgAccountId_
    , _lsgCallback = Nothing
    }


-- | V1 error format.
lsgXgafv :: Lens' LiaSettingsGet (Maybe Xgafv)
lsgXgafv = lens _lsgXgafv (\ s a -> s{_lsgXgafv = a})

-- | The ID of the managing account. If this parameter is not the same as
-- accountId, then this account must be a multi-client account and
-- \`accountId\` must be the ID of a sub-account of this account.
lsgMerchantId :: Lens' LiaSettingsGet Word64
lsgMerchantId
  = lens _lsgMerchantId
      (\ s a -> s{_lsgMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lsgUploadProtocol :: Lens' LiaSettingsGet (Maybe Text)
lsgUploadProtocol
  = lens _lsgUploadProtocol
      (\ s a -> s{_lsgUploadProtocol = a})

-- | OAuth access token.
lsgAccessToken :: Lens' LiaSettingsGet (Maybe Text)
lsgAccessToken
  = lens _lsgAccessToken
      (\ s a -> s{_lsgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lsgUploadType :: Lens' LiaSettingsGet (Maybe Text)
lsgUploadType
  = lens _lsgUploadType
      (\ s a -> s{_lsgUploadType = a})

-- | The ID of the account for which to get or update LIA settings.
lsgAccountId :: Lens' LiaSettingsGet Word64
lsgAccountId
  = lens _lsgAccountId (\ s a -> s{_lsgAccountId = a})
      . _Coerce

-- | JSONP
lsgCallback :: Lens' LiaSettingsGet (Maybe Text)
lsgCallback
  = lens _lsgCallback (\ s a -> s{_lsgCallback = a})

instance GoogleRequest LiaSettingsGet where
        type Rs LiaSettingsGet = LiaSettings
        type Scopes LiaSettingsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient LiaSettingsGet'{..}
          = go _lsgMerchantId _lsgAccountId _lsgXgafv
              _lsgUploadProtocol
              _lsgAccessToken
              _lsgUploadType
              _lsgCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy LiaSettingsGetResource)
                      mempty
