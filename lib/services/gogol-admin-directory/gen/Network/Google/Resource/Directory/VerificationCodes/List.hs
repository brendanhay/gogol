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
-- Module      : Network.Google.Resource.Directory.VerificationCodes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the current set of valid backup verification codes for the
-- specified user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.verificationCodes.list@.
module Network.Google.Resource.Directory.VerificationCodes.List
    (
    -- * REST Resource
      VerificationCodesListResource

    -- * Creating a Request
    , verificationCodesList
    , VerificationCodesList

    -- * Request Lenses
    , vclXgafv
    , vclUploadProtocol
    , vclAccessToken
    , vclUploadType
    , vclUserKey
    , vclCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.verificationCodes.list@ method which the
-- 'VerificationCodesList' request conforms to.
type VerificationCodesListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "verificationCodes" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] VerificationCodes

-- | Returns the current set of valid backup verification codes for the
-- specified user.
--
-- /See:/ 'verificationCodesList' smart constructor.
data VerificationCodesList =
  VerificationCodesList'
    { _vclXgafv :: !(Maybe Xgafv)
    , _vclUploadProtocol :: !(Maybe Text)
    , _vclAccessToken :: !(Maybe Text)
    , _vclUploadType :: !(Maybe Text)
    , _vclUserKey :: !Text
    , _vclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VerificationCodesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vclXgafv'
--
-- * 'vclUploadProtocol'
--
-- * 'vclAccessToken'
--
-- * 'vclUploadType'
--
-- * 'vclUserKey'
--
-- * 'vclCallback'
verificationCodesList
    :: Text -- ^ 'vclUserKey'
    -> VerificationCodesList
verificationCodesList pVclUserKey_ =
  VerificationCodesList'
    { _vclXgafv = Nothing
    , _vclUploadProtocol = Nothing
    , _vclAccessToken = Nothing
    , _vclUploadType = Nothing
    , _vclUserKey = pVclUserKey_
    , _vclCallback = Nothing
    }


-- | V1 error format.
vclXgafv :: Lens' VerificationCodesList (Maybe Xgafv)
vclXgafv = lens _vclXgafv (\ s a -> s{_vclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vclUploadProtocol :: Lens' VerificationCodesList (Maybe Text)
vclUploadProtocol
  = lens _vclUploadProtocol
      (\ s a -> s{_vclUploadProtocol = a})

-- | OAuth access token.
vclAccessToken :: Lens' VerificationCodesList (Maybe Text)
vclAccessToken
  = lens _vclAccessToken
      (\ s a -> s{_vclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vclUploadType :: Lens' VerificationCodesList (Maybe Text)
vclUploadType
  = lens _vclUploadType
      (\ s a -> s{_vclUploadType = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
vclUserKey :: Lens' VerificationCodesList Text
vclUserKey
  = lens _vclUserKey (\ s a -> s{_vclUserKey = a})

-- | JSONP
vclCallback :: Lens' VerificationCodesList (Maybe Text)
vclCallback
  = lens _vclCallback (\ s a -> s{_vclCallback = a})

instance GoogleRequest VerificationCodesList where
        type Rs VerificationCodesList = VerificationCodes
        type Scopes VerificationCodesList =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient VerificationCodesList'{..}
          = go _vclUserKey _vclXgafv _vclUploadProtocol
              _vclAccessToken
              _vclUploadType
              _vclCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy VerificationCodesListResource)
                      mempty
