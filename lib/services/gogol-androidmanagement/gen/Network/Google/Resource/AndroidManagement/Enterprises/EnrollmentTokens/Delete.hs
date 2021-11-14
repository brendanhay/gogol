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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.EnrollmentTokens.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an enrollment token. This operation invalidates the token,
-- preventing its future use.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.enrollmentTokens.delete@.
module Network.Google.Resource.AndroidManagement.Enterprises.EnrollmentTokens.Delete
    (
    -- * REST Resource
      EnterprisesEnrollmentTokensDeleteResource

    -- * Creating a Request
    , enterprisesEnrollmentTokensDelete
    , EnterprisesEnrollmentTokensDelete

    -- * Request Lenses
    , eetdXgafv
    , eetdUploadProtocol
    , eetdAccessToken
    , eetdUploadType
    , eetdName
    , eetdCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.enrollmentTokens.delete@ method which the
-- 'EnterprisesEnrollmentTokensDelete' request conforms to.
type EnterprisesEnrollmentTokensDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an enrollment token. This operation invalidates the token,
-- preventing its future use.
--
-- /See:/ 'enterprisesEnrollmentTokensDelete' smart constructor.
data EnterprisesEnrollmentTokensDelete =
  EnterprisesEnrollmentTokensDelete'
    { _eetdXgafv :: !(Maybe Xgafv)
    , _eetdUploadProtocol :: !(Maybe Text)
    , _eetdAccessToken :: !(Maybe Text)
    , _eetdUploadType :: !(Maybe Text)
    , _eetdName :: !Text
    , _eetdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesEnrollmentTokensDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eetdXgafv'
--
-- * 'eetdUploadProtocol'
--
-- * 'eetdAccessToken'
--
-- * 'eetdUploadType'
--
-- * 'eetdName'
--
-- * 'eetdCallback'
enterprisesEnrollmentTokensDelete
    :: Text -- ^ 'eetdName'
    -> EnterprisesEnrollmentTokensDelete
enterprisesEnrollmentTokensDelete pEetdName_ =
  EnterprisesEnrollmentTokensDelete'
    { _eetdXgafv = Nothing
    , _eetdUploadProtocol = Nothing
    , _eetdAccessToken = Nothing
    , _eetdUploadType = Nothing
    , _eetdName = pEetdName_
    , _eetdCallback = Nothing
    }


-- | V1 error format.
eetdXgafv :: Lens' EnterprisesEnrollmentTokensDelete (Maybe Xgafv)
eetdXgafv
  = lens _eetdXgafv (\ s a -> s{_eetdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eetdUploadProtocol :: Lens' EnterprisesEnrollmentTokensDelete (Maybe Text)
eetdUploadProtocol
  = lens _eetdUploadProtocol
      (\ s a -> s{_eetdUploadProtocol = a})

-- | OAuth access token.
eetdAccessToken :: Lens' EnterprisesEnrollmentTokensDelete (Maybe Text)
eetdAccessToken
  = lens _eetdAccessToken
      (\ s a -> s{_eetdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eetdUploadType :: Lens' EnterprisesEnrollmentTokensDelete (Maybe Text)
eetdUploadType
  = lens _eetdUploadType
      (\ s a -> s{_eetdUploadType = a})

-- | The name of the enrollment token in the form
-- enterprises\/{enterpriseId}\/enrollmentTokens\/{enrollmentTokenId}.
eetdName :: Lens' EnterprisesEnrollmentTokensDelete Text
eetdName = lens _eetdName (\ s a -> s{_eetdName = a})

-- | JSONP
eetdCallback :: Lens' EnterprisesEnrollmentTokensDelete (Maybe Text)
eetdCallback
  = lens _eetdCallback (\ s a -> s{_eetdCallback = a})

instance GoogleRequest
           EnterprisesEnrollmentTokensDelete
         where
        type Rs EnterprisesEnrollmentTokensDelete = Empty
        type Scopes EnterprisesEnrollmentTokensDelete =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesEnrollmentTokensDelete'{..}
          = go _eetdName _eetdXgafv _eetdUploadProtocol
              _eetdAccessToken
              _eetdUploadType
              _eetdCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EnterprisesEnrollmentTokensDeleteResource)
                      mempty
