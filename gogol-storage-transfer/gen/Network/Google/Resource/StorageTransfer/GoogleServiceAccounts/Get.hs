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
-- Module      : Network.Google.Resource.StorageTransfer.GoogleServiceAccounts.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the Google service account that is used by Storage Transfer
-- Service to access buckets in the project where transfers run or in other
-- projects. Each Google service account is associated with one Google
-- Developers Console project. Users should add this service account to the
-- Google Cloud Storage bucket ACLs to grant access to Storage Transfer
-- Service. This service account is created and owned by Storage Transfer
-- Service and can only be used by Storage Transfer Service.
--
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StorageTransferGoogleServiceAccountsGet@.
module Network.Google.Resource.StorageTransfer.GoogleServiceAccounts.Get
    (
    -- * REST Resource
      GoogleServiceAccountsGetResource

    -- * Creating a Request
    , googleServiceAccountsGet'
    , GoogleServiceAccountsGet'

    -- * Request Lenses
    , gsagXgafv
    , gsagUploadProtocol
    , gsagPp
    , gsagAccessToken
    , gsagUploadType
    , gsagBearerToken
    , gsagProjectId
    , gsagCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StorageTransferGoogleServiceAccountsGet@ method which the
-- 'GoogleServiceAccountsGet'' request conforms to.
type GoogleServiceAccountsGetResource =
     "v1" :>
       "googleServiceAccounts" :>
         Capture "projectId" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
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
-- /See:/ 'googleServiceAccountsGet'' smart constructor.
data GoogleServiceAccountsGet' = GoogleServiceAccountsGet'
    { _gsagXgafv          :: !(Maybe Text)
    , _gsagUploadProtocol :: !(Maybe Text)
    , _gsagPp             :: !Bool
    , _gsagAccessToken    :: !(Maybe Text)
    , _gsagUploadType     :: !(Maybe Text)
    , _gsagBearerToken    :: !(Maybe Text)
    , _gsagProjectId      :: !Text
    , _gsagCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GoogleServiceAccountsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsagXgafv'
--
-- * 'gsagUploadProtocol'
--
-- * 'gsagPp'
--
-- * 'gsagAccessToken'
--
-- * 'gsagUploadType'
--
-- * 'gsagBearerToken'
--
-- * 'gsagProjectId'
--
-- * 'gsagCallback'
googleServiceAccountsGet'
    :: Text -- ^ 'projectId'
    -> GoogleServiceAccountsGet'
googleServiceAccountsGet' pGsagProjectId_ =
    GoogleServiceAccountsGet'
    { _gsagXgafv = Nothing
    , _gsagUploadProtocol = Nothing
    , _gsagPp = True
    , _gsagAccessToken = Nothing
    , _gsagUploadType = Nothing
    , _gsagBearerToken = Nothing
    , _gsagProjectId = pGsagProjectId_
    , _gsagCallback = Nothing
    }

-- | V1 error format.
gsagXgafv :: Lens' GoogleServiceAccountsGet' (Maybe Text)
gsagXgafv
  = lens _gsagXgafv (\ s a -> s{_gsagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gsagUploadProtocol :: Lens' GoogleServiceAccountsGet' (Maybe Text)
gsagUploadProtocol
  = lens _gsagUploadProtocol
      (\ s a -> s{_gsagUploadProtocol = a})

-- | Pretty-print response.
gsagPp :: Lens' GoogleServiceAccountsGet' Bool
gsagPp = lens _gsagPp (\ s a -> s{_gsagPp = a})

-- | OAuth access token.
gsagAccessToken :: Lens' GoogleServiceAccountsGet' (Maybe Text)
gsagAccessToken
  = lens _gsagAccessToken
      (\ s a -> s{_gsagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gsagUploadType :: Lens' GoogleServiceAccountsGet' (Maybe Text)
gsagUploadType
  = lens _gsagUploadType
      (\ s a -> s{_gsagUploadType = a})

-- | OAuth bearer token.
gsagBearerToken :: Lens' GoogleServiceAccountsGet' (Maybe Text)
gsagBearerToken
  = lens _gsagBearerToken
      (\ s a -> s{_gsagBearerToken = a})

-- | The ID of the Google Developers Console project that the Google service
-- account is associated with. Required.
gsagProjectId :: Lens' GoogleServiceAccountsGet' Text
gsagProjectId
  = lens _gsagProjectId
      (\ s a -> s{_gsagProjectId = a})

-- | JSONP
gsagCallback :: Lens' GoogleServiceAccountsGet' (Maybe Text)
gsagCallback
  = lens _gsagCallback (\ s a -> s{_gsagCallback = a})

instance GoogleRequest GoogleServiceAccountsGet'
         where
        type Rs GoogleServiceAccountsGet' =
             GoogleServiceAccount
        requestClient GoogleServiceAccountsGet'{..}
          = go _gsagProjectId _gsagXgafv _gsagUploadProtocol
              (Just _gsagPp)
              _gsagAccessToken
              _gsagUploadType
              _gsagBearerToken
              _gsagCallback
              (Just AltJSON)
              storageTransferService
          where go
                  = buildClient
                      (Proxy :: Proxy GoogleServiceAccountsGetResource)
                      mempty
