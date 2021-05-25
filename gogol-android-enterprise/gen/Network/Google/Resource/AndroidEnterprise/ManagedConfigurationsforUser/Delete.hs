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
-- Module      : Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a per-user managed configuration for an app for the specified
-- user.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsforuser.delete@.
module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.Delete
    (
    -- * REST Resource
      ManagedConfigurationsforUserDeleteResource

    -- * Creating a Request
    , managedConfigurationsforUserDelete
    , ManagedConfigurationsforUserDelete

    -- * Request Lenses
    , mcudXgafv
    , mcudUploadProtocol
    , mcudEnterpriseId
    , mcudAccessToken
    , mcudUploadType
    , mcudUserId
    , mcudManagedConfigurationForUserId
    , mcudCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.managedconfigurationsforuser.delete@ method which the
-- 'ManagedConfigurationsforUserDelete' request conforms to.
type ManagedConfigurationsforUserDeleteResource =
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
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a per-user managed configuration for an app for the specified
-- user.
--
-- /See:/ 'managedConfigurationsforUserDelete' smart constructor.
data ManagedConfigurationsforUserDelete =
  ManagedConfigurationsforUserDelete'
    { _mcudXgafv :: !(Maybe Xgafv)
    , _mcudUploadProtocol :: !(Maybe Text)
    , _mcudEnterpriseId :: !Text
    , _mcudAccessToken :: !(Maybe Text)
    , _mcudUploadType :: !(Maybe Text)
    , _mcudUserId :: !Text
    , _mcudManagedConfigurationForUserId :: !Text
    , _mcudCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedConfigurationsforUserDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcudXgafv'
--
-- * 'mcudUploadProtocol'
--
-- * 'mcudEnterpriseId'
--
-- * 'mcudAccessToken'
--
-- * 'mcudUploadType'
--
-- * 'mcudUserId'
--
-- * 'mcudManagedConfigurationForUserId'
--
-- * 'mcudCallback'
managedConfigurationsforUserDelete
    :: Text -- ^ 'mcudEnterpriseId'
    -> Text -- ^ 'mcudUserId'
    -> Text -- ^ 'mcudManagedConfigurationForUserId'
    -> ManagedConfigurationsforUserDelete
managedConfigurationsforUserDelete pMcudEnterpriseId_ pMcudUserId_ pMcudManagedConfigurationForUserId_ =
  ManagedConfigurationsforUserDelete'
    { _mcudXgafv = Nothing
    , _mcudUploadProtocol = Nothing
    , _mcudEnterpriseId = pMcudEnterpriseId_
    , _mcudAccessToken = Nothing
    , _mcudUploadType = Nothing
    , _mcudUserId = pMcudUserId_
    , _mcudManagedConfigurationForUserId = pMcudManagedConfigurationForUserId_
    , _mcudCallback = Nothing
    }


-- | V1 error format.
mcudXgafv :: Lens' ManagedConfigurationsforUserDelete (Maybe Xgafv)
mcudXgafv
  = lens _mcudXgafv (\ s a -> s{_mcudXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mcudUploadProtocol :: Lens' ManagedConfigurationsforUserDelete (Maybe Text)
mcudUploadProtocol
  = lens _mcudUploadProtocol
      (\ s a -> s{_mcudUploadProtocol = a})

-- | The ID of the enterprise.
mcudEnterpriseId :: Lens' ManagedConfigurationsforUserDelete Text
mcudEnterpriseId
  = lens _mcudEnterpriseId
      (\ s a -> s{_mcudEnterpriseId = a})

-- | OAuth access token.
mcudAccessToken :: Lens' ManagedConfigurationsforUserDelete (Maybe Text)
mcudAccessToken
  = lens _mcudAccessToken
      (\ s a -> s{_mcudAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mcudUploadType :: Lens' ManagedConfigurationsforUserDelete (Maybe Text)
mcudUploadType
  = lens _mcudUploadType
      (\ s a -> s{_mcudUploadType = a})

-- | The ID of the user.
mcudUserId :: Lens' ManagedConfigurationsforUserDelete Text
mcudUserId
  = lens _mcudUserId (\ s a -> s{_mcudUserId = a})

-- | The ID of the managed configuration (a product ID), e.g.
-- \"app:com.google.android.gm\".
mcudManagedConfigurationForUserId :: Lens' ManagedConfigurationsforUserDelete Text
mcudManagedConfigurationForUserId
  = lens _mcudManagedConfigurationForUserId
      (\ s a -> s{_mcudManagedConfigurationForUserId = a})

-- | JSONP
mcudCallback :: Lens' ManagedConfigurationsforUserDelete (Maybe Text)
mcudCallback
  = lens _mcudCallback (\ s a -> s{_mcudCallback = a})

instance GoogleRequest
           ManagedConfigurationsforUserDelete
         where
        type Rs ManagedConfigurationsforUserDelete = ()
        type Scopes ManagedConfigurationsforUserDelete =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ManagedConfigurationsforUserDelete'{..}
          = go _mcudEnterpriseId _mcudUserId
              _mcudManagedConfigurationForUserId
              _mcudXgafv
              _mcudUploadProtocol
              _mcudAccessToken
              _mcudUploadType
              _mcudCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationsforUserDeleteResource)
                      mempty
