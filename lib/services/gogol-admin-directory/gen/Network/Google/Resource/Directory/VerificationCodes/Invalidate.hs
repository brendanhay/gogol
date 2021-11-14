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
-- Module      : Network.Google.Resource.Directory.VerificationCodes.Invalidate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Invalidates the current backup verification codes for the user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.verificationCodes.invalidate@.
module Network.Google.Resource.Directory.VerificationCodes.Invalidate
    (
    -- * REST Resource
      VerificationCodesInvalidateResource

    -- * Creating a Request
    , verificationCodesInvalidate
    , VerificationCodesInvalidate

    -- * Request Lenses
    , vciXgafv
    , vciUploadProtocol
    , vciAccessToken
    , vciUploadType
    , vciUserKey
    , vciCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.verificationCodes.invalidate@ method which the
-- 'VerificationCodesInvalidate' request conforms to.
type VerificationCodesInvalidateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "verificationCodes" :>
                 "invalidate" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Invalidates the current backup verification codes for the user.
--
-- /See:/ 'verificationCodesInvalidate' smart constructor.
data VerificationCodesInvalidate =
  VerificationCodesInvalidate'
    { _vciXgafv :: !(Maybe Xgafv)
    , _vciUploadProtocol :: !(Maybe Text)
    , _vciAccessToken :: !(Maybe Text)
    , _vciUploadType :: !(Maybe Text)
    , _vciUserKey :: !Text
    , _vciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VerificationCodesInvalidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vciXgafv'
--
-- * 'vciUploadProtocol'
--
-- * 'vciAccessToken'
--
-- * 'vciUploadType'
--
-- * 'vciUserKey'
--
-- * 'vciCallback'
verificationCodesInvalidate
    :: Text -- ^ 'vciUserKey'
    -> VerificationCodesInvalidate
verificationCodesInvalidate pVciUserKey_ =
  VerificationCodesInvalidate'
    { _vciXgafv = Nothing
    , _vciUploadProtocol = Nothing
    , _vciAccessToken = Nothing
    , _vciUploadType = Nothing
    , _vciUserKey = pVciUserKey_
    , _vciCallback = Nothing
    }


-- | V1 error format.
vciXgafv :: Lens' VerificationCodesInvalidate (Maybe Xgafv)
vciXgafv = lens _vciXgafv (\ s a -> s{_vciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vciUploadProtocol :: Lens' VerificationCodesInvalidate (Maybe Text)
vciUploadProtocol
  = lens _vciUploadProtocol
      (\ s a -> s{_vciUploadProtocol = a})

-- | OAuth access token.
vciAccessToken :: Lens' VerificationCodesInvalidate (Maybe Text)
vciAccessToken
  = lens _vciAccessToken
      (\ s a -> s{_vciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vciUploadType :: Lens' VerificationCodesInvalidate (Maybe Text)
vciUploadType
  = lens _vciUploadType
      (\ s a -> s{_vciUploadType = a})

-- | Email or immutable ID of the user
vciUserKey :: Lens' VerificationCodesInvalidate Text
vciUserKey
  = lens _vciUserKey (\ s a -> s{_vciUserKey = a})

-- | JSONP
vciCallback :: Lens' VerificationCodesInvalidate (Maybe Text)
vciCallback
  = lens _vciCallback (\ s a -> s{_vciCallback = a})

instance GoogleRequest VerificationCodesInvalidate
         where
        type Rs VerificationCodesInvalidate = ()
        type Scopes VerificationCodesInvalidate =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient VerificationCodesInvalidate'{..}
          = go _vciUserKey _vciXgafv _vciUploadProtocol
              _vciAccessToken
              _vciUploadType
              _vciCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy VerificationCodesInvalidateResource)
                      mempty
