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
-- Module      : Network.Google.Resource.Content.PubsubnotificationSettings.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Register a Merchant Center account for pubsub notifications. Note that
-- cloud topic name should not be provided as part of the request.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.pubsubnotificationsettings.update@.
module Network.Google.Resource.Content.PubsubnotificationSettings.Update
    (
    -- * REST Resource
      PubsubnotificationSettingsUpdateResource

    -- * Creating a Request
    , pubsubnotificationSettingsUpdate
    , PubsubnotificationSettingsUpdate

    -- * Request Lenses
    , psuXgafv
    , psuMerchantId
    , psuUploadProtocol
    , psuAccessToken
    , psuUploadType
    , psuPayload
    , psuCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.pubsubnotificationsettings.update@ method which the
-- 'PubsubnotificationSettingsUpdate' request conforms to.
type PubsubnotificationSettingsUpdateResource =
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
                         ReqBody '[JSON] PubsubNotificationSettings :>
                           Put '[JSON] PubsubNotificationSettings

-- | Register a Merchant Center account for pubsub notifications. Note that
-- cloud topic name should not be provided as part of the request.
--
-- /See:/ 'pubsubnotificationSettingsUpdate' smart constructor.
data PubsubnotificationSettingsUpdate =
  PubsubnotificationSettingsUpdate'
    { _psuXgafv :: !(Maybe Xgafv)
    , _psuMerchantId :: !(Textual Word64)
    , _psuUploadProtocol :: !(Maybe Text)
    , _psuAccessToken :: !(Maybe Text)
    , _psuUploadType :: !(Maybe Text)
    , _psuPayload :: !PubsubNotificationSettings
    , _psuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PubsubnotificationSettingsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psuXgafv'
--
-- * 'psuMerchantId'
--
-- * 'psuUploadProtocol'
--
-- * 'psuAccessToken'
--
-- * 'psuUploadType'
--
-- * 'psuPayload'
--
-- * 'psuCallback'
pubsubnotificationSettingsUpdate
    :: Word64 -- ^ 'psuMerchantId'
    -> PubsubNotificationSettings -- ^ 'psuPayload'
    -> PubsubnotificationSettingsUpdate
pubsubnotificationSettingsUpdate pPsuMerchantId_ pPsuPayload_ =
  PubsubnotificationSettingsUpdate'
    { _psuXgafv = Nothing
    , _psuMerchantId = _Coerce # pPsuMerchantId_
    , _psuUploadProtocol = Nothing
    , _psuAccessToken = Nothing
    , _psuUploadType = Nothing
    , _psuPayload = pPsuPayload_
    , _psuCallback = Nothing
    }


-- | V1 error format.
psuXgafv :: Lens' PubsubnotificationSettingsUpdate (Maybe Xgafv)
psuXgafv = lens _psuXgafv (\ s a -> s{_psuXgafv = a})

-- | The ID of the account.
psuMerchantId :: Lens' PubsubnotificationSettingsUpdate Word64
psuMerchantId
  = lens _psuMerchantId
      (\ s a -> s{_psuMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psuUploadProtocol :: Lens' PubsubnotificationSettingsUpdate (Maybe Text)
psuUploadProtocol
  = lens _psuUploadProtocol
      (\ s a -> s{_psuUploadProtocol = a})

-- | OAuth access token.
psuAccessToken :: Lens' PubsubnotificationSettingsUpdate (Maybe Text)
psuAccessToken
  = lens _psuAccessToken
      (\ s a -> s{_psuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psuUploadType :: Lens' PubsubnotificationSettingsUpdate (Maybe Text)
psuUploadType
  = lens _psuUploadType
      (\ s a -> s{_psuUploadType = a})

-- | Multipart request metadata.
psuPayload :: Lens' PubsubnotificationSettingsUpdate PubsubNotificationSettings
psuPayload
  = lens _psuPayload (\ s a -> s{_psuPayload = a})

-- | JSONP
psuCallback :: Lens' PubsubnotificationSettingsUpdate (Maybe Text)
psuCallback
  = lens _psuCallback (\ s a -> s{_psuCallback = a})

instance GoogleRequest
           PubsubnotificationSettingsUpdate
         where
        type Rs PubsubnotificationSettingsUpdate =
             PubsubNotificationSettings
        type Scopes PubsubnotificationSettingsUpdate =
             '["https://www.googleapis.com/auth/content"]
        requestClient PubsubnotificationSettingsUpdate'{..}
          = go _psuMerchantId _psuXgafv _psuUploadProtocol
              _psuAccessToken
              _psuUploadType
              _psuCallback
              (Just AltJSON)
              _psuPayload
              shoppingContentService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PubsubnotificationSettingsUpdateResource)
                      mempty
