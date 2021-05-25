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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a web app.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.webApps.create@.
module Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Create
    (
    -- * REST Resource
      EnterprisesWebAppsCreateResource

    -- * Creating a Request
    , enterprisesWebAppsCreate
    , EnterprisesWebAppsCreate

    -- * Request Lenses
    , ewacParent
    , ewacXgafv
    , ewacUploadProtocol
    , ewacAccessToken
    , ewacUploadType
    , ewacPayload
    , ewacCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.webApps.create@ method which the
-- 'EnterprisesWebAppsCreate' request conforms to.
type EnterprisesWebAppsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "webApps" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] WebApp :> Post '[JSON] WebApp

-- | Creates a web app.
--
-- /See:/ 'enterprisesWebAppsCreate' smart constructor.
data EnterprisesWebAppsCreate =
  EnterprisesWebAppsCreate'
    { _ewacParent :: !Text
    , _ewacXgafv :: !(Maybe Xgafv)
    , _ewacUploadProtocol :: !(Maybe Text)
    , _ewacAccessToken :: !(Maybe Text)
    , _ewacUploadType :: !(Maybe Text)
    , _ewacPayload :: !WebApp
    , _ewacCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesWebAppsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ewacParent'
--
-- * 'ewacXgafv'
--
-- * 'ewacUploadProtocol'
--
-- * 'ewacAccessToken'
--
-- * 'ewacUploadType'
--
-- * 'ewacPayload'
--
-- * 'ewacCallback'
enterprisesWebAppsCreate
    :: Text -- ^ 'ewacParent'
    -> WebApp -- ^ 'ewacPayload'
    -> EnterprisesWebAppsCreate
enterprisesWebAppsCreate pEwacParent_ pEwacPayload_ =
  EnterprisesWebAppsCreate'
    { _ewacParent = pEwacParent_
    , _ewacXgafv = Nothing
    , _ewacUploadProtocol = Nothing
    , _ewacAccessToken = Nothing
    , _ewacUploadType = Nothing
    , _ewacPayload = pEwacPayload_
    , _ewacCallback = Nothing
    }


-- | The name of the enterprise in the form enterprises\/{enterpriseId}.
ewacParent :: Lens' EnterprisesWebAppsCreate Text
ewacParent
  = lens _ewacParent (\ s a -> s{_ewacParent = a})

-- | V1 error format.
ewacXgafv :: Lens' EnterprisesWebAppsCreate (Maybe Xgafv)
ewacXgafv
  = lens _ewacXgafv (\ s a -> s{_ewacXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ewacUploadProtocol :: Lens' EnterprisesWebAppsCreate (Maybe Text)
ewacUploadProtocol
  = lens _ewacUploadProtocol
      (\ s a -> s{_ewacUploadProtocol = a})

-- | OAuth access token.
ewacAccessToken :: Lens' EnterprisesWebAppsCreate (Maybe Text)
ewacAccessToken
  = lens _ewacAccessToken
      (\ s a -> s{_ewacAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ewacUploadType :: Lens' EnterprisesWebAppsCreate (Maybe Text)
ewacUploadType
  = lens _ewacUploadType
      (\ s a -> s{_ewacUploadType = a})

-- | Multipart request metadata.
ewacPayload :: Lens' EnterprisesWebAppsCreate WebApp
ewacPayload
  = lens _ewacPayload (\ s a -> s{_ewacPayload = a})

-- | JSONP
ewacCallback :: Lens' EnterprisesWebAppsCreate (Maybe Text)
ewacCallback
  = lens _ewacCallback (\ s a -> s{_ewacCallback = a})

instance GoogleRequest EnterprisesWebAppsCreate where
        type Rs EnterprisesWebAppsCreate = WebApp
        type Scopes EnterprisesWebAppsCreate =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesWebAppsCreate'{..}
          = go _ewacParent _ewacXgafv _ewacUploadProtocol
              _ewacAccessToken
              _ewacUploadType
              _ewacCallback
              (Just AltJSON)
              _ewacPayload
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesWebAppsCreateResource)
                      mempty
