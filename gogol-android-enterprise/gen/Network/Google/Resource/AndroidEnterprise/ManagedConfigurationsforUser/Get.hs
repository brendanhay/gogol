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
-- Module      : Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of a per-user managed configuration for an app for the
-- specified user.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsforuser.get@.
module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Get
    (
    -- * REST Resource
      ManagedConfigurationsforUserGetResource

    -- * Creating a Request
    , managedConfigurationsforUserGet
    , ManagedConfigurationsforUserGet

    -- * Request Lenses
    , mcugXgafv
    , mcugUploadProtocol
    , mcugEnterpriseId
    , mcugAccessToken
    , mcugUploadType
    , mcugUserId
    , mcugManagedConfigurationForUserId
    , mcugCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.managedconfigurationsforuser.get@ method which the
-- 'ManagedConfigurationsforUserGet' request conforms to.
type ManagedConfigurationsforUserGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "managedConfigurationsForUser" :>
                   Capture "managedConfigurationForUserId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ManagedConfiguration

-- | Retrieves details of a per-user managed configuration for an app for the
-- specified user.
--
-- /See:/ 'managedConfigurationsforUserGet' smart constructor.
data ManagedConfigurationsforUserGet =
  ManagedConfigurationsforUserGet'
    { _mcugXgafv :: !(Maybe Xgafv)
    , _mcugUploadProtocol :: !(Maybe Text)
    , _mcugEnterpriseId :: !Text
    , _mcugAccessToken :: !(Maybe Text)
    , _mcugUploadType :: !(Maybe Text)
    , _mcugUserId :: !Text
    , _mcugManagedConfigurationForUserId :: !Text
    , _mcugCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedConfigurationsforUserGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcugXgafv'
--
-- * 'mcugUploadProtocol'
--
-- * 'mcugEnterpriseId'
--
-- * 'mcugAccessToken'
--
-- * 'mcugUploadType'
--
-- * 'mcugUserId'
--
-- * 'mcugManagedConfigurationForUserId'
--
-- * 'mcugCallback'
managedConfigurationsforUserGet
    :: Text -- ^ 'mcugEnterpriseId'
    -> Text -- ^ 'mcugUserId'
    -> Text -- ^ 'mcugManagedConfigurationForUserId'
    -> ManagedConfigurationsforUserGet
managedConfigurationsforUserGet pMcugEnterpriseId_ pMcugUserId_ pMcugManagedConfigurationForUserId_ =
  ManagedConfigurationsforUserGet'
    { _mcugXgafv = Nothing
    , _mcugUploadProtocol = Nothing
    , _mcugEnterpriseId = pMcugEnterpriseId_
    , _mcugAccessToken = Nothing
    , _mcugUploadType = Nothing
    , _mcugUserId = pMcugUserId_
    , _mcugManagedConfigurationForUserId = pMcugManagedConfigurationForUserId_
    , _mcugCallback = Nothing
    }


-- | V1 error format.
mcugXgafv :: Lens' ManagedConfigurationsforUserGet (Maybe Xgafv)
mcugXgafv
  = lens _mcugXgafv (\ s a -> s{_mcugXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcugUploadProtocol :: Lens' ManagedConfigurationsforUserGet (Maybe Text)
mcugUploadProtocol
  = lens _mcugUploadProtocol
      (\ s a -> s{_mcugUploadProtocol = a})

-- | The ID of the enterprise.
mcugEnterpriseId :: Lens' ManagedConfigurationsforUserGet Text
mcugEnterpriseId
  = lens _mcugEnterpriseId
      (\ s a -> s{_mcugEnterpriseId = a})

-- | OAuth access token.
mcugAccessToken :: Lens' ManagedConfigurationsforUserGet (Maybe Text)
mcugAccessToken
  = lens _mcugAccessToken
      (\ s a -> s{_mcugAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcugUploadType :: Lens' ManagedConfigurationsforUserGet (Maybe Text)
mcugUploadType
  = lens _mcugUploadType
      (\ s a -> s{_mcugUploadType = a})

-- | The ID of the user.
mcugUserId :: Lens' ManagedConfigurationsforUserGet Text
mcugUserId
  = lens _mcugUserId (\ s a -> s{_mcugUserId = a})

-- | The ID of the managed configuration (a product ID), e.g.
-- \"app:com.google.android.gm\".
mcugManagedConfigurationForUserId :: Lens' ManagedConfigurationsforUserGet Text
mcugManagedConfigurationForUserId
  = lens _mcugManagedConfigurationForUserId
      (\ s a -> s{_mcugManagedConfigurationForUserId = a})

-- | JSONP
mcugCallback :: Lens' ManagedConfigurationsforUserGet (Maybe Text)
mcugCallback
  = lens _mcugCallback (\ s a -> s{_mcugCallback = a})

instance GoogleRequest
           ManagedConfigurationsforUserGet
         where
        type Rs ManagedConfigurationsforUserGet =
             ManagedConfiguration
        type Scopes ManagedConfigurationsforUserGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ManagedConfigurationsforUserGet'{..}
          = go _mcugEnterpriseId _mcugUserId
              _mcugManagedConfigurationForUserId
              _mcugXgafv
              _mcugUploadProtocol
              _mcugAccessToken
              _mcugUploadType
              _mcugCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationsforUserGetResource)
                      mempty
