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
-- Module      : Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a web app.
--
-- /See:/ <https://developers.google.com/android/management Android Management API Reference> for @androidmanagement.enterprises.webApps.patch@.
module Network.Google.Resource.AndroidManagement.Enterprises.WebApps.Patch
    (
    -- * REST Resource
      EnterprisesWebAppsPatchResource

    -- * Creating a Request
    , enterprisesWebAppsPatch
    , EnterprisesWebAppsPatch

    -- * Request Lenses
    , ewapXgafv
    , ewapUploadProtocol
    , ewapUpdateMask
    , ewapAccessToken
    , ewapUploadType
    , ewapPayload
    , ewapName
    , ewapCallback
    ) where

import Network.Google.AndroidManagement.Types
import Network.Google.Prelude

-- | A resource alias for @androidmanagement.enterprises.webApps.patch@ method which the
-- 'EnterprisesWebAppsPatch' request conforms to.
type EnterprisesWebAppsPatchResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] WebApp :> Patch '[JSON] WebApp

-- | Updates a web app.
--
-- /See:/ 'enterprisesWebAppsPatch' smart constructor.
data EnterprisesWebAppsPatch =
  EnterprisesWebAppsPatch'
    { _ewapXgafv :: !(Maybe Xgafv)
    , _ewapUploadProtocol :: !(Maybe Text)
    , _ewapUpdateMask :: !(Maybe GFieldMask)
    , _ewapAccessToken :: !(Maybe Text)
    , _ewapUploadType :: !(Maybe Text)
    , _ewapPayload :: !WebApp
    , _ewapName :: !Text
    , _ewapCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesWebAppsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ewapXgafv'
--
-- * 'ewapUploadProtocol'
--
-- * 'ewapUpdateMask'
--
-- * 'ewapAccessToken'
--
-- * 'ewapUploadType'
--
-- * 'ewapPayload'
--
-- * 'ewapName'
--
-- * 'ewapCallback'
enterprisesWebAppsPatch
    :: WebApp -- ^ 'ewapPayload'
    -> Text -- ^ 'ewapName'
    -> EnterprisesWebAppsPatch
enterprisesWebAppsPatch pEwapPayload_ pEwapName_ =
  EnterprisesWebAppsPatch'
    { _ewapXgafv = Nothing
    , _ewapUploadProtocol = Nothing
    , _ewapUpdateMask = Nothing
    , _ewapAccessToken = Nothing
    , _ewapUploadType = Nothing
    , _ewapPayload = pEwapPayload_
    , _ewapName = pEwapName_
    , _ewapCallback = Nothing
    }


-- | V1 error format.
ewapXgafv :: Lens' EnterprisesWebAppsPatch (Maybe Xgafv)
ewapXgafv
  = lens _ewapXgafv (\ s a -> s{_ewapXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ewapUploadProtocol :: Lens' EnterprisesWebAppsPatch (Maybe Text)
ewapUploadProtocol
  = lens _ewapUploadProtocol
      (\ s a -> s{_ewapUploadProtocol = a})

-- | The field mask indicating the fields to update. If not set, all
-- modifiable fields will be modified.
ewapUpdateMask :: Lens' EnterprisesWebAppsPatch (Maybe GFieldMask)
ewapUpdateMask
  = lens _ewapUpdateMask
      (\ s a -> s{_ewapUpdateMask = a})

-- | OAuth access token.
ewapAccessToken :: Lens' EnterprisesWebAppsPatch (Maybe Text)
ewapAccessToken
  = lens _ewapAccessToken
      (\ s a -> s{_ewapAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ewapUploadType :: Lens' EnterprisesWebAppsPatch (Maybe Text)
ewapUploadType
  = lens _ewapUploadType
      (\ s a -> s{_ewapUploadType = a})

-- | Multipart request metadata.
ewapPayload :: Lens' EnterprisesWebAppsPatch WebApp
ewapPayload
  = lens _ewapPayload (\ s a -> s{_ewapPayload = a})

-- | The name of the web app in the form
-- enterprises\/{enterpriseId}\/webApps\/{packageName}.
ewapName :: Lens' EnterprisesWebAppsPatch Text
ewapName = lens _ewapName (\ s a -> s{_ewapName = a})

-- | JSONP
ewapCallback :: Lens' EnterprisesWebAppsPatch (Maybe Text)
ewapCallback
  = lens _ewapCallback (\ s a -> s{_ewapCallback = a})

instance GoogleRequest EnterprisesWebAppsPatch where
        type Rs EnterprisesWebAppsPatch = WebApp
        type Scopes EnterprisesWebAppsPatch =
             '["https://www.googleapis.com/auth/androidmanagement"]
        requestClient EnterprisesWebAppsPatch'{..}
          = go _ewapName _ewapXgafv _ewapUploadProtocol
              _ewapUpdateMask
              _ewapAccessToken
              _ewapUploadType
              _ewapCallback
              (Just AltJSON)
              _ewapPayload
              androidManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesWebAppsPatchResource)
                      mempty
