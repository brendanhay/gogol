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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.EnrollmentTokens.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an enrollment token for a given enterprise.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.enrollmentTokens.create@.
module Network.Google.Resource.AndroidManagement.Enterprises.EnrollmentTokens.Create
    (
    -- * REST Resource
      EnterprisesEnrollmentTokensCreateResource

    -- * Creating a Request
    , enterprisesEnrollmentTokensCreate
    , EnterprisesEnrollmentTokensCreate

    -- * Request Lenses
    , eetcParent
    , eetcXgafv
    , eetcUploadProtocol
    , eetcAccessToken
    , eetcUploadType
    , eetcPayload
    , eetcCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.enrollmentTokens.create@ method which the
-- 'EnterprisesEnrollmentTokensCreate' request conforms to.
type EnterprisesEnrollmentTokensCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "enrollmentTokens" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] EnrollmentToken :>
                         Post '[JSON] EnrollmentToken

-- | Creates an enrollment token for a given enterprise.
--
-- /See:/ 'enterprisesEnrollmentTokensCreate' smart constructor.
data EnterprisesEnrollmentTokensCreate =
  EnterprisesEnrollmentTokensCreate'
    { _eetcParent :: !Text
    , _eetcXgafv :: !(Maybe Xgafv)
    , _eetcUploadProtocol :: !(Maybe Text)
    , _eetcAccessToken :: !(Maybe Text)
    , _eetcUploadType :: !(Maybe Text)
    , _eetcPayload :: !EnrollmentToken
    , _eetcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesEnrollmentTokensCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eetcParent'
--
-- * 'eetcXgafv'
--
-- * 'eetcUploadProtocol'
--
-- * 'eetcAccessToken'
--
-- * 'eetcUploadType'
--
-- * 'eetcPayload'
--
-- * 'eetcCallback'
enterprisesEnrollmentTokensCreate
    :: Text -- ^ 'eetcParent'
    -> EnrollmentToken -- ^ 'eetcPayload'
    -> EnterprisesEnrollmentTokensCreate
enterprisesEnrollmentTokensCreate pEetcParent_ pEetcPayload_ =
  EnterprisesEnrollmentTokensCreate'
    { _eetcParent = pEetcParent_
    , _eetcXgafv = Nothing
    , _eetcUploadProtocol = Nothing
    , _eetcAccessToken = Nothing
    , _eetcUploadType = Nothing
    , _eetcPayload = pEetcPayload_
    , _eetcCallback = Nothing
    }


-- | The name of the enterprise in the form enterprises\/{enterpriseId}.
eetcParent :: Lens' EnterprisesEnrollmentTokensCreate Text
eetcParent
  = lens _eetcParent (\ s a -> s{_eetcParent = a})

-- | V1 error format.
eetcXgafv :: Lens' EnterprisesEnrollmentTokensCreate (Maybe Xgafv)
eetcXgafv
  = lens _eetcXgafv (\ s a -> s{_eetcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eetcUploadProtocol :: Lens' EnterprisesEnrollmentTokensCreate (Maybe Text)
eetcUploadProtocol
  = lens _eetcUploadProtocol
      (\ s a -> s{_eetcUploadProtocol = a})

-- | OAuth access token.
eetcAccessToken :: Lens' EnterprisesEnrollmentTokensCreate (Maybe Text)
eetcAccessToken
  = lens _eetcAccessToken
      (\ s a -> s{_eetcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eetcUploadType :: Lens' EnterprisesEnrollmentTokensCreate (Maybe Text)
eetcUploadType
  = lens _eetcUploadType
      (\ s a -> s{_eetcUploadType = a})

-- | Multipart request metadata.
eetcPayload :: Lens' EnterprisesEnrollmentTokensCreate EnrollmentToken
eetcPayload
  = lens _eetcPayload (\ s a -> s{_eetcPayload = a})

-- | JSONP
eetcCallback :: Lens' EnterprisesEnrollmentTokensCreate (Maybe Text)
eetcCallback
  = lens _eetcCallback (\ s a -> s{_eetcCallback = a})

instance GoogleRequest
           EnterprisesEnrollmentTokensCreate
         where
        type Rs EnterprisesEnrollmentTokensCreate =
             EnrollmentToken
        type Scopes EnterprisesEnrollmentTokensCreate =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesEnrollmentTokensCreate'{..}
          = go _eetcParent _eetcXgafv _eetcUploadProtocol
              _eetcAccessToken
              _eetcUploadType
              _eetcCallback
              (Just AltJSON)
              _eetcPayload
              androidManagementService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EnterprisesEnrollmentTokensCreateResource)
                      mempty
