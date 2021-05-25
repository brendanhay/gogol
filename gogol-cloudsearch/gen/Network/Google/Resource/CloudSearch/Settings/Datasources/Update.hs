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
-- Module      : Network.Google.Resource.CloudSearch.Settings.Datasources.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a datasource. **Note:** This API requires an admin account to
-- execute.
--
-- /See:/ <https://developers.google.com/cloud-search/docs/guides/ Cloud Search API Reference> for @cloudsearch.settings.datasources.update@.
module Network.Google.Resource.CloudSearch.Settings.Datasources.Update
    (
    -- * REST Resource
      SettingsDatasourcesUpdateResource

    -- * Creating a Request
    , settingsDatasourcesUpdate
    , SettingsDatasourcesUpdate

    -- * Request Lenses
    , sduXgafv
    , sduUploadProtocol
    , sduAccessToken
    , sduUploadType
    , sduPayload
    , sduName
    , sduCallback
    ) where

import Network.Google.CloudSearch.Types
import Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.datasources.update@ method which the
-- 'SettingsDatasourcesUpdate' request conforms to.
type SettingsDatasourcesUpdateResource =
     "v1" :>
       "settings" :>
         Capture "name" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] UpdateDataSourceRequest :>
                         Put '[JSON] Operation

-- | Updates a datasource. **Note:** This API requires an admin account to
-- execute.
--
-- /See:/ 'settingsDatasourcesUpdate' smart constructor.
data SettingsDatasourcesUpdate =
  SettingsDatasourcesUpdate'
    { _sduXgafv :: !(Maybe Xgafv)
    , _sduUploadProtocol :: !(Maybe Text)
    , _sduAccessToken :: !(Maybe Text)
    , _sduUploadType :: !(Maybe Text)
    , _sduPayload :: !UpdateDataSourceRequest
    , _sduName :: !Text
    , _sduCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsDatasourcesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sduXgafv'
--
-- * 'sduUploadProtocol'
--
-- * 'sduAccessToken'
--
-- * 'sduUploadType'
--
-- * 'sduPayload'
--
-- * 'sduName'
--
-- * 'sduCallback'
settingsDatasourcesUpdate
    :: UpdateDataSourceRequest -- ^ 'sduPayload'
    -> Text -- ^ 'sduName'
    -> SettingsDatasourcesUpdate
settingsDatasourcesUpdate pSduPayload_ pSduName_ =
  SettingsDatasourcesUpdate'
    { _sduXgafv = Nothing
    , _sduUploadProtocol = Nothing
    , _sduAccessToken = Nothing
    , _sduUploadType = Nothing
    , _sduPayload = pSduPayload_
    , _sduName = pSduName_
    , _sduCallback = Nothing
    }


-- | V1 error format.
sduXgafv :: Lens' SettingsDatasourcesUpdate (Maybe Xgafv)
sduXgafv = lens _sduXgafv (\ s a -> s{_sduXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sduUploadProtocol :: Lens' SettingsDatasourcesUpdate (Maybe Text)
sduUploadProtocol
  = lens _sduUploadProtocol
      (\ s a -> s{_sduUploadProtocol = a})

-- | OAuth access token.
sduAccessToken :: Lens' SettingsDatasourcesUpdate (Maybe Text)
sduAccessToken
  = lens _sduAccessToken
      (\ s a -> s{_sduAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sduUploadType :: Lens' SettingsDatasourcesUpdate (Maybe Text)
sduUploadType
  = lens _sduUploadType
      (\ s a -> s{_sduUploadType = a})

-- | Multipart request metadata.
sduPayload :: Lens' SettingsDatasourcesUpdate UpdateDataSourceRequest
sduPayload
  = lens _sduPayload (\ s a -> s{_sduPayload = a})

-- | Name of the datasource resource. Format: datasources\/{source_id}. The
-- name is ignored when creating a datasource.
sduName :: Lens' SettingsDatasourcesUpdate Text
sduName = lens _sduName (\ s a -> s{_sduName = a})

-- | JSONP
sduCallback :: Lens' SettingsDatasourcesUpdate (Maybe Text)
sduCallback
  = lens _sduCallback (\ s a -> s{_sduCallback = a})

instance GoogleRequest SettingsDatasourcesUpdate
         where
        type Rs SettingsDatasourcesUpdate = Operation
        type Scopes SettingsDatasourcesUpdate =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.indexing"]
        requestClient SettingsDatasourcesUpdate'{..}
          = go _sduName _sduXgafv _sduUploadProtocol
              _sduAccessToken
              _sduUploadType
              _sduCallback
              (Just AltJSON)
              _sduPayload
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy SettingsDatasourcesUpdateResource)
                      mempty
