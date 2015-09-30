{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
-- /See:/ <https://cloud.google.com/storage/transfer Google Storage Transfer API Reference> for @StoragetransferGetGoogleServiceAccount@.
module StorageTransfer.GetGoogleServiceAccount
    (
    -- * REST Resource
      GetGoogleServiceAccountAPI

    -- * Creating a Request
    , getGoogleServiceAccount
    , GetGoogleServiceAccount

    -- * Request Lenses
    , ggsaXgafv
    , ggsaQuotaUser
    , ggsaPrettyPrint
    , ggsaUploadProtocol
    , ggsaPp
    , ggsaAccessToken
    , ggsaUploadType
    , ggsaBearerToken
    , ggsaKey
    , ggsaProjectId
    , ggsaOauthToken
    , ggsaFields
    , ggsaCallback
    , ggsaAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.StorageTransfer.Types

-- | A resource alias for @StoragetransferGetGoogleServiceAccount@ which the
-- 'GetGoogleServiceAccount' request conforms to.
type GetGoogleServiceAccountAPI =
     "v1:getGoogleServiceAccount" :>
       QueryParam "projectId" Text :>
         Get '[JSON] GoogleServiceAccount

-- | Returns the Google service account that is used by Storage Transfer
-- Service to access buckets in the project where transfers run or in other
-- projects. Each Google service account is associated with one Google
-- Developers Console project. Users should add this service account to the
-- Google Cloud Storage bucket ACLs to grant access to Storage Transfer
-- Service. This service account is created and owned by Storage Transfer
-- Service and can only be used by Storage Transfer Service.
--
-- /See:/ 'getGoogleServiceAccount' smart constructor.
data GetGoogleServiceAccount = GetGoogleServiceAccount
    { _ggsaXgafv          :: !(Maybe Text)
    , _ggsaQuotaUser      :: !(Maybe Text)
    , _ggsaPrettyPrint    :: !Bool
    , _ggsaUploadProtocol :: !(Maybe Text)
    , _ggsaPp             :: !Bool
    , _ggsaAccessToken    :: !(Maybe Text)
    , _ggsaUploadType     :: !(Maybe Text)
    , _ggsaBearerToken    :: !(Maybe Text)
    , _ggsaKey            :: !(Maybe Text)
    , _ggsaProjectId      :: !(Maybe Text)
    , _ggsaOauthToken     :: !(Maybe Text)
    , _ggsaFields         :: !(Maybe Text)
    , _ggsaCallback       :: !(Maybe Text)
    , _ggsaAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'GetGoogleServiceAccount'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggsaXgafv'
--
-- * 'ggsaQuotaUser'
--
-- * 'ggsaPrettyPrint'
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
-- * 'ggsaKey'
--
-- * 'ggsaProjectId'
--
-- * 'ggsaOauthToken'
--
-- * 'ggsaFields'
--
-- * 'ggsaCallback'
--
-- * 'ggsaAlt'
getGoogleServiceAccount
    :: GetGoogleServiceAccount
getGoogleServiceAccount =
    GetGoogleServiceAccount
    { _ggsaXgafv = Nothing
    , _ggsaQuotaUser = Nothing
    , _ggsaPrettyPrint = True
    , _ggsaUploadProtocol = Nothing
    , _ggsaPp = True
    , _ggsaAccessToken = Nothing
    , _ggsaUploadType = Nothing
    , _ggsaBearerToken = Nothing
    , _ggsaKey = Nothing
    , _ggsaProjectId = Nothing
    , _ggsaOauthToken = Nothing
    , _ggsaFields = Nothing
    , _ggsaCallback = Nothing
    , _ggsaAlt = "json"
    }

-- | V1 error format.
ggsaXgafv :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaXgafv
  = lens _ggsaXgafv (\ s a -> s{_ggsaXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ggsaQuotaUser :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaQuotaUser
  = lens _ggsaQuotaUser
      (\ s a -> s{_ggsaQuotaUser = a})

-- | Returns response with indentations and line breaks.
ggsaPrettyPrint :: Lens' GetGoogleServiceAccount' Bool
ggsaPrettyPrint
  = lens _ggsaPrettyPrint
      (\ s a -> s{_ggsaPrettyPrint = a})

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

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ggsaKey :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaKey = lens _ggsaKey (\ s a -> s{_ggsaKey = a})

-- | The ID of the Google Developers Console project that the Google service
-- account is associated with. Required.
ggsaProjectId :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaProjectId
  = lens _ggsaProjectId
      (\ s a -> s{_ggsaProjectId = a})

-- | OAuth 2.0 token for the current user.
ggsaOauthToken :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaOauthToken
  = lens _ggsaOauthToken
      (\ s a -> s{_ggsaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ggsaFields :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaFields
  = lens _ggsaFields (\ s a -> s{_ggsaFields = a})

-- | JSONP
ggsaCallback :: Lens' GetGoogleServiceAccount' (Maybe Text)
ggsaCallback
  = lens _ggsaCallback (\ s a -> s{_ggsaCallback = a})

-- | Data format for response.
ggsaAlt :: Lens' GetGoogleServiceAccount' Text
ggsaAlt = lens _ggsaAlt (\ s a -> s{_ggsaAlt = a})

instance GoogleRequest GetGoogleServiceAccount' where
        type Rs GetGoogleServiceAccount' =
             GoogleServiceAccount
        request = requestWithRoute defReq storageTransferURL
        requestWithRoute r u GetGoogleServiceAccount{..}
          = go _ggsaXgafv _ggsaQuotaUser _ggsaPrettyPrint
              _ggsaUploadProtocol
              _ggsaPp
              _ggsaAccessToken
              _ggsaUploadType
              _ggsaBearerToken
              _ggsaKey
              _ggsaProjectId
              _ggsaOauthToken
              _ggsaFields
              _ggsaCallback
              _ggsaAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GetGoogleServiceAccountAPI)
                      r
                      u
