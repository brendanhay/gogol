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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.SetAccount
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the account that will be used to authenticate to the API as the
-- enterprise.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.setAccount@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.SetAccount
    (
    -- * REST Resource
      EnterprisesSetAccountResource

    -- * Creating a Request
    , enterprisesSetAccount
    , EnterprisesSetAccount

    -- * Request Lenses
    , esaXgafv
    , esaUploadProtocol
    , esaEnterpriseId
    , esaAccessToken
    , esaUploadType
    , esaPayload
    , esaCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.setAccount@ method which the
-- 'EnterprisesSetAccount' request conforms to.
type EnterprisesSetAccountResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "account" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] EnterpriseAccount :>
                             Put '[JSON] EnterpriseAccount

-- | Sets the account that will be used to authenticate to the API as the
-- enterprise.
--
-- /See:/ 'enterprisesSetAccount' smart constructor.
data EnterprisesSetAccount =
  EnterprisesSetAccount'
    { _esaXgafv :: !(Maybe Xgafv)
    , _esaUploadProtocol :: !(Maybe Text)
    , _esaEnterpriseId :: !Text
    , _esaAccessToken :: !(Maybe Text)
    , _esaUploadType :: !(Maybe Text)
    , _esaPayload :: !EnterpriseAccount
    , _esaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesSetAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esaXgafv'
--
-- * 'esaUploadProtocol'
--
-- * 'esaEnterpriseId'
--
-- * 'esaAccessToken'
--
-- * 'esaUploadType'
--
-- * 'esaPayload'
--
-- * 'esaCallback'
enterprisesSetAccount
    :: Text -- ^ 'esaEnterpriseId'
    -> EnterpriseAccount -- ^ 'esaPayload'
    -> EnterprisesSetAccount
enterprisesSetAccount pEsaEnterpriseId_ pEsaPayload_ =
  EnterprisesSetAccount'
    { _esaXgafv = Nothing
    , _esaUploadProtocol = Nothing
    , _esaEnterpriseId = pEsaEnterpriseId_
    , _esaAccessToken = Nothing
    , _esaUploadType = Nothing
    , _esaPayload = pEsaPayload_
    , _esaCallback = Nothing
    }


-- | V1 error format.
esaXgafv :: Lens' EnterprisesSetAccount (Maybe Xgafv)
esaXgafv = lens _esaXgafv (\ s a -> s{_esaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
esaUploadProtocol :: Lens' EnterprisesSetAccount (Maybe Text)
esaUploadProtocol
  = lens _esaUploadProtocol
      (\ s a -> s{_esaUploadProtocol = a})

-- | The ID of the enterprise.
esaEnterpriseId :: Lens' EnterprisesSetAccount Text
esaEnterpriseId
  = lens _esaEnterpriseId
      (\ s a -> s{_esaEnterpriseId = a})

-- | OAuth access token.
esaAccessToken :: Lens' EnterprisesSetAccount (Maybe Text)
esaAccessToken
  = lens _esaAccessToken
      (\ s a -> s{_esaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
esaUploadType :: Lens' EnterprisesSetAccount (Maybe Text)
esaUploadType
  = lens _esaUploadType
      (\ s a -> s{_esaUploadType = a})

-- | Multipart request metadata.
esaPayload :: Lens' EnterprisesSetAccount EnterpriseAccount
esaPayload
  = lens _esaPayload (\ s a -> s{_esaPayload = a})

-- | JSONP
esaCallback :: Lens' EnterprisesSetAccount (Maybe Text)
esaCallback
  = lens _esaCallback (\ s a -> s{_esaCallback = a})

instance GoogleRequest EnterprisesSetAccount where
        type Rs EnterprisesSetAccount = EnterpriseAccount
        type Scopes EnterprisesSetAccount =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesSetAccount'{..}
          = go _esaEnterpriseId _esaXgafv _esaUploadProtocol
              _esaAccessToken
              _esaUploadType
              _esaCallback
              (Just AltJSON)
              _esaPayload
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesSetAccountResource)
                      mempty
