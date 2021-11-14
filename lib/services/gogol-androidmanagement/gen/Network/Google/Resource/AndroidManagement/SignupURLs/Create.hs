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
-- Module      : Network.Google.Resource.AndroidManagement.SignupURLs.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an enterprise signup URL.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.signupUrls.create@.
module Network.Google.Resource.AndroidManagement.SignupURLs.Create
    (
    -- * REST Resource
      SignupURLsCreateResource

    -- * Creating a Request
    , signupURLsCreate
    , SignupURLsCreate

    -- * Request Lenses
    , sucXgafv
    , sucUploadProtocol
    , sucCallbackURL
    , sucAccessToken
    , sucUploadType
    , sucProjectId
    , sucCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.signupUrls.create@ method which the
-- 'SignupURLsCreate' request conforms to.
type SignupURLsCreateResource =
     "v1" :>
       "signupUrls" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "callbackUrl" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "projectId" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Post '[JSON] SignupURL

-- | Creates an enterprise signup URL.
--
-- /See:/ 'signupURLsCreate' smart constructor.
data SignupURLsCreate =
  SignupURLsCreate'
    { _sucXgafv :: !(Maybe Xgafv)
    , _sucUploadProtocol :: !(Maybe Text)
    , _sucCallbackURL :: !(Maybe Text)
    , _sucAccessToken :: !(Maybe Text)
    , _sucUploadType :: !(Maybe Text)
    , _sucProjectId :: !(Maybe Text)
    , _sucCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SignupURLsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sucXgafv'
--
-- * 'sucUploadProtocol'
--
-- * 'sucCallbackURL'
--
-- * 'sucAccessToken'
--
-- * 'sucUploadType'
--
-- * 'sucProjectId'
--
-- * 'sucCallback'
signupURLsCreate
    :: SignupURLsCreate
signupURLsCreate =
  SignupURLsCreate'
    { _sucXgafv = Nothing
    , _sucUploadProtocol = Nothing
    , _sucCallbackURL = Nothing
    , _sucAccessToken = Nothing
    , _sucUploadType = Nothing
    , _sucProjectId = Nothing
    , _sucCallback = Nothing
    }


-- | V1 error format.
sucXgafv :: Lens' SignupURLsCreate (Maybe Xgafv)
sucXgafv = lens _sucXgafv (\ s a -> s{_sucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sucUploadProtocol :: Lens' SignupURLsCreate (Maybe Text)
sucUploadProtocol
  = lens _sucUploadProtocol
      (\ s a -> s{_sucUploadProtocol = a})

-- | The callback URL that the admin will be redirected to after successfully
-- creating an enterprise. Before redirecting there the system will add a
-- query parameter to this URL named enterpriseToken which will contain an
-- opaque token to be used for the create enterprise request. The URL will
-- be parsed then reformatted in order to add the enterpriseToken
-- parameter, so there may be some minor formatting changes.
sucCallbackURL :: Lens' SignupURLsCreate (Maybe Text)
sucCallbackURL
  = lens _sucCallbackURL
      (\ s a -> s{_sucCallbackURL = a})

-- | OAuth access token.
sucAccessToken :: Lens' SignupURLsCreate (Maybe Text)
sucAccessToken
  = lens _sucAccessToken
      (\ s a -> s{_sucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sucUploadType :: Lens' SignupURLsCreate (Maybe Text)
sucUploadType
  = lens _sucUploadType
      (\ s a -> s{_sucUploadType = a})

-- | The ID of the Google Cloud Platform project which will own the
-- enterprise.
sucProjectId :: Lens' SignupURLsCreate (Maybe Text)
sucProjectId
  = lens _sucProjectId (\ s a -> s{_sucProjectId = a})

-- | JSONP
sucCallback :: Lens' SignupURLsCreate (Maybe Text)
sucCallback
  = lens _sucCallback (\ s a -> s{_sucCallback = a})

instance GoogleRequest SignupURLsCreate where
        type Rs SignupURLsCreate = SignupURL
        type Scopes SignupURLsCreate =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient SignupURLsCreate'{..}
          = go _sucXgafv _sucUploadProtocol _sucCallbackURL
              _sucAccessToken
              _sucUploadType
              _sucProjectId
              _sucCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy SignupURLsCreateResource)
                      mempty
