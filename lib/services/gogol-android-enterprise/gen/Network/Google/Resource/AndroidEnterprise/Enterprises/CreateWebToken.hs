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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.CreateWebToken
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a unique token to access an embeddable UI. To generate a web UI,
-- pass the generated token into the managed Google Play javascript API.
-- Each token may only be used to start one UI session. See the javascript
-- API documentation for further information.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.createWebToken@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.CreateWebToken
    (
    -- * REST Resource
      EnterprisesCreateWebTokenResource

    -- * Creating a Request
    , enterprisesCreateWebToken
    , EnterprisesCreateWebToken

    -- * Request Lenses
    , ecwtXgafv
    , ecwtUploadProtocol
    , ecwtEnterpriseId
    , ecwtAccessToken
    , ecwtUploadType
    , ecwtPayload
    , ecwtCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.createWebToken@ method which the
-- 'EnterprisesCreateWebToken' request conforms to.
type EnterprisesCreateWebTokenResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "createWebToken" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] AdministratorWebTokenSpec :>
                             Post '[JSON] AdministratorWebToken

-- | Returns a unique token to access an embeddable UI. To generate a web UI,
-- pass the generated token into the managed Google Play javascript API.
-- Each token may only be used to start one UI session. See the javascript
-- API documentation for further information.
--
-- /See:/ 'enterprisesCreateWebToken' smart constructor.
data EnterprisesCreateWebToken =
  EnterprisesCreateWebToken'
    { _ecwtXgafv :: !(Maybe Xgafv)
    , _ecwtUploadProtocol :: !(Maybe Text)
    , _ecwtEnterpriseId :: !Text
    , _ecwtAccessToken :: !(Maybe Text)
    , _ecwtUploadType :: !(Maybe Text)
    , _ecwtPayload :: !AdministratorWebTokenSpec
    , _ecwtCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesCreateWebToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ecwtXgafv'
--
-- * 'ecwtUploadProtocol'
--
-- * 'ecwtEnterpriseId'
--
-- * 'ecwtAccessToken'
--
-- * 'ecwtUploadType'
--
-- * 'ecwtPayload'
--
-- * 'ecwtCallback'
enterprisesCreateWebToken
    :: Text -- ^ 'ecwtEnterpriseId'
    -> AdministratorWebTokenSpec -- ^ 'ecwtPayload'
    -> EnterprisesCreateWebToken
enterprisesCreateWebToken pEcwtEnterpriseId_ pEcwtPayload_ =
  EnterprisesCreateWebToken'
    { _ecwtXgafv = Nothing
    , _ecwtUploadProtocol = Nothing
    , _ecwtEnterpriseId = pEcwtEnterpriseId_
    , _ecwtAccessToken = Nothing
    , _ecwtUploadType = Nothing
    , _ecwtPayload = pEcwtPayload_
    , _ecwtCallback = Nothing
    }


-- | V1 error format.
ecwtXgafv :: Lens' EnterprisesCreateWebToken (Maybe Xgafv)
ecwtXgafv
  = lens _ecwtXgafv (\ s a -> s{_ecwtXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ecwtUploadProtocol :: Lens' EnterprisesCreateWebToken (Maybe Text)
ecwtUploadProtocol
  = lens _ecwtUploadProtocol
      (\ s a -> s{_ecwtUploadProtocol = a})

-- | The ID of the enterprise.
ecwtEnterpriseId :: Lens' EnterprisesCreateWebToken Text
ecwtEnterpriseId
  = lens _ecwtEnterpriseId
      (\ s a -> s{_ecwtEnterpriseId = a})

-- | OAuth access token.
ecwtAccessToken :: Lens' EnterprisesCreateWebToken (Maybe Text)
ecwtAccessToken
  = lens _ecwtAccessToken
      (\ s a -> s{_ecwtAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ecwtUploadType :: Lens' EnterprisesCreateWebToken (Maybe Text)
ecwtUploadType
  = lens _ecwtUploadType
      (\ s a -> s{_ecwtUploadType = a})

-- | Multipart request metadata.
ecwtPayload :: Lens' EnterprisesCreateWebToken AdministratorWebTokenSpec
ecwtPayload
  = lens _ecwtPayload (\ s a -> s{_ecwtPayload = a})

-- | JSONP
ecwtCallback :: Lens' EnterprisesCreateWebToken (Maybe Text)
ecwtCallback
  = lens _ecwtCallback (\ s a -> s{_ecwtCallback = a})

instance GoogleRequest EnterprisesCreateWebToken
         where
        type Rs EnterprisesCreateWebToken =
             AdministratorWebToken
        type Scopes EnterprisesCreateWebToken =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesCreateWebToken'{..}
          = go _ecwtEnterpriseId _ecwtXgafv _ecwtUploadProtocol
              _ecwtAccessToken
              _ecwtUploadType
              _ecwtCallback
              (Just AltJSON)
              _ecwtPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesCreateWebTokenResource)
                      mempty
