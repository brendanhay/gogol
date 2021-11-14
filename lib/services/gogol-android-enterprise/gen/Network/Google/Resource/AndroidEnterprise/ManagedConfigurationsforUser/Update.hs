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
-- Module      : Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates the managed configuration settings for an app for the
-- specified user. If you support the Managed configurations iframe, you
-- can apply managed configurations to a user by specifying an mcmId and
-- its associated configuration variables (if any) in the request.
-- Alternatively, all EMMs can apply managed configurations by passing a
-- list of managed properties.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsforuser.update@.
module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Update
    (
    -- * REST Resource
      ManagedConfigurationsforUserUpdateResource

    -- * Creating a Request
    , managedConfigurationsforUserUpdate
    , ManagedConfigurationsforUserUpdate

    -- * Request Lenses
    , mcuuXgafv
    , mcuuUploadProtocol
    , mcuuEnterpriseId
    , mcuuAccessToken
    , mcuuUploadType
    , mcuuPayload
    , mcuuUserId
    , mcuuManagedConfigurationForUserId
    , mcuuCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.managedconfigurationsforuser.update@ method which the
-- 'ManagedConfigurationsforUserUpdate' request conforms to.
type ManagedConfigurationsforUserUpdateResource =
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
                                 ReqBody '[JSON] ManagedConfiguration :>
                                   Put '[JSON] ManagedConfiguration

-- | Adds or updates the managed configuration settings for an app for the
-- specified user. If you support the Managed configurations iframe, you
-- can apply managed configurations to a user by specifying an mcmId and
-- its associated configuration variables (if any) in the request.
-- Alternatively, all EMMs can apply managed configurations by passing a
-- list of managed properties.
--
-- /See:/ 'managedConfigurationsforUserUpdate' smart constructor.
data ManagedConfigurationsforUserUpdate =
  ManagedConfigurationsforUserUpdate'
    { _mcuuXgafv :: !(Maybe Xgafv)
    , _mcuuUploadProtocol :: !(Maybe Text)
    , _mcuuEnterpriseId :: !Text
    , _mcuuAccessToken :: !(Maybe Text)
    , _mcuuUploadType :: !(Maybe Text)
    , _mcuuPayload :: !ManagedConfiguration
    , _mcuuUserId :: !Text
    , _mcuuManagedConfigurationForUserId :: !Text
    , _mcuuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedConfigurationsforUserUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcuuXgafv'
--
-- * 'mcuuUploadProtocol'
--
-- * 'mcuuEnterpriseId'
--
-- * 'mcuuAccessToken'
--
-- * 'mcuuUploadType'
--
-- * 'mcuuPayload'
--
-- * 'mcuuUserId'
--
-- * 'mcuuManagedConfigurationForUserId'
--
-- * 'mcuuCallback'
managedConfigurationsforUserUpdate
    :: Text -- ^ 'mcuuEnterpriseId'
    -> ManagedConfiguration -- ^ 'mcuuPayload'
    -> Text -- ^ 'mcuuUserId'
    -> Text -- ^ 'mcuuManagedConfigurationForUserId'
    -> ManagedConfigurationsforUserUpdate
managedConfigurationsforUserUpdate pMcuuEnterpriseId_ pMcuuPayload_ pMcuuUserId_ pMcuuManagedConfigurationForUserId_ =
  ManagedConfigurationsforUserUpdate'
    { _mcuuXgafv = Nothing
    , _mcuuUploadProtocol = Nothing
    , _mcuuEnterpriseId = pMcuuEnterpriseId_
    , _mcuuAccessToken = Nothing
    , _mcuuUploadType = Nothing
    , _mcuuPayload = pMcuuPayload_
    , _mcuuUserId = pMcuuUserId_
    , _mcuuManagedConfigurationForUserId = pMcuuManagedConfigurationForUserId_
    , _mcuuCallback = Nothing
    }


-- | V1 error format.
mcuuXgafv :: Lens' ManagedConfigurationsforUserUpdate (Maybe Xgafv)
mcuuXgafv
  = lens _mcuuXgafv (\ s a -> s{_mcuuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcuuUploadProtocol :: Lens' ManagedConfigurationsforUserUpdate (Maybe Text)
mcuuUploadProtocol
  = lens _mcuuUploadProtocol
      (\ s a -> s{_mcuuUploadProtocol = a})

-- | The ID of the enterprise.
mcuuEnterpriseId :: Lens' ManagedConfigurationsforUserUpdate Text
mcuuEnterpriseId
  = lens _mcuuEnterpriseId
      (\ s a -> s{_mcuuEnterpriseId = a})

-- | OAuth access token.
mcuuAccessToken :: Lens' ManagedConfigurationsforUserUpdate (Maybe Text)
mcuuAccessToken
  = lens _mcuuAccessToken
      (\ s a -> s{_mcuuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcuuUploadType :: Lens' ManagedConfigurationsforUserUpdate (Maybe Text)
mcuuUploadType
  = lens _mcuuUploadType
      (\ s a -> s{_mcuuUploadType = a})

-- | Multipart request metadata.
mcuuPayload :: Lens' ManagedConfigurationsforUserUpdate ManagedConfiguration
mcuuPayload
  = lens _mcuuPayload (\ s a -> s{_mcuuPayload = a})

-- | The ID of the user.
mcuuUserId :: Lens' ManagedConfigurationsforUserUpdate Text
mcuuUserId
  = lens _mcuuUserId (\ s a -> s{_mcuuUserId = a})

-- | The ID of the managed configuration (a product ID), e.g.
-- \"app:com.google.android.gm\".
mcuuManagedConfigurationForUserId :: Lens' ManagedConfigurationsforUserUpdate Text
mcuuManagedConfigurationForUserId
  = lens _mcuuManagedConfigurationForUserId
      (\ s a -> s{_mcuuManagedConfigurationForUserId = a})

-- | JSONP
mcuuCallback :: Lens' ManagedConfigurationsforUserUpdate (Maybe Text)
mcuuCallback
  = lens _mcuuCallback (\ s a -> s{_mcuuCallback = a})

instance GoogleRequest
           ManagedConfigurationsforUserUpdate
         where
        type Rs ManagedConfigurationsforUserUpdate =
             ManagedConfiguration
        type Scopes ManagedConfigurationsforUserUpdate =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ManagedConfigurationsforUserUpdate'{..}
          = go _mcuuEnterpriseId _mcuuUserId
              _mcuuManagedConfigurationForUserId
              _mcuuXgafv
              _mcuuUploadProtocol
              _mcuuAccessToken
              _mcuuUploadType
              _mcuuCallback
              (Just AltJSON)
              _mcuuPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationsforUserUpdateResource)
                      mempty
