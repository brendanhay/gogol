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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one account user profile by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accountUserProfiles.get@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.Get
    (
    -- * REST Resource
      AccountUserProFilesGetResource

    -- * Creating a Request
    , accountUserProFilesGet
    , AccountUserProFilesGet

    -- * Request Lenses
    , aupfgXgafv
    , aupfgUploadProtocol
    , aupfgAccessToken
    , aupfgUploadType
    , aupfgProFileId
    , aupfgId
    , aupfgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.accountUserProfiles.get@ method which the
-- 'AccountUserProFilesGet' request conforms to.
type AccountUserProFilesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountUserProfiles" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] AccountUserProFile

-- | Gets one account user profile by ID.
--
-- /See:/ 'accountUserProFilesGet' smart constructor.
data AccountUserProFilesGet =
  AccountUserProFilesGet'
    { _aupfgXgafv :: !(Maybe Xgafv)
    , _aupfgUploadProtocol :: !(Maybe Text)
    , _aupfgAccessToken :: !(Maybe Text)
    , _aupfgUploadType :: !(Maybe Text)
    , _aupfgProFileId :: !(Textual Int64)
    , _aupfgId :: !(Textual Int64)
    , _aupfgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountUserProFilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupfgXgafv'
--
-- * 'aupfgUploadProtocol'
--
-- * 'aupfgAccessToken'
--
-- * 'aupfgUploadType'
--
-- * 'aupfgProFileId'
--
-- * 'aupfgId'
--
-- * 'aupfgCallback'
accountUserProFilesGet
    :: Int64 -- ^ 'aupfgProFileId'
    -> Int64 -- ^ 'aupfgId'
    -> AccountUserProFilesGet
accountUserProFilesGet pAupfgProFileId_ pAupfgId_ =
  AccountUserProFilesGet'
    { _aupfgXgafv = Nothing
    , _aupfgUploadProtocol = Nothing
    , _aupfgAccessToken = Nothing
    , _aupfgUploadType = Nothing
    , _aupfgProFileId = _Coerce # pAupfgProFileId_
    , _aupfgId = _Coerce # pAupfgId_
    , _aupfgCallback = Nothing
    }


-- | V1 error format.
aupfgXgafv :: Lens' AccountUserProFilesGet (Maybe Xgafv)
aupfgXgafv
  = lens _aupfgXgafv (\ s a -> s{_aupfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aupfgUploadProtocol :: Lens' AccountUserProFilesGet (Maybe Text)
aupfgUploadProtocol
  = lens _aupfgUploadProtocol
      (\ s a -> s{_aupfgUploadProtocol = a})

-- | OAuth access token.
aupfgAccessToken :: Lens' AccountUserProFilesGet (Maybe Text)
aupfgAccessToken
  = lens _aupfgAccessToken
      (\ s a -> s{_aupfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aupfgUploadType :: Lens' AccountUserProFilesGet (Maybe Text)
aupfgUploadType
  = lens _aupfgUploadType
      (\ s a -> s{_aupfgUploadType = a})

-- | User profile ID associated with this request.
aupfgProFileId :: Lens' AccountUserProFilesGet Int64
aupfgProFileId
  = lens _aupfgProFileId
      (\ s a -> s{_aupfgProFileId = a})
      . _Coerce

-- | User profile ID.
aupfgId :: Lens' AccountUserProFilesGet Int64
aupfgId
  = lens _aupfgId (\ s a -> s{_aupfgId = a}) . _Coerce

-- | JSONP
aupfgCallback :: Lens' AccountUserProFilesGet (Maybe Text)
aupfgCallback
  = lens _aupfgCallback
      (\ s a -> s{_aupfgCallback = a})

instance GoogleRequest AccountUserProFilesGet where
        type Rs AccountUserProFilesGet = AccountUserProFile
        type Scopes AccountUserProFilesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountUserProFilesGet'{..}
          = go _aupfgProFileId _aupfgId _aupfgXgafv
              _aupfgUploadProtocol
              _aupfgAccessToken
              _aupfgUploadType
              _aupfgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountUserProFilesGetResource)
                      mempty
