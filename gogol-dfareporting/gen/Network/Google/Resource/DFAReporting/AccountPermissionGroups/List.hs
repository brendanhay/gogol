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
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissionGroups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the list of account permission groups.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accountPermissionGroups.list@.
module Network.Google.Resource.DFAReporting.AccountPermissionGroups.List
    (
    -- * REST Resource
      AccountPermissionGroupsListResource

    -- * Creating a Request
    , accountPermissionGroupsList
    , AccountPermissionGroupsList

    -- * Request Lenses
    , apglXgafv
    , apglUploadProtocol
    , apglAccessToken
    , apglUploadType
    , apglProFileId
    , apglCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.accountPermissionGroups.list@ method which the
-- 'AccountPermissionGroupsList' request conforms to.
type AccountPermissionGroupsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountPermissionGroups" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] AccountPermissionGroupsListResponse

-- | Retrieves the list of account permission groups.
--
-- /See:/ 'accountPermissionGroupsList' smart constructor.
data AccountPermissionGroupsList =
  AccountPermissionGroupsList'
    { _apglXgafv :: !(Maybe Xgafv)
    , _apglUploadProtocol :: !(Maybe Text)
    , _apglAccessToken :: !(Maybe Text)
    , _apglUploadType :: !(Maybe Text)
    , _apglProFileId :: !(Textual Int64)
    , _apglCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountPermissionGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apglXgafv'
--
-- * 'apglUploadProtocol'
--
-- * 'apglAccessToken'
--
-- * 'apglUploadType'
--
-- * 'apglProFileId'
--
-- * 'apglCallback'
accountPermissionGroupsList
    :: Int64 -- ^ 'apglProFileId'
    -> AccountPermissionGroupsList
accountPermissionGroupsList pApglProFileId_ =
  AccountPermissionGroupsList'
    { _apglXgafv = Nothing
    , _apglUploadProtocol = Nothing
    , _apglAccessToken = Nothing
    , _apglUploadType = Nothing
    , _apglProFileId = _Coerce # pApglProFileId_
    , _apglCallback = Nothing
    }


-- | V1 error format.
apglXgafv :: Lens' AccountPermissionGroupsList (Maybe Xgafv)
apglXgafv
  = lens _apglXgafv (\ s a -> s{_apglXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apglUploadProtocol :: Lens' AccountPermissionGroupsList (Maybe Text)
apglUploadProtocol
  = lens _apglUploadProtocol
      (\ s a -> s{_apglUploadProtocol = a})

-- | OAuth access token.
apglAccessToken :: Lens' AccountPermissionGroupsList (Maybe Text)
apglAccessToken
  = lens _apglAccessToken
      (\ s a -> s{_apglAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apglUploadType :: Lens' AccountPermissionGroupsList (Maybe Text)
apglUploadType
  = lens _apglUploadType
      (\ s a -> s{_apglUploadType = a})

-- | User profile ID associated with this request.
apglProFileId :: Lens' AccountPermissionGroupsList Int64
apglProFileId
  = lens _apglProFileId
      (\ s a -> s{_apglProFileId = a})
      . _Coerce

-- | JSONP
apglCallback :: Lens' AccountPermissionGroupsList (Maybe Text)
apglCallback
  = lens _apglCallback (\ s a -> s{_apglCallback = a})

instance GoogleRequest AccountPermissionGroupsList
         where
        type Rs AccountPermissionGroupsList =
             AccountPermissionGroupsListResponse
        type Scopes AccountPermissionGroupsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountPermissionGroupsList'{..}
          = go _apglProFileId _apglXgafv _apglUploadProtocol
              _apglAccessToken
              _apglUploadType
              _apglCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountPermissionGroupsListResource)
                      mempty
