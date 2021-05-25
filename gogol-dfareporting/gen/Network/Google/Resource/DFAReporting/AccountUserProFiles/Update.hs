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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing account user profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accountUserProfiles.update@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.Update
    (
    -- * REST Resource
      AccountUserProFilesUpdateResource

    -- * Creating a Request
    , accountUserProFilesUpdate
    , AccountUserProFilesUpdate

    -- * Request Lenses
    , aupfuXgafv
    , aupfuUploadProtocol
    , aupfuAccessToken
    , aupfuUploadType
    , aupfuProFileId
    , aupfuPayload
    , aupfuCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.accountUserProfiles.update@ method which the
-- 'AccountUserProFilesUpdate' request conforms to.
type AccountUserProFilesUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountUserProfiles" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AccountUserProFile :>
                             Put '[JSON] AccountUserProFile

-- | Updates an existing account user profile.
--
-- /See:/ 'accountUserProFilesUpdate' smart constructor.
data AccountUserProFilesUpdate =
  AccountUserProFilesUpdate'
    { _aupfuXgafv :: !(Maybe Xgafv)
    , _aupfuUploadProtocol :: !(Maybe Text)
    , _aupfuAccessToken :: !(Maybe Text)
    , _aupfuUploadType :: !(Maybe Text)
    , _aupfuProFileId :: !(Textual Int64)
    , _aupfuPayload :: !AccountUserProFile
    , _aupfuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountUserProFilesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupfuXgafv'
--
-- * 'aupfuUploadProtocol'
--
-- * 'aupfuAccessToken'
--
-- * 'aupfuUploadType'
--
-- * 'aupfuProFileId'
--
-- * 'aupfuPayload'
--
-- * 'aupfuCallback'
accountUserProFilesUpdate
    :: Int64 -- ^ 'aupfuProFileId'
    -> AccountUserProFile -- ^ 'aupfuPayload'
    -> AccountUserProFilesUpdate
accountUserProFilesUpdate pAupfuProFileId_ pAupfuPayload_ =
  AccountUserProFilesUpdate'
    { _aupfuXgafv = Nothing
    , _aupfuUploadProtocol = Nothing
    , _aupfuAccessToken = Nothing
    , _aupfuUploadType = Nothing
    , _aupfuProFileId = _Coerce # pAupfuProFileId_
    , _aupfuPayload = pAupfuPayload_
    , _aupfuCallback = Nothing
    }


-- | V1 error format.
aupfuXgafv :: Lens' AccountUserProFilesUpdate (Maybe Xgafv)
aupfuXgafv
  = lens _aupfuXgafv (\ s a -> s{_aupfuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aupfuUploadProtocol :: Lens' AccountUserProFilesUpdate (Maybe Text)
aupfuUploadProtocol
  = lens _aupfuUploadProtocol
      (\ s a -> s{_aupfuUploadProtocol = a})

-- | OAuth access token.
aupfuAccessToken :: Lens' AccountUserProFilesUpdate (Maybe Text)
aupfuAccessToken
  = lens _aupfuAccessToken
      (\ s a -> s{_aupfuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aupfuUploadType :: Lens' AccountUserProFilesUpdate (Maybe Text)
aupfuUploadType
  = lens _aupfuUploadType
      (\ s a -> s{_aupfuUploadType = a})

-- | User profile ID associated with this request.
aupfuProFileId :: Lens' AccountUserProFilesUpdate Int64
aupfuProFileId
  = lens _aupfuProFileId
      (\ s a -> s{_aupfuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
aupfuPayload :: Lens' AccountUserProFilesUpdate AccountUserProFile
aupfuPayload
  = lens _aupfuPayload (\ s a -> s{_aupfuPayload = a})

-- | JSONP
aupfuCallback :: Lens' AccountUserProFilesUpdate (Maybe Text)
aupfuCallback
  = lens _aupfuCallback
      (\ s a -> s{_aupfuCallback = a})

instance GoogleRequest AccountUserProFilesUpdate
         where
        type Rs AccountUserProFilesUpdate =
             AccountUserProFile
        type Scopes AccountUserProFilesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountUserProFilesUpdate'{..}
          = go _aupfuProFileId _aupfuXgafv _aupfuUploadProtocol
              _aupfuAccessToken
              _aupfuUploadType
              _aupfuCallback
              (Just AltJSON)
              _aupfuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountUserProFilesUpdateResource)
                      mempty
