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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new account user profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accountUserProfiles.insert@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.Insert
    (
    -- * REST Resource
      AccountUserProFilesInsertResource

    -- * Creating a Request
    , accountUserProFilesInsert
    , AccountUserProFilesInsert

    -- * Request Lenses
    , aupfiXgafv
    , aupfiUploadProtocol
    , aupfiAccessToken
    , aupfiUploadType
    , aupfiProFileId
    , aupfiPayload
    , aupfiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.accountUserProfiles.insert@ method which the
-- 'AccountUserProFilesInsert' request conforms to.
type AccountUserProFilesInsertResource =
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
                             Post '[JSON] AccountUserProFile

-- | Inserts a new account user profile.
--
-- /See:/ 'accountUserProFilesInsert' smart constructor.
data AccountUserProFilesInsert =
  AccountUserProFilesInsert'
    { _aupfiXgafv :: !(Maybe Xgafv)
    , _aupfiUploadProtocol :: !(Maybe Text)
    , _aupfiAccessToken :: !(Maybe Text)
    , _aupfiUploadType :: !(Maybe Text)
    , _aupfiProFileId :: !(Textual Int64)
    , _aupfiPayload :: !AccountUserProFile
    , _aupfiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountUserProFilesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupfiXgafv'
--
-- * 'aupfiUploadProtocol'
--
-- * 'aupfiAccessToken'
--
-- * 'aupfiUploadType'
--
-- * 'aupfiProFileId'
--
-- * 'aupfiPayload'
--
-- * 'aupfiCallback'
accountUserProFilesInsert
    :: Int64 -- ^ 'aupfiProFileId'
    -> AccountUserProFile -- ^ 'aupfiPayload'
    -> AccountUserProFilesInsert
accountUserProFilesInsert pAupfiProFileId_ pAupfiPayload_ =
  AccountUserProFilesInsert'
    { _aupfiXgafv = Nothing
    , _aupfiUploadProtocol = Nothing
    , _aupfiAccessToken = Nothing
    , _aupfiUploadType = Nothing
    , _aupfiProFileId = _Coerce # pAupfiProFileId_
    , _aupfiPayload = pAupfiPayload_
    , _aupfiCallback = Nothing
    }


-- | V1 error format.
aupfiXgafv :: Lens' AccountUserProFilesInsert (Maybe Xgafv)
aupfiXgafv
  = lens _aupfiXgafv (\ s a -> s{_aupfiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aupfiUploadProtocol :: Lens' AccountUserProFilesInsert (Maybe Text)
aupfiUploadProtocol
  = lens _aupfiUploadProtocol
      (\ s a -> s{_aupfiUploadProtocol = a})

-- | OAuth access token.
aupfiAccessToken :: Lens' AccountUserProFilesInsert (Maybe Text)
aupfiAccessToken
  = lens _aupfiAccessToken
      (\ s a -> s{_aupfiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aupfiUploadType :: Lens' AccountUserProFilesInsert (Maybe Text)
aupfiUploadType
  = lens _aupfiUploadType
      (\ s a -> s{_aupfiUploadType = a})

-- | User profile ID associated with this request.
aupfiProFileId :: Lens' AccountUserProFilesInsert Int64
aupfiProFileId
  = lens _aupfiProFileId
      (\ s a -> s{_aupfiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
aupfiPayload :: Lens' AccountUserProFilesInsert AccountUserProFile
aupfiPayload
  = lens _aupfiPayload (\ s a -> s{_aupfiPayload = a})

-- | JSONP
aupfiCallback :: Lens' AccountUserProFilesInsert (Maybe Text)
aupfiCallback
  = lens _aupfiCallback
      (\ s a -> s{_aupfiCallback = a})

instance GoogleRequest AccountUserProFilesInsert
         where
        type Rs AccountUserProFilesInsert =
             AccountUserProFile
        type Scopes AccountUserProFilesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountUserProFilesInsert'{..}
          = go _aupfiProFileId _aupfiXgafv _aupfiUploadProtocol
              _aupfiAccessToken
              _aupfiUploadType
              _aupfiCallback
              (Just AltJSON)
              _aupfiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountUserProFilesInsertResource)
                      mempty
