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
-- Module      : Network.Google.Resource.DFAReporting.AccountPermissions.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one account permission by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accountPermissions.get@.
module Network.Google.Resource.DFAReporting.AccountPermissions.Get
    (
    -- * REST Resource
      AccountPermissionsGetResource

    -- * Creating a Request
    , accountPermissionsGet
    , AccountPermissionsGet

    -- * Request Lenses
    , apgXgafv
    , apgUploadProtocol
    , apgAccessToken
    , apgUploadType
    , apgProFileId
    , apgId
    , apgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.accountPermissions.get@ method which the
-- 'AccountPermissionsGet' request conforms to.
type AccountPermissionsGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountPermissions" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] AccountPermission

-- | Gets one account permission by ID.
--
-- /See:/ 'accountPermissionsGet' smart constructor.
data AccountPermissionsGet =
  AccountPermissionsGet'
    { _apgXgafv :: !(Maybe Xgafv)
    , _apgUploadProtocol :: !(Maybe Text)
    , _apgAccessToken :: !(Maybe Text)
    , _apgUploadType :: !(Maybe Text)
    , _apgProFileId :: !(Textual Int64)
    , _apgId :: !(Textual Int64)
    , _apgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountPermissionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apgXgafv'
--
-- * 'apgUploadProtocol'
--
-- * 'apgAccessToken'
--
-- * 'apgUploadType'
--
-- * 'apgProFileId'
--
-- * 'apgId'
--
-- * 'apgCallback'
accountPermissionsGet
    :: Int64 -- ^ 'apgProFileId'
    -> Int64 -- ^ 'apgId'
    -> AccountPermissionsGet
accountPermissionsGet pApgProFileId_ pApgId_ =
  AccountPermissionsGet'
    { _apgXgafv = Nothing
    , _apgUploadProtocol = Nothing
    , _apgAccessToken = Nothing
    , _apgUploadType = Nothing
    , _apgProFileId = _Coerce # pApgProFileId_
    , _apgId = _Coerce # pApgId_
    , _apgCallback = Nothing
    }


-- | V1 error format.
apgXgafv :: Lens' AccountPermissionsGet (Maybe Xgafv)
apgXgafv = lens _apgXgafv (\ s a -> s{_apgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apgUploadProtocol :: Lens' AccountPermissionsGet (Maybe Text)
apgUploadProtocol
  = lens _apgUploadProtocol
      (\ s a -> s{_apgUploadProtocol = a})

-- | OAuth access token.
apgAccessToken :: Lens' AccountPermissionsGet (Maybe Text)
apgAccessToken
  = lens _apgAccessToken
      (\ s a -> s{_apgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apgUploadType :: Lens' AccountPermissionsGet (Maybe Text)
apgUploadType
  = lens _apgUploadType
      (\ s a -> s{_apgUploadType = a})

-- | User profile ID associated with this request.
apgProFileId :: Lens' AccountPermissionsGet Int64
apgProFileId
  = lens _apgProFileId (\ s a -> s{_apgProFileId = a})
      . _Coerce

-- | Account permission ID.
apgId :: Lens' AccountPermissionsGet Int64
apgId
  = lens _apgId (\ s a -> s{_apgId = a}) . _Coerce

-- | JSONP
apgCallback :: Lens' AccountPermissionsGet (Maybe Text)
apgCallback
  = lens _apgCallback (\ s a -> s{_apgCallback = a})

instance GoogleRequest AccountPermissionsGet where
        type Rs AccountPermissionsGet = AccountPermission
        type Scopes AccountPermissionsGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountPermissionsGet'{..}
          = go _apgProFileId _apgId _apgXgafv
              _apgUploadProtocol
              _apgAccessToken
              _apgUploadType
              _apgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountPermissionsGetResource)
                      mempty
