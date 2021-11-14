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
-- Module      : Network.Google.Resource.Directory.TwoStepVerification.TurnOff
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Turns off 2-Step Verification for user.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.twoStepVerification.turnOff@.
module Network.Google.Resource.Directory.TwoStepVerification.TurnOff
    (
    -- * REST Resource
      TwoStepVerificationTurnOffResource

    -- * Creating a Request
    , twoStepVerificationTurnOff
    , TwoStepVerificationTurnOff

    -- * Request Lenses
    , tsvtoXgafv
    , tsvtoUploadProtocol
    , tsvtoAccessToken
    , tsvtoUploadType
    , tsvtoUserKey
    , tsvtoCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.twoStepVerification.turnOff@ method which the
-- 'TwoStepVerificationTurnOff' request conforms to.
type TwoStepVerificationTurnOffResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "users" :>
             Capture "userKey" Text :>
               "twoStepVerification" :>
                 "turnOff" :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Turns off 2-Step Verification for user.
--
-- /See:/ 'twoStepVerificationTurnOff' smart constructor.
data TwoStepVerificationTurnOff =
  TwoStepVerificationTurnOff'
    { _tsvtoXgafv :: !(Maybe Xgafv)
    , _tsvtoUploadProtocol :: !(Maybe Text)
    , _tsvtoAccessToken :: !(Maybe Text)
    , _tsvtoUploadType :: !(Maybe Text)
    , _tsvtoUserKey :: !Text
    , _tsvtoCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TwoStepVerificationTurnOff' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsvtoXgafv'
--
-- * 'tsvtoUploadProtocol'
--
-- * 'tsvtoAccessToken'
--
-- * 'tsvtoUploadType'
--
-- * 'tsvtoUserKey'
--
-- * 'tsvtoCallback'
twoStepVerificationTurnOff
    :: Text -- ^ 'tsvtoUserKey'
    -> TwoStepVerificationTurnOff
twoStepVerificationTurnOff pTsvtoUserKey_ =
  TwoStepVerificationTurnOff'
    { _tsvtoXgafv = Nothing
    , _tsvtoUploadProtocol = Nothing
    , _tsvtoAccessToken = Nothing
    , _tsvtoUploadType = Nothing
    , _tsvtoUserKey = pTsvtoUserKey_
    , _tsvtoCallback = Nothing
    }


-- | V1 error format.
tsvtoXgafv :: Lens' TwoStepVerificationTurnOff (Maybe Xgafv)
tsvtoXgafv
  = lens _tsvtoXgafv (\ s a -> s{_tsvtoXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tsvtoUploadProtocol :: Lens' TwoStepVerificationTurnOff (Maybe Text)
tsvtoUploadProtocol
  = lens _tsvtoUploadProtocol
      (\ s a -> s{_tsvtoUploadProtocol = a})

-- | OAuth access token.
tsvtoAccessToken :: Lens' TwoStepVerificationTurnOff (Maybe Text)
tsvtoAccessToken
  = lens _tsvtoAccessToken
      (\ s a -> s{_tsvtoAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tsvtoUploadType :: Lens' TwoStepVerificationTurnOff (Maybe Text)
tsvtoUploadType
  = lens _tsvtoUploadType
      (\ s a -> s{_tsvtoUploadType = a})

-- | Identifies the user in the API request. The value can be the user\'s
-- primary email address, alias email address, or unique user ID.
tsvtoUserKey :: Lens' TwoStepVerificationTurnOff Text
tsvtoUserKey
  = lens _tsvtoUserKey (\ s a -> s{_tsvtoUserKey = a})

-- | JSONP
tsvtoCallback :: Lens' TwoStepVerificationTurnOff (Maybe Text)
tsvtoCallback
  = lens _tsvtoCallback
      (\ s a -> s{_tsvtoCallback = a})

instance GoogleRequest TwoStepVerificationTurnOff
         where
        type Rs TwoStepVerificationTurnOff = ()
        type Scopes TwoStepVerificationTurnOff =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient TwoStepVerificationTurnOff'{..}
          = go _tsvtoUserKey _tsvtoXgafv _tsvtoUploadProtocol
              _tsvtoAccessToken
              _tsvtoUploadType
              _tsvtoCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy TwoStepVerificationTurnOffResource)
                      mempty
