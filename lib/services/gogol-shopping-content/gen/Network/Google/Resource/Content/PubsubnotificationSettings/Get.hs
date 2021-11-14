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
-- Module      : Network.Google.Resource.Content.PubsubnotificationSettings.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a Merchant Center account\'s pubsub notification settings.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pubsubnotificationsettings.get@.
module Network.Google.Resource.Content.PubsubnotificationSettings.Get
    (
    -- * REST Resource
      PubsubnotificationSettingsGetResource

    -- * Creating a Request
    , pubsubnotificationSettingsGet
    , PubsubnotificationSettingsGet

    -- * Request Lenses
    , psgXgafv
    , psgMerchantId
    , psgUploadProtocol
    , psgAccessToken
    , psgUploadType
    , psgCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.pubsubnotificationsettings.get@ method which the
-- 'PubsubnotificationSettingsGet' request conforms to.
type PubsubnotificationSettingsGetResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "pubsubnotificationsettings" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] PubsubNotificationSettings

-- | Retrieves a Merchant Center account\'s pubsub notification settings.
--
-- /See:/ 'pubsubnotificationSettingsGet' smart constructor.
data PubsubnotificationSettingsGet =
  PubsubnotificationSettingsGet'
    { _psgXgafv :: !(Maybe Xgafv)
    , _psgMerchantId :: !(Textual Word64)
    , _psgUploadProtocol :: !(Maybe Text)
    , _psgAccessToken :: !(Maybe Text)
    , _psgUploadType :: !(Maybe Text)
    , _psgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubsubnotificationSettingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgXgafv'
--
-- * 'psgMerchantId'
--
-- * 'psgUploadProtocol'
--
-- * 'psgAccessToken'
--
-- * 'psgUploadType'
--
-- * 'psgCallback'
pubsubnotificationSettingsGet
    :: Word64 -- ^ 'psgMerchantId'
    -> PubsubnotificationSettingsGet
pubsubnotificationSettingsGet pPsgMerchantId_ =
  PubsubnotificationSettingsGet'
    { _psgXgafv = Nothing
    , _psgMerchantId = _Coerce # pPsgMerchantId_
    , _psgUploadProtocol = Nothing
    , _psgAccessToken = Nothing
    , _psgUploadType = Nothing
    , _psgCallback = Nothing
    }


-- | V1 error format.
psgXgafv :: Lens' PubsubnotificationSettingsGet (Maybe Xgafv)
psgXgafv = lens _psgXgafv (\ s a -> s{_psgXgafv = a})

-- | The ID of the account for which to get pubsub notification settings.
psgMerchantId :: Lens' PubsubnotificationSettingsGet Word64
psgMerchantId
  = lens _psgMerchantId
      (\ s a -> s{_psgMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgUploadProtocol :: Lens' PubsubnotificationSettingsGet (Maybe Text)
psgUploadProtocol
  = lens _psgUploadProtocol
      (\ s a -> s{_psgUploadProtocol = a})

-- | OAuth access token.
psgAccessToken :: Lens' PubsubnotificationSettingsGet (Maybe Text)
psgAccessToken
  = lens _psgAccessToken
      (\ s a -> s{_psgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgUploadType :: Lens' PubsubnotificationSettingsGet (Maybe Text)
psgUploadType
  = lens _psgUploadType
      (\ s a -> s{_psgUploadType = a})

-- | JSONP
psgCallback :: Lens' PubsubnotificationSettingsGet (Maybe Text)
psgCallback
  = lens _psgCallback (\ s a -> s{_psgCallback = a})

instance GoogleRequest PubsubnotificationSettingsGet
         where
        type Rs PubsubnotificationSettingsGet =
             PubsubNotificationSettings
        type Scopes PubsubnotificationSettingsGet =
             '["https://www.googleapis.com/auth/content"]
        requestClient PubsubnotificationSettingsGet'{..}
          = go _psgMerchantId _psgXgafv _psgUploadProtocol
              _psgAccessToken
              _psgUploadType
              _psgCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PubsubnotificationSettingsGetResource)
                      mempty
