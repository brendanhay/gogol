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
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissionGroups.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one account permission group by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accountPermissionGroups.get@.
module Network.Google.Resource.DFAReporting.AccountPermissionGroups.Get
    (
    -- * REST Resource
      AccountPermissionGroupsGetResource

    -- * Creating a Request
    , accountPermissionGroupsGet
    , AccountPermissionGroupsGet

    -- * Request Lenses
    , apggXgafv
    , apggUploadProtocol
    , apggAccessToken
    , apggUploadType
    , apggProFileId
    , apggId
    , apggCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.accountPermissionGroups.get@ method which the
-- 'AccountPermissionGroupsGet' request conforms to.
type AccountPermissionGroupsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountPermissionGroups" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] AccountPermissionGroup

-- | Gets one account permission group by ID.
--
-- /See:/ 'accountPermissionGroupsGet' smart constructor.
data AccountPermissionGroupsGet =
  AccountPermissionGroupsGet'
    { _apggXgafv :: !(Maybe Xgafv)
    , _apggUploadProtocol :: !(Maybe Text)
    , _apggAccessToken :: !(Maybe Text)
    , _apggUploadType :: !(Maybe Text)
    , _apggProFileId :: !(Textual Int64)
    , _apggId :: !(Textual Int64)
    , _apggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountPermissionGroupsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apggXgafv'
--
-- * 'apggUploadProtocol'
--
-- * 'apggAccessToken'
--
-- * 'apggUploadType'
--
-- * 'apggProFileId'
--
-- * 'apggId'
--
-- * 'apggCallback'
accountPermissionGroupsGet
    :: Int64 -- ^ 'apggProFileId'
    -> Int64 -- ^ 'apggId'
    -> AccountPermissionGroupsGet
accountPermissionGroupsGet pApggProFileId_ pApggId_ =
  AccountPermissionGroupsGet'
    { _apggXgafv = Nothing
    , _apggUploadProtocol = Nothing
    , _apggAccessToken = Nothing
    , _apggUploadType = Nothing
    , _apggProFileId = _Coerce # pApggProFileId_
    , _apggId = _Coerce # pApggId_
    , _apggCallback = Nothing
    }


-- | V1 error format.
apggXgafv :: Lens' AccountPermissionGroupsGet (Maybe Xgafv)
apggXgafv
  = lens _apggXgafv (\ s a -> s{_apggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apggUploadProtocol :: Lens' AccountPermissionGroupsGet (Maybe Text)
apggUploadProtocol
  = lens _apggUploadProtocol
      (\ s a -> s{_apggUploadProtocol = a})

-- | OAuth access token.
apggAccessToken :: Lens' AccountPermissionGroupsGet (Maybe Text)
apggAccessToken
  = lens _apggAccessToken
      (\ s a -> s{_apggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apggUploadType :: Lens' AccountPermissionGroupsGet (Maybe Text)
apggUploadType
  = lens _apggUploadType
      (\ s a -> s{_apggUploadType = a})

-- | User profile ID associated with this request.
apggProFileId :: Lens' AccountPermissionGroupsGet Int64
apggProFileId
  = lens _apggProFileId
      (\ s a -> s{_apggProFileId = a})
      . _Coerce

-- | Account permission group ID.
apggId :: Lens' AccountPermissionGroupsGet Int64
apggId
  = lens _apggId (\ s a -> s{_apggId = a}) . _Coerce

-- | JSONP
apggCallback :: Lens' AccountPermissionGroupsGet (Maybe Text)
apggCallback
  = lens _apggCallback (\ s a -> s{_apggCallback = a})

instance GoogleRequest AccountPermissionGroupsGet
         where
        type Rs AccountPermissionGroupsGet =
             AccountPermissionGroup
        type Scopes AccountPermissionGroupsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountPermissionGroupsGet'{..}
          = go _apggProFileId _apggId _apggXgafv
              _apggUploadProtocol
              _apggAccessToken
              _apggUploadType
              _apggCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountPermissionGroupsGetResource)
                      mempty
