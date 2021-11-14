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
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissions.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of account permissions.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accountPermissions.list@.
module Network.Google.Resource.DFAReporting.AccountPermissions.List
    (
    -- * REST Resource
      AccountPermissionsListResource

    -- * Creating a Request
    , accountPermissionsList
    , AccountPermissionsList

    -- * Request Lenses
    , aplXgafv
    , aplUploadProtocol
    , aplAccessToken
    , aplUploadType
    , aplProFileId
    , aplCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.accountPermissions.list@ method which the
-- 'AccountPermissionsList' request conforms to.
type AccountPermissionsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountPermissions" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccountPermissionsListResponse

-- | Retrieves the list of account permissions.
--
-- /See:/ 'accountPermissionsList' smart constructor.
data AccountPermissionsList =
  AccountPermissionsList'
    { _aplXgafv :: !(Maybe Xgafv)
    , _aplUploadProtocol :: !(Maybe Text)
    , _aplAccessToken :: !(Maybe Text)
    , _aplUploadType :: !(Maybe Text)
    , _aplProFileId :: !(Textual Int64)
    , _aplCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountPermissionsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplXgafv'
--
-- * 'aplUploadProtocol'
--
-- * 'aplAccessToken'
--
-- * 'aplUploadType'
--
-- * 'aplProFileId'
--
-- * 'aplCallback'
accountPermissionsList
    :: Int64 -- ^ 'aplProFileId'
    -> AccountPermissionsList
accountPermissionsList pAplProFileId_ =
  AccountPermissionsList'
    { _aplXgafv = Nothing
    , _aplUploadProtocol = Nothing
    , _aplAccessToken = Nothing
    , _aplUploadType = Nothing
    , _aplProFileId = _Coerce # pAplProFileId_
    , _aplCallback = Nothing
    }


-- | V1 error format.
aplXgafv :: Lens' AccountPermissionsList (Maybe Xgafv)
aplXgafv = lens _aplXgafv (\ s a -> s{_aplXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aplUploadProtocol :: Lens' AccountPermissionsList (Maybe Text)
aplUploadProtocol
  = lens _aplUploadProtocol
      (\ s a -> s{_aplUploadProtocol = a})

-- | OAuth access token.
aplAccessToken :: Lens' AccountPermissionsList (Maybe Text)
aplAccessToken
  = lens _aplAccessToken
      (\ s a -> s{_aplAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aplUploadType :: Lens' AccountPermissionsList (Maybe Text)
aplUploadType
  = lens _aplUploadType
      (\ s a -> s{_aplUploadType = a})

-- | User profile ID associated with this request.
aplProFileId :: Lens' AccountPermissionsList Int64
aplProFileId
  = lens _aplProFileId (\ s a -> s{_aplProFileId = a})
      . _Coerce

-- | JSONP
aplCallback :: Lens' AccountPermissionsList (Maybe Text)
aplCallback
  = lens _aplCallback (\ s a -> s{_aplCallback = a})

instance GoogleRequest AccountPermissionsList where
        type Rs AccountPermissionsList =
             AccountPermissionsListResponse
        type Scopes AccountPermissionsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountPermissionsList'{..}
          = go _aplProFileId _aplXgafv _aplUploadProtocol
              _aplAccessToken
              _aplUploadType
              _aplCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountPermissionsListResource)
                      mempty
