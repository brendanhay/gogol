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
-- Module      : Network.Google.Resource.AndroidEnterprise.ManagedConfigurationssettings.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the managed configurations settings for the specified app.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationssettings.list@.
module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationssettings.List
    (
    -- * REST Resource
      ManagedConfigurationssettingsListResource

    -- * Creating a Request
    , managedConfigurationssettingsList
    , ManagedConfigurationssettingsList

    -- * Request Lenses
    , mclXgafv
    , mclUploadProtocol
    , mclEnterpriseId
    , mclAccessToken
    , mclUploadType
    , mclProductId
    , mclCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.managedconfigurationssettings.list@ method which the
-- 'ManagedConfigurationssettingsList' request conforms to.
type ManagedConfigurationssettingsListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "products" :>
               Capture "productId" Text :>
                 "managedConfigurationsSettings" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 ManagedConfigurationsSettingsListResponse

-- | Lists all the managed configurations settings for the specified app.
--
-- /See:/ 'managedConfigurationssettingsList' smart constructor.
data ManagedConfigurationssettingsList =
  ManagedConfigurationssettingsList'
    { _mclXgafv :: !(Maybe Xgafv)
    , _mclUploadProtocol :: !(Maybe Text)
    , _mclEnterpriseId :: !Text
    , _mclAccessToken :: !(Maybe Text)
    , _mclUploadType :: !(Maybe Text)
    , _mclProductId :: !Text
    , _mclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedConfigurationssettingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mclXgafv'
--
-- * 'mclUploadProtocol'
--
-- * 'mclEnterpriseId'
--
-- * 'mclAccessToken'
--
-- * 'mclUploadType'
--
-- * 'mclProductId'
--
-- * 'mclCallback'
managedConfigurationssettingsList
    :: Text -- ^ 'mclEnterpriseId'
    -> Text -- ^ 'mclProductId'
    -> ManagedConfigurationssettingsList
managedConfigurationssettingsList pMclEnterpriseId_ pMclProductId_ =
  ManagedConfigurationssettingsList'
    { _mclXgafv = Nothing
    , _mclUploadProtocol = Nothing
    , _mclEnterpriseId = pMclEnterpriseId_
    , _mclAccessToken = Nothing
    , _mclUploadType = Nothing
    , _mclProductId = pMclProductId_
    , _mclCallback = Nothing
    }


-- | V1 error format.
mclXgafv :: Lens' ManagedConfigurationssettingsList (Maybe Xgafv)
mclXgafv = lens _mclXgafv (\ s a -> s{_mclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mclUploadProtocol :: Lens' ManagedConfigurationssettingsList (Maybe Text)
mclUploadProtocol
  = lens _mclUploadProtocol
      (\ s a -> s{_mclUploadProtocol = a})

-- | The ID of the enterprise.
mclEnterpriseId :: Lens' ManagedConfigurationssettingsList Text
mclEnterpriseId
  = lens _mclEnterpriseId
      (\ s a -> s{_mclEnterpriseId = a})

-- | OAuth access token.
mclAccessToken :: Lens' ManagedConfigurationssettingsList (Maybe Text)
mclAccessToken
  = lens _mclAccessToken
      (\ s a -> s{_mclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mclUploadType :: Lens' ManagedConfigurationssettingsList (Maybe Text)
mclUploadType
  = lens _mclUploadType
      (\ s a -> s{_mclUploadType = a})

-- | The ID of the product for which the managed configurations settings
-- applies to.
mclProductId :: Lens' ManagedConfigurationssettingsList Text
mclProductId
  = lens _mclProductId (\ s a -> s{_mclProductId = a})

-- | JSONP
mclCallback :: Lens' ManagedConfigurationssettingsList (Maybe Text)
mclCallback
  = lens _mclCallback (\ s a -> s{_mclCallback = a})

instance GoogleRequest
           ManagedConfigurationssettingsList
         where
        type Rs ManagedConfigurationssettingsList =
             ManagedConfigurationsSettingsListResponse
        type Scopes ManagedConfigurationssettingsList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ManagedConfigurationssettingsList'{..}
          = go _mclEnterpriseId _mclProductId _mclXgafv
              _mclUploadProtocol
              _mclAccessToken
              _mclUploadType
              _mclCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationssettingsListResource)
                      mempty
