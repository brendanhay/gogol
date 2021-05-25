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
-- Module      : Network.Google.Resource.DFAReporting.AccountUserProFiles.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing account user profile. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accountUserProfiles.patch@.
module Network.Google.Resource.DFAReporting.AccountUserProFiles.Patch
    (
    -- * REST Resource
      AccountUserProFilesPatchResource

    -- * Creating a Request
    , accountUserProFilesPatch
    , AccountUserProFilesPatch

    -- * Request Lenses
    , aupfpXgafv
    , aupfpUploadProtocol
    , aupfpAccessToken
    , aupfpUploadType
    , aupfpProFileId
    , aupfpPayload
    , aupfpId
    , aupfpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.accountUserProfiles.patch@ method which the
-- 'AccountUserProFilesPatch' request conforms to.
type AccountUserProFilesPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountUserProfiles" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AccountUserProFile :>
                               Patch '[JSON] AccountUserProFile

-- | Updates an existing account user profile. This method supports patch
-- semantics.
--
-- /See:/ 'accountUserProFilesPatch' smart constructor.
data AccountUserProFilesPatch =
  AccountUserProFilesPatch'
    { _aupfpXgafv :: !(Maybe Xgafv)
    , _aupfpUploadProtocol :: !(Maybe Text)
    , _aupfpAccessToken :: !(Maybe Text)
    , _aupfpUploadType :: !(Maybe Text)
    , _aupfpProFileId :: !(Textual Int64)
    , _aupfpPayload :: !AccountUserProFile
    , _aupfpId :: !(Textual Int64)
    , _aupfpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountUserProFilesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aupfpXgafv'
--
-- * 'aupfpUploadProtocol'
--
-- * 'aupfpAccessToken'
--
-- * 'aupfpUploadType'
--
-- * 'aupfpProFileId'
--
-- * 'aupfpPayload'
--
-- * 'aupfpId'
--
-- * 'aupfpCallback'
accountUserProFilesPatch
    :: Int64 -- ^ 'aupfpProFileId'
    -> AccountUserProFile -- ^ 'aupfpPayload'
    -> Int64 -- ^ 'aupfpId'
    -> AccountUserProFilesPatch
accountUserProFilesPatch pAupfpProFileId_ pAupfpPayload_ pAupfpId_ =
  AccountUserProFilesPatch'
    { _aupfpXgafv = Nothing
    , _aupfpUploadProtocol = Nothing
    , _aupfpAccessToken = Nothing
    , _aupfpUploadType = Nothing
    , _aupfpProFileId = _Coerce # pAupfpProFileId_
    , _aupfpPayload = pAupfpPayload_
    , _aupfpId = _Coerce # pAupfpId_
    , _aupfpCallback = Nothing
    }


-- | V1 error format.
aupfpXgafv :: Lens' AccountUserProFilesPatch (Maybe Xgafv)
aupfpXgafv
  = lens _aupfpXgafv (\ s a -> s{_aupfpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aupfpUploadProtocol :: Lens' AccountUserProFilesPatch (Maybe Text)
aupfpUploadProtocol
  = lens _aupfpUploadProtocol
      (\ s a -> s{_aupfpUploadProtocol = a})

-- | OAuth access token.
aupfpAccessToken :: Lens' AccountUserProFilesPatch (Maybe Text)
aupfpAccessToken
  = lens _aupfpAccessToken
      (\ s a -> s{_aupfpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aupfpUploadType :: Lens' AccountUserProFilesPatch (Maybe Text)
aupfpUploadType
  = lens _aupfpUploadType
      (\ s a -> s{_aupfpUploadType = a})

-- | User profile ID associated with this request.
aupfpProFileId :: Lens' AccountUserProFilesPatch Int64
aupfpProFileId
  = lens _aupfpProFileId
      (\ s a -> s{_aupfpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
aupfpPayload :: Lens' AccountUserProFilesPatch AccountUserProFile
aupfpPayload
  = lens _aupfpPayload (\ s a -> s{_aupfpPayload = a})

-- | AccountUserProfile ID.
aupfpId :: Lens' AccountUserProFilesPatch Int64
aupfpId
  = lens _aupfpId (\ s a -> s{_aupfpId = a}) . _Coerce

-- | JSONP
aupfpCallback :: Lens' AccountUserProFilesPatch (Maybe Text)
aupfpCallback
  = lens _aupfpCallback
      (\ s a -> s{_aupfpCallback = a})

instance GoogleRequest AccountUserProFilesPatch where
        type Rs AccountUserProFilesPatch = AccountUserProFile
        type Scopes AccountUserProFilesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountUserProFilesPatch'{..}
          = go _aupfpProFileId (Just _aupfpId) _aupfpXgafv
              _aupfpUploadProtocol
              _aupfpAccessToken
              _aupfpUploadType
              _aupfpCallback
              (Just AltJSON)
              _aupfpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountUserProFilesPatchResource)
                      mempty
