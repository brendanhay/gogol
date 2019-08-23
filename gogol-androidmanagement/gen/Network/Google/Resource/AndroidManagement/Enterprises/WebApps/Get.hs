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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a web app.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.webApps.get@.
module Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Get
    (
    -- * REST Resource
      EnterprisesWebAppsGetResource

    -- * Creating a Request
    , enterprisesWebAppsGet
    , EnterprisesWebAppsGet

    -- * Request Lenses
    , ewagXgafv
    , ewagUploadProtocol
    , ewagAccessToken
    , ewagUploadType
    , ewagName
    , ewagCallback
    ) where

import           Network.Google.AndroidManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.webApps.get@ method which the
-- 'EnterprisesWebAppsGet' request conforms to.
type EnterprisesWebAppsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] WebApp

-- | Gets a web app.
--
-- /See:/ 'enterprisesWebAppsGet' smart constructor.
data EnterprisesWebAppsGet =
  EnterprisesWebAppsGet'
    { _ewagXgafv          :: !(Maybe Xgafv)
    , _ewagUploadProtocol :: !(Maybe Text)
    , _ewagAccessToken    :: !(Maybe Text)
    , _ewagUploadType     :: !(Maybe Text)
    , _ewagName           :: !Text
    , _ewagCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesWebAppsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ewagXgafv'
--
-- * 'ewagUploadProtocol'
--
-- * 'ewagAccessToken'
--
-- * 'ewagUploadType'
--
-- * 'ewagName'
--
-- * 'ewagCallback'
enterprisesWebAppsGet
    :: Text -- ^ 'ewagName'
    -> EnterprisesWebAppsGet
enterprisesWebAppsGet pEwagName_ =
  EnterprisesWebAppsGet'
    { _ewagXgafv = Nothing
    , _ewagUploadProtocol = Nothing
    , _ewagAccessToken = Nothing
    , _ewagUploadType = Nothing
    , _ewagName = pEwagName_
    , _ewagCallback = Nothing
    }


-- | V1 error format.
ewagXgafv :: Lens' EnterprisesWebAppsGet (Maybe Xgafv)
ewagXgafv
  = lens _ewagXgafv (\ s a -> s{_ewagXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ewagUploadProtocol :: Lens' EnterprisesWebAppsGet (Maybe Text)
ewagUploadProtocol
  = lens _ewagUploadProtocol
      (\ s a -> s{_ewagUploadProtocol = a})

-- | OAuth access token.
ewagAccessToken :: Lens' EnterprisesWebAppsGet (Maybe Text)
ewagAccessToken
  = lens _ewagAccessToken
      (\ s a -> s{_ewagAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ewagUploadType :: Lens' EnterprisesWebAppsGet (Maybe Text)
ewagUploadType
  = lens _ewagUploadType
      (\ s a -> s{_ewagUploadType = a})

-- | The name of the web app in the form
-- enterprises\/{enterpriseId}\/webApp\/{packageName}.
ewagName :: Lens' EnterprisesWebAppsGet Text
ewagName = lens _ewagName (\ s a -> s{_ewagName = a})

-- | JSONP
ewagCallback :: Lens' EnterprisesWebAppsGet (Maybe Text)
ewagCallback
  = lens _ewagCallback (\ s a -> s{_ewagCallback = a})

instance GoogleRequest EnterprisesWebAppsGet where
        type Rs EnterprisesWebAppsGet = WebApp
        type Scopes EnterprisesWebAppsGet =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesWebAppsGet'{..}
          = go _ewagName _ewagXgafv _ewagUploadProtocol
              _ewagAccessToken
              _ewagUploadType
              _ewagCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesWebAppsGetResource)
                      mempty
