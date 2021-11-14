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
-- Module      : Network.Google.Resource.Directory.VerificationCodes.Generate
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates new backup verification codes for the user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.verificationCodes.generate@.
module Network.Google.Resource.Directory.VerificationCodes.Generate
    (
    -- * REST Resource
      VerificationCodesGenerateResource

    -- * Creating a Request
    , verificationCodesGenerate
    , VerificationCodesGenerate

    -- * Request Lenses
    , vcgXgafv
    , vcgUploadProtocol
    , vcgAccessToken
    , vcgUploadType
    , vcgUserKey
    , vcgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.verificationCodes.generate@ method which the
-- 'VerificationCodesGenerate' request conforms to.
type VerificationCodesGenerateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "verificationCodes" :>
                 "generate" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Generates new backup verification codes for the user.
--
-- /See:/ 'verificationCodesGenerate' smart constructor.
data VerificationCodesGenerate =
  VerificationCodesGenerate'
    { _vcgXgafv :: !(Maybe Xgafv)
    , _vcgUploadProtocol :: !(Maybe Text)
    , _vcgAccessToken :: !(Maybe Text)
    , _vcgUploadType :: !(Maybe Text)
    , _vcgUserKey :: !Text
    , _vcgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'VerificationCodesGenerate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vcgXgafv'
--
-- * 'vcgUploadProtocol'
--
-- * 'vcgAccessToken'
--
-- * 'vcgUploadType'
--
-- * 'vcgUserKey'
--
-- * 'vcgCallback'
verificationCodesGenerate
    :: Text -- ^ 'vcgUserKey'
    -> VerificationCodesGenerate
verificationCodesGenerate pVcgUserKey_ =
  VerificationCodesGenerate'
    { _vcgXgafv = Nothing
    , _vcgUploadProtocol = Nothing
    , _vcgAccessToken = Nothing
    , _vcgUploadType = Nothing
    , _vcgUserKey = pVcgUserKey_
    , _vcgCallback = Nothing
    }


-- | V1 error format.
vcgXgafv :: Lens' VerificationCodesGenerate (Maybe Xgafv)
vcgXgafv = lens _vcgXgafv (\ s a -> s{_vcgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
vcgUploadProtocol :: Lens' VerificationCodesGenerate (Maybe Text)
vcgUploadProtocol
  = lens _vcgUploadProtocol
      (\ s a -> s{_vcgUploadProtocol = a})

-- | OAuth access token.
vcgAccessToken :: Lens' VerificationCodesGenerate (Maybe Text)
vcgAccessToken
  = lens _vcgAccessToken
      (\ s a -> s{_vcgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
vcgUploadType :: Lens' VerificationCodesGenerate (Maybe Text)
vcgUploadType
  = lens _vcgUploadType
      (\ s a -> s{_vcgUploadType = a})

-- | Email or immutable ID of the user
vcgUserKey :: Lens' VerificationCodesGenerate Text
vcgUserKey
  = lens _vcgUserKey (\ s a -> s{_vcgUserKey = a})

-- | JSONP
vcgCallback :: Lens' VerificationCodesGenerate (Maybe Text)
vcgCallback
  = lens _vcgCallback (\ s a -> s{_vcgCallback = a})

instance GoogleRequest VerificationCodesGenerate
         where
        type Rs VerificationCodesGenerate = ()
        type Scopes VerificationCodesGenerate =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient VerificationCodesGenerate'{..}
          = go _vcgUserKey _vcgXgafv _vcgUploadProtocol
              _vcgAccessToken
              _vcgUploadType
              _vcgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy VerificationCodesGenerateResource)
                      mempty
