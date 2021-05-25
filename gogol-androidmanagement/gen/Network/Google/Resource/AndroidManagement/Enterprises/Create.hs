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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an enterprise. This is the last step in the enterprise signup
-- flow.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.create@.
module Network.Google.Resource.AndroidManagement.Enterprises.Create
    (
    -- * REST Resource
      EnterprisesCreateResource

    -- * Creating a Request
    , enterprisesCreate
    , EnterprisesCreate

    -- * Request Lenses
    , ecXgafv
    , ecAgreementAccepted
    , ecSignupURLName
    , ecUploadProtocol
    , ecAccessToken
    , ecUploadType
    , ecPayload
    , ecProjectId
    , ecEnterpriseToken
    , ecCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.create@ method which the
-- 'EnterprisesCreate' request conforms to.
type EnterprisesCreateResource =
     "v1" :>
       "enterprises" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "agreementAccepted" Bool :>
             QueryParam "signupUrlName" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "projectId" Text :>
                       QueryParam "enterpriseToken" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Enterprise :>
                               Post '[JSON] Enterprise

-- | Creates an enterprise. This is the last step in the enterprise signup
-- flow.
--
-- /See:/ 'enterprisesCreate' smart constructor.
data EnterprisesCreate =
  EnterprisesCreate'
    { _ecXgafv :: !(Maybe Xgafv)
    , _ecAgreementAccepted :: !(Maybe Bool)
    , _ecSignupURLName :: !(Maybe Text)
    , _ecUploadProtocol :: !(Maybe Text)
    , _ecAccessToken :: !(Maybe Text)
    , _ecUploadType :: !(Maybe Text)
    , _ecPayload :: !Enterprise
    , _ecProjectId :: !(Maybe Text)
    , _ecEnterpriseToken :: !(Maybe Text)
    , _ecCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecXgafv'
--
-- * 'ecAgreementAccepted'
--
-- * 'ecSignupURLName'
--
-- * 'ecUploadProtocol'
--
-- * 'ecAccessToken'
--
-- * 'ecUploadType'
--
-- * 'ecPayload'
--
-- * 'ecProjectId'
--
-- * 'ecEnterpriseToken'
--
-- * 'ecCallback'
enterprisesCreate
    :: Enterprise -- ^ 'ecPayload'
    -> EnterprisesCreate
enterprisesCreate pEcPayload_ =
  EnterprisesCreate'
    { _ecXgafv = Nothing
    , _ecAgreementAccepted = Nothing
    , _ecSignupURLName = Nothing
    , _ecUploadProtocol = Nothing
    , _ecAccessToken = Nothing
    , _ecUploadType = Nothing
    , _ecPayload = pEcPayload_
    , _ecProjectId = Nothing
    , _ecEnterpriseToken = Nothing
    , _ecCallback = Nothing
    }


-- | V1 error format.
ecXgafv :: Lens' EnterprisesCreate (Maybe Xgafv)
ecXgafv = lens _ecXgafv (\ s a -> s{_ecXgafv = a})

-- | Whether the enterprise admin has seen and agreed to the managed Google
-- Play Agreement (https:\/\/www.android.com\/enterprise\/terms\/). Always
-- set this to true when creating an EMM-managed enterprise. Do not create
-- the enterprise until the admin has viewed and accepted the agreement.
ecAgreementAccepted :: Lens' EnterprisesCreate (Maybe Bool)
ecAgreementAccepted
  = lens _ecAgreementAccepted
      (\ s a -> s{_ecAgreementAccepted = a})

-- | The name of the SignupUrl used to sign up for the enterprise. Only set
-- this when creating a customer-managed enterprise.
ecSignupURLName :: Lens' EnterprisesCreate (Maybe Text)
ecSignupURLName
  = lens _ecSignupURLName
      (\ s a -> s{_ecSignupURLName = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ecUploadProtocol :: Lens' EnterprisesCreate (Maybe Text)
ecUploadProtocol
  = lens _ecUploadProtocol
      (\ s a -> s{_ecUploadProtocol = a})

-- | OAuth access token.
ecAccessToken :: Lens' EnterprisesCreate (Maybe Text)
ecAccessToken
  = lens _ecAccessToken
      (\ s a -> s{_ecAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ecUploadType :: Lens' EnterprisesCreate (Maybe Text)
ecUploadType
  = lens _ecUploadType (\ s a -> s{_ecUploadType = a})

-- | Multipart request metadata.
ecPayload :: Lens' EnterprisesCreate Enterprise
ecPayload
  = lens _ecPayload (\ s a -> s{_ecPayload = a})

-- | The ID of the Google Cloud Platform project which will own the
-- enterprise.
ecProjectId :: Lens' EnterprisesCreate (Maybe Text)
ecProjectId
  = lens _ecProjectId (\ s a -> s{_ecProjectId = a})

-- | The enterprise token appended to the callback URL. Only set this when
-- creating a customer-managed enterprise.
ecEnterpriseToken :: Lens' EnterprisesCreate (Maybe Text)
ecEnterpriseToken
  = lens _ecEnterpriseToken
      (\ s a -> s{_ecEnterpriseToken = a})

-- | JSONP
ecCallback :: Lens' EnterprisesCreate (Maybe Text)
ecCallback
  = lens _ecCallback (\ s a -> s{_ecCallback = a})

instance GoogleRequest EnterprisesCreate where
        type Rs EnterprisesCreate = Enterprise
        type Scopes EnterprisesCreate =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesCreate'{..}
          = go _ecXgafv _ecAgreementAccepted _ecSignupURLName
              _ecUploadProtocol
              _ecAccessToken
              _ecUploadType
              _ecProjectId
              _ecEnterpriseToken
              _ecCallback
              (Just AltJSON)
              _ecPayload
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesCreateResource)
                      mempty
