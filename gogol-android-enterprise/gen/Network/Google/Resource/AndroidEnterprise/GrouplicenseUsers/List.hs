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
-- Module      : Network.Google.Resource.AndroidEnterprise.GrouplicenseUsers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the IDs of the users who have been granted entitlements under
-- the license.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.grouplicenseusers.list@.
module Network.Google.Resource.AndroidEnterprise.GrouplicenseUsers.List
    (
    -- * REST Resource
      GrouplicenseUsersListResource

    -- * Creating a Request
    , grouplicenseUsersList
    , GrouplicenseUsersList

    -- * Request Lenses
    , gulXgafv
    , gulUploadProtocol
    , gulEnterpriseId
    , gulAccessToken
    , gulUploadType
    , gulGroupLicenseId
    , gulCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.grouplicenseusers.list@ method which the
-- 'GrouplicenseUsersList' request conforms to.
type GrouplicenseUsersListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "groupLicenses" :>
               Capture "groupLicenseId" Text :>
                 "users" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] GroupLicenseUsersListResponse

-- | Retrieves the IDs of the users who have been granted entitlements under
-- the license.
--
-- /See:/ 'grouplicenseUsersList' smart constructor.
data GrouplicenseUsersList =
  GrouplicenseUsersList'
    { _gulXgafv :: !(Maybe Xgafv)
    , _gulUploadProtocol :: !(Maybe Text)
    , _gulEnterpriseId :: !Text
    , _gulAccessToken :: !(Maybe Text)
    , _gulUploadType :: !(Maybe Text)
    , _gulGroupLicenseId :: !Text
    , _gulCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GrouplicenseUsersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gulXgafv'
--
-- * 'gulUploadProtocol'
--
-- * 'gulEnterpriseId'
--
-- * 'gulAccessToken'
--
-- * 'gulUploadType'
--
-- * 'gulGroupLicenseId'
--
-- * 'gulCallback'
grouplicenseUsersList
    :: Text -- ^ 'gulEnterpriseId'
    -> Text -- ^ 'gulGroupLicenseId'
    -> GrouplicenseUsersList
grouplicenseUsersList pGulEnterpriseId_ pGulGroupLicenseId_ =
  GrouplicenseUsersList'
    { _gulXgafv = Nothing
    , _gulUploadProtocol = Nothing
    , _gulEnterpriseId = pGulEnterpriseId_
    , _gulAccessToken = Nothing
    , _gulUploadType = Nothing
    , _gulGroupLicenseId = pGulGroupLicenseId_
    , _gulCallback = Nothing
    }


-- | V1 error format.
gulXgafv :: Lens' GrouplicenseUsersList (Maybe Xgafv)
gulXgafv = lens _gulXgafv (\ s a -> s{_gulXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gulUploadProtocol :: Lens' GrouplicenseUsersList (Maybe Text)
gulUploadProtocol
  = lens _gulUploadProtocol
      (\ s a -> s{_gulUploadProtocol = a})

-- | The ID of the enterprise.
gulEnterpriseId :: Lens' GrouplicenseUsersList Text
gulEnterpriseId
  = lens _gulEnterpriseId
      (\ s a -> s{_gulEnterpriseId = a})

-- | OAuth access token.
gulAccessToken :: Lens' GrouplicenseUsersList (Maybe Text)
gulAccessToken
  = lens _gulAccessToken
      (\ s a -> s{_gulAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gulUploadType :: Lens' GrouplicenseUsersList (Maybe Text)
gulUploadType
  = lens _gulUploadType
      (\ s a -> s{_gulUploadType = a})

-- | The ID of the product the group license is for, e.g.
-- \"app:com.google.android.gm\".
gulGroupLicenseId :: Lens' GrouplicenseUsersList Text
gulGroupLicenseId
  = lens _gulGroupLicenseId
      (\ s a -> s{_gulGroupLicenseId = a})

-- | JSONP
gulCallback :: Lens' GrouplicenseUsersList (Maybe Text)
gulCallback
  = lens _gulCallback (\ s a -> s{_gulCallback = a})

instance GoogleRequest GrouplicenseUsersList where
        type Rs GrouplicenseUsersList =
             GroupLicenseUsersListResponse
        type Scopes GrouplicenseUsersList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient GrouplicenseUsersList'{..}
          = go _gulEnterpriseId _gulGroupLicenseId _gulXgafv
              _gulUploadProtocol
              _gulAccessToken
              _gulUploadType
              _gulCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy GrouplicenseUsersListResource)
                      mempty
