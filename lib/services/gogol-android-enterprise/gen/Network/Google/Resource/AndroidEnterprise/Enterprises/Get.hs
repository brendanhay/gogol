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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the name and domain of an enterprise.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.get@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Get
    (
    -- * REST Resource
      EnterprisesGetResource

    -- * Creating a Request
    , enterprisesGet
    , EnterprisesGet

    -- * Request Lenses
    , eXgafv
    , eUploadProtocol
    , eEnterpriseId
    , eAccessToken
    , eUploadType
    , eCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.get@ method which the
-- 'EnterprisesGet' request conforms to.
type EnterprisesGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Enterprise

-- | Retrieves the name and domain of an enterprise.
--
-- /See:/ 'enterprisesGet' smart constructor.
data EnterprisesGet =
  EnterprisesGet'
    { _eXgafv :: !(Maybe Xgafv)
    , _eUploadProtocol :: !(Maybe Text)
    , _eEnterpriseId :: !Text
    , _eAccessToken :: !(Maybe Text)
    , _eUploadType :: !(Maybe Text)
    , _eCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eXgafv'
--
-- * 'eUploadProtocol'
--
-- * 'eEnterpriseId'
--
-- * 'eAccessToken'
--
-- * 'eUploadType'
--
-- * 'eCallback'
enterprisesGet
    :: Text -- ^ 'eEnterpriseId'
    -> EnterprisesGet
enterprisesGet pEEnterpriseId_ =
  EnterprisesGet'
    { _eXgafv = Nothing
    , _eUploadProtocol = Nothing
    , _eEnterpriseId = pEEnterpriseId_
    , _eAccessToken = Nothing
    , _eUploadType = Nothing
    , _eCallback = Nothing
    }


-- | V1 error format.
eXgafv :: Lens' EnterprisesGet (Maybe Xgafv)
eXgafv = lens _eXgafv (\ s a -> s{_eXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eUploadProtocol :: Lens' EnterprisesGet (Maybe Text)
eUploadProtocol
  = lens _eUploadProtocol
      (\ s a -> s{_eUploadProtocol = a})

-- | The ID of the enterprise.
eEnterpriseId :: Lens' EnterprisesGet Text
eEnterpriseId
  = lens _eEnterpriseId
      (\ s a -> s{_eEnterpriseId = a})

-- | OAuth access token.
eAccessToken :: Lens' EnterprisesGet (Maybe Text)
eAccessToken
  = lens _eAccessToken (\ s a -> s{_eAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eUploadType :: Lens' EnterprisesGet (Maybe Text)
eUploadType
  = lens _eUploadType (\ s a -> s{_eUploadType = a})

-- | JSONP
eCallback :: Lens' EnterprisesGet (Maybe Text)
eCallback
  = lens _eCallback (\ s a -> s{_eCallback = a})

instance GoogleRequest EnterprisesGet where
        type Rs EnterprisesGet = Enterprise
        type Scopes EnterprisesGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesGet'{..}
          = go _eEnterpriseId _eXgafv _eUploadProtocol
              _eAccessToken
              _eUploadType
              _eCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient (Proxy :: Proxy EnterprisesGetResource)
                      mempty
