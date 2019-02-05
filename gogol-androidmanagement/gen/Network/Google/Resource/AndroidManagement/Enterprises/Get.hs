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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an enterprise.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.get@.
module Network.Google.Resource.AndroidManagement.Enterprises.Get
    (
    -- * REST Resource
      EnterprisesGetResource

    -- * Creating a Request
    , enterprisesGet
    , EnterprisesGet

    -- * Request Lenses
    , egXgafv
    , egUploadProtocol
    , egAccessToken
    , egUploadType
    , egName
    , egCallback
    ) where

import           Network.Google.AndroidManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.get@ method which the
-- 'EnterprisesGet' request conforms to.
type EnterprisesGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Enterprise

-- | Gets an enterprise.
--
-- /See:/ 'enterprisesGet' smart constructor.
data EnterprisesGet = EnterprisesGet'
    { _egXgafv          :: !(Maybe Xgafv)
    , _egUploadProtocol :: !(Maybe Text)
    , _egAccessToken    :: !(Maybe Text)
    , _egUploadType     :: !(Maybe Text)
    , _egName           :: !Text
    , _egCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egXgafv'
--
-- * 'egUploadProtocol'
--
-- * 'egAccessToken'
--
-- * 'egUploadType'
--
-- * 'egName'
--
-- * 'egCallback'
enterprisesGet
    :: Text -- ^ 'egName'
    -> EnterprisesGet
enterprisesGet pEgName_ =
    EnterprisesGet'
    { _egXgafv = Nothing
    , _egUploadProtocol = Nothing
    , _egAccessToken = Nothing
    , _egUploadType = Nothing
    , _egName = pEgName_
    , _egCallback = Nothing
    }

-- | V1 error format.
egXgafv :: Lens' EnterprisesGet (Maybe Xgafv)
egXgafv = lens _egXgafv (\ s a -> s{_egXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
egUploadProtocol :: Lens' EnterprisesGet (Maybe Text)
egUploadProtocol
  = lens _egUploadProtocol
      (\ s a -> s{_egUploadProtocol = a})

-- | OAuth access token.
egAccessToken :: Lens' EnterprisesGet (Maybe Text)
egAccessToken
  = lens _egAccessToken
      (\ s a -> s{_egAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
egUploadType :: Lens' EnterprisesGet (Maybe Text)
egUploadType
  = lens _egUploadType (\ s a -> s{_egUploadType = a})

-- | The name of the enterprise in the form enterprises\/{enterpriseId}.
egName :: Lens' EnterprisesGet Text
egName = lens _egName (\ s a -> s{_egName = a})

-- | JSONP
egCallback :: Lens' EnterprisesGet (Maybe Text)
egCallback
  = lens _egCallback (\ s a -> s{_egCallback = a})

instance GoogleRequest EnterprisesGet where
        type Rs EnterprisesGet = Enterprise
        type Scopes EnterprisesGet =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesGet'{..}
          = go _egName _egXgafv _egUploadProtocol
              _egAccessToken
              _egUploadType
              _egCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient (Proxy :: Proxy EnterprisesGetResource)
                      mempty
