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
-- Module      : Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the per-user managed configurations for the specified user.
-- Only the ID is set.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.managedconfigurationsforuser.list@.
module Network.Google.Resource.AndroidEnterprise.ManagedConfigurationsforUser.List
    (
    -- * REST Resource
      ManagedConfigurationsforUserListResource

    -- * Creating a Request
    , managedConfigurationsforUserList
    , ManagedConfigurationsforUserList

    -- * Request Lenses
    , mculXgafv
    , mculUploadProtocol
    , mculEnterpriseId
    , mculAccessToken
    , mculUploadType
    , mculUserId
    , mculCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.managedconfigurationsforuser.list@ method which the
-- 'ManagedConfigurationsforUserList' request conforms to.
type ManagedConfigurationsforUserListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "managedConfigurationsForUser" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 ManagedConfigurationsForUserListResponse

-- | Lists all the per-user managed configurations for the specified user.
-- Only the ID is set.
--
-- /See:/ 'managedConfigurationsforUserList' smart constructor.
data ManagedConfigurationsforUserList =
  ManagedConfigurationsforUserList'
    { _mculXgafv :: !(Maybe Xgafv)
    , _mculUploadProtocol :: !(Maybe Text)
    , _mculEnterpriseId :: !Text
    , _mculAccessToken :: !(Maybe Text)
    , _mculUploadType :: !(Maybe Text)
    , _mculUserId :: !Text
    , _mculCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagedConfigurationsforUserList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mculXgafv'
--
-- * 'mculUploadProtocol'
--
-- * 'mculEnterpriseId'
--
-- * 'mculAccessToken'
--
-- * 'mculUploadType'
--
-- * 'mculUserId'
--
-- * 'mculCallback'
managedConfigurationsforUserList
    :: Text -- ^ 'mculEnterpriseId'
    -> Text -- ^ 'mculUserId'
    -> ManagedConfigurationsforUserList
managedConfigurationsforUserList pMculEnterpriseId_ pMculUserId_ =
  ManagedConfigurationsforUserList'
    { _mculXgafv = Nothing
    , _mculUploadProtocol = Nothing
    , _mculEnterpriseId = pMculEnterpriseId_
    , _mculAccessToken = Nothing
    , _mculUploadType = Nothing
    , _mculUserId = pMculUserId_
    , _mculCallback = Nothing
    }


-- | V1 error format.
mculXgafv :: Lens' ManagedConfigurationsforUserList (Maybe Xgafv)
mculXgafv
  = lens _mculXgafv (\ s a -> s{_mculXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mculUploadProtocol :: Lens' ManagedConfigurationsforUserList (Maybe Text)
mculUploadProtocol
  = lens _mculUploadProtocol
      (\ s a -> s{_mculUploadProtocol = a})

-- | The ID of the enterprise.
mculEnterpriseId :: Lens' ManagedConfigurationsforUserList Text
mculEnterpriseId
  = lens _mculEnterpriseId
      (\ s a -> s{_mculEnterpriseId = a})

-- | OAuth access token.
mculAccessToken :: Lens' ManagedConfigurationsforUserList (Maybe Text)
mculAccessToken
  = lens _mculAccessToken
      (\ s a -> s{_mculAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mculUploadType :: Lens' ManagedConfigurationsforUserList (Maybe Text)
mculUploadType
  = lens _mculUploadType
      (\ s a -> s{_mculUploadType = a})

-- | The ID of the user.
mculUserId :: Lens' ManagedConfigurationsforUserList Text
mculUserId
  = lens _mculUserId (\ s a -> s{_mculUserId = a})

-- | JSONP
mculCallback :: Lens' ManagedConfigurationsforUserList (Maybe Text)
mculCallback
  = lens _mculCallback (\ s a -> s{_mculCallback = a})

instance GoogleRequest
           ManagedConfigurationsforUserList
         where
        type Rs ManagedConfigurationsforUserList =
             ManagedConfigurationsForUserListResponse
        type Scopes ManagedConfigurationsforUserList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient ManagedConfigurationsforUserList'{..}
          = go _mculEnterpriseId _mculUserId _mculXgafv
              _mculUploadProtocol
              _mculAccessToken
              _mculUploadType
              _mculCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagedConfigurationsforUserListResource)
                      mempty
