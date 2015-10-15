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
-- Module      : Network.Google.Resource.StorageTransfer.GetGoogleServiceAccount
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the Google service account that is used by Storage Transfer
-- Service to access buckets in the project where transfers run or in other
-- projects. Each Google service account is associated with one Google
-- Developers Console project. Users should add this service account to the
-- Google Cloud Storage bucket ACLs to grant access to Storage Transfer
-- Service. This service account is created and owned by Storage Transfer
-- Service and can only be used by Storage Transfer Service.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StorageTransferGetGoogleServiceAccount@.
module Network.Google.Resource.StorageTransfer.GetGoogleServiceAccount
    (
    -- * REST Resource
      GetGoogleServiceAccountResource

    -- * Creating a Request
    , getGoogleServiceAccount'
    , GetGoogleServiceAccount'

    -- * Request Lenses
    , ggsaXgafv
    , ggsaUploadProtocol
    , ggsaPp
    , ggsaAccessToken
    , ggsaUploadType
    , ggsaBearerToken
    , ggsaProjectId
    , ggsaCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StorageTransferGetGoogleServiceAccount@ method which the
-- 'GetGoogleServiceAccount'' request conforms to.
type GetGoogleServiceAccountResource =
     "v1:getGoogleServiceAccount" :>
       QueryParam "$.xgafv" Text :>
         QueryParam "upload_protocol" Text :>
           QueryParam "pp" Bool :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "bearer_token" Text :>
                   QueryParam "projectId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] GoogleServiceAccount

-- | Returns the Google service account that is used by Storage Transfer
-- Service to access buckets in the project where transfers run or in other
-- projects. Each Google service account is associated with one Google
-- Developers Console project. Users should add this service account to the
-- Google Cloud Storage bucket ACLs to grant access to Storage Transfer
-- Service. This service account is created and owned by Storage Transfer
-- Service and can only be used by Storage Transfer Service.
--
-- /See:/ 'getGoogleServiceAccount'' smart constructor.
data GetGoogleServiceAccount' = GetGoogleServiceAccount'
    { _ggsaXgafv          :: !(Maybe Text)
    , _ggsaUploadProtocol :: !(Maybe Text)
    , _ggsaPp             :: !Bool
    , _ggsaAccessToken    :: !(Maybe Text)
    , _ggsaUploadType     :: !(Maybe Text)
    , _ggsaBearerToken    :: !(Maybe Text)
    , _ggsaProjectId      :: !(Maybe Text)
    , _ggsaCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetGoogleServiceAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggsaXgafv'
--
-- * 'ggsaUploadProtocol'
--
-- * 'ggsaPp'
--
-- * 'ggsaAccessToken'
--
-- * 'ggsaUploadType'
--
-- * 'ggsaBearerToken'
--
-- * 'ggsaProjectId'
--
-- * 'ggsaCallback'
getGoogleServiceAccount'
    :: GetGoogleServiceAccount'
getGoogleServiceAccount' =
    GetGoogleServiceAccount'
    { _ggsaXgafv = Nothing
    , _ggsaUploadProtocol = Nothing
    , _ggsaPp = True
    , _ggsaAccessToken = Nothing
    , _ggsaUploadType = Nothing
    , _ggsaBearerToken = Nothing
    , _ggsaProjectId = Nothing
    , _ggsaCallback = Nothing
    }

-- | V1 error format.
ggsaXgafv :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaXgafv
  = lens _ggsaXgafv (\ s a -> s{_ggsaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ggsaUploadProtocol :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaUploadProtocol
  = lens _ggsaUploadProtocol
      (\ s a -> s{_ggsaUploadProtocol = a})

-- | Pretty-print response.
ggsaPp :: Lens' GetGoogleServiceAccount' Bool
ggsaPp = lens _ggsaPp (\ s a -> s{_ggsaPp = a})

-- | OAuth access token.
ggsaAccessToken :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaAccessToken
  = lens _ggsaAccessToken
      (\ s a -> s{_ggsaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ggsaUploadType :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaUploadType
  = lens _ggsaUploadType
      (\ s a -> s{_ggsaUploadType = a})

-- | OAuth bearer token.
ggsaBearerToken :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaBearerToken
  = lens _ggsaBearerToken
      (\ s a -> s{_ggsaBearerToken = a})

-- | The ID of the Google Developers Console project that the Google service
-- account is associated with. Required.
ggsaProjectId :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaProjectId
  = lens _ggsaProjectId
      (\ s a -> s{_ggsaProjectId = a})

-- | JSONP
ggsaCallback :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaCallback
  = lens _ggsaCallback (\ s a -> s{_ggsaCallback = a})

instance GoogleRequest GetGoogleServiceAccount' where
        type Rs GetGoogleServiceAccount' =
             GoogleServiceAccount
        requestClient GetGoogleServiceAccount'{..}
          = go _ggsaXgafv _ggsaUploadProtocol (Just _ggsaPp)
              _ggsaAccessToken
              _ggsaUploadType
              _ggsaBearerToken
              _ggsaProjectId
              _ggsaCallback
              (Just AltJSON)
              storageTransfer
          where go
                  = buildClient
                      (Proxy :: Proxy GetGoogleServiceAccountResource)
                      mempty
