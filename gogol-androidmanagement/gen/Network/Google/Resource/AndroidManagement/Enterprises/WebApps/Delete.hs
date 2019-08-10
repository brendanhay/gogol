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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a web app.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.webApps.delete@.
module Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Delete
    (
    -- * REST Resource
      EnterprisesWebAppsDeleteResource

    -- * Creating a Request
    , enterprisesWebAppsDelete
    , EnterprisesWebAppsDelete

    -- * Request Lenses
    , ewadXgafv
    , ewadUploadProtocol
    , ewadAccessToken
    , ewadUploadType
    , ewadName
    , ewadCallback
    ) where

import           Network.Google.AndroidManagement.Types
import           Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.webApps.delete@ method which the
-- 'EnterprisesWebAppsDelete' request conforms to.
type EnterprisesWebAppsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a web app.
--
-- /See:/ 'enterprisesWebAppsDelete' smart constructor.
data EnterprisesWebAppsDelete =
  EnterprisesWebAppsDelete'
    { _ewadXgafv          :: !(Maybe Xgafv)
    , _ewadUploadProtocol :: !(Maybe Text)
    , _ewadAccessToken    :: !(Maybe Text)
    , _ewadUploadType     :: !(Maybe Text)
    , _ewadName           :: !Text
    , _ewadCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesWebAppsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ewadXgafv'
--
-- * 'ewadUploadProtocol'
--
-- * 'ewadAccessToken'
--
-- * 'ewadUploadType'
--
-- * 'ewadName'
--
-- * 'ewadCallback'
enterprisesWebAppsDelete
    :: Text -- ^ 'ewadName'
    -> EnterprisesWebAppsDelete
enterprisesWebAppsDelete pEwadName_ =
  EnterprisesWebAppsDelete'
    { _ewadXgafv = Nothing
    , _ewadUploadProtocol = Nothing
    , _ewadAccessToken = Nothing
    , _ewadUploadType = Nothing
    , _ewadName = pEwadName_
    , _ewadCallback = Nothing
    }


-- | V1 error format.
ewadXgafv :: Lens' EnterprisesWebAppsDelete (Maybe Xgafv)
ewadXgafv
  = lens _ewadXgafv (\ s a -> s{_ewadXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ewadUploadProtocol :: Lens' EnterprisesWebAppsDelete (Maybe Text)
ewadUploadProtocol
  = lens _ewadUploadProtocol
      (\ s a -> s{_ewadUploadProtocol = a})

-- | OAuth access token.
ewadAccessToken :: Lens' EnterprisesWebAppsDelete (Maybe Text)
ewadAccessToken
  = lens _ewadAccessToken
      (\ s a -> s{_ewadAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ewadUploadType :: Lens' EnterprisesWebAppsDelete (Maybe Text)
ewadUploadType
  = lens _ewadUploadType
      (\ s a -> s{_ewadUploadType = a})

-- | The name of the web app in the form
-- enterprises\/{enterpriseId}\/webApps\/{packageName}.
ewadName :: Lens' EnterprisesWebAppsDelete Text
ewadName = lens _ewadName (\ s a -> s{_ewadName = a})

-- | JSONP
ewadCallback :: Lens' EnterprisesWebAppsDelete (Maybe Text)
ewadCallback
  = lens _ewadCallback (\ s a -> s{_ewadCallback = a})

instance GoogleRequest EnterprisesWebAppsDelete where
        type Rs EnterprisesWebAppsDelete = Empty
        type Scopes EnterprisesWebAppsDelete =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesWebAppsDelete'{..}
          = go _ewadName _ewadXgafv _ewadUploadProtocol
              _ewadAccessToken
              _ewadUploadType
              _ewadCallback
              (Just AltJSON)
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesWebAppsDeleteResource)
                      mempty
