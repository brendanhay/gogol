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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.Applications.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets info about an application.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.applications.get@.
module Network.Google.Resource.AndroidManagement.Enterprises.Applications.Get
    (
    -- * REST Resource
      EnterprisesApplicationsGetResource

    -- * Creating a Request
    , enterprisesApplicationsGet
    , EnterprisesApplicationsGet

    -- * Request Lenses
    , eagXgafv
    , eagLanguageCode
    , eagUploadProtocol
    , eagAccessToken
    , eagUploadType
    , eagName
    , eagCallback
    ) where

import           Network.Google.AndroidManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.applications.get@ method which the
-- 'EnterprisesApplicationsGet' request conforms to.
type EnterprisesApplicationsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "languageCode" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Application

-- | Gets info about an application.
--
-- /See:/ 'enterprisesApplicationsGet' smart constructor.
data EnterprisesApplicationsGet =
  EnterprisesApplicationsGet'
    { _eagXgafv          :: !(Maybe Xgafv)
    , _eagLanguageCode   :: !(Maybe Text)
    , _eagUploadProtocol :: !(Maybe Text)
    , _eagAccessToken    :: !(Maybe Text)
    , _eagUploadType     :: !(Maybe Text)
    , _eagName           :: !Text
    , _eagCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EnterprisesApplicationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eagXgafv'
--
-- * 'eagLanguageCode'
--
-- * 'eagUploadProtocol'
--
-- * 'eagAccessToken'
--
-- * 'eagUploadType'
--
-- * 'eagName'
--
-- * 'eagCallback'
enterprisesApplicationsGet
    :: Text -- ^ 'eagName'
    -> EnterprisesApplicationsGet
enterprisesApplicationsGet pEagName_ =
  EnterprisesApplicationsGet'
    { _eagXgafv = Nothing
    , _eagLanguageCode = Nothing
    , _eagUploadProtocol = Nothing
    , _eagAccessToken = Nothing
    , _eagUploadType = Nothing
    , _eagName = pEagName_
    , _eagCallback = Nothing
    }

-- | V1 error format.
eagXgafv :: Lens' EnterprisesApplicationsGet (Maybe Xgafv)
eagXgafv = lens _eagXgafv (\ s a -> s{_eagXgafv = a})

-- | The preferred language for localized application info, as a BCP47 tag
-- (e.g. \"en-US\", \"de\"). If not specified the default language of the
-- application will be used.
eagLanguageCode :: Lens' EnterprisesApplicationsGet (Maybe Text)
eagLanguageCode
  = lens _eagLanguageCode
      (\ s a -> s{_eagLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
eagUploadProtocol :: Lens' EnterprisesApplicationsGet (Maybe Text)
eagUploadProtocol
  = lens _eagUploadProtocol
      (\ s a -> s{_eagUploadProtocol = a})

-- | OAuth access token.
eagAccessToken :: Lens' EnterprisesApplicationsGet (Maybe Text)
eagAccessToken
  = lens _eagAccessToken
      (\ s a -> s{_eagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
eagUploadType :: Lens' EnterprisesApplicationsGet (Maybe Text)
eagUploadType
  = lens _eagUploadType
      (\ s a -> s{_eagUploadType = a})

-- | The name of the application in the form
-- enterprises\/{enterpriseId}\/applications\/{package_name}.
eagName :: Lens' EnterprisesApplicationsGet Text
eagName = lens _eagName (\ s a -> s{_eagName = a})

-- | JSONP
eagCallback :: Lens' EnterprisesApplicationsGet (Maybe Text)
eagCallback
  = lens _eagCallback (\ s a -> s{_eagCallback = a})

instance GoogleRequest EnterprisesApplicationsGet
         where
        type Rs EnterprisesApplicationsGet = Application
        type Scopes EnterprisesApplicationsGet =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesApplicationsGet'{..}
          = go _eagName _eagXgafv _eagLanguageCode
              _eagUploadProtocol
              _eagAccessToken
              _eagUploadType
              _eagCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesApplicationsGetResource)
                      mempty
