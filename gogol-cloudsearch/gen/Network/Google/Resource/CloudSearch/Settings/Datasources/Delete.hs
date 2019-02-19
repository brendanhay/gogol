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
-- Module      : Network.Google.Resource.CloudSearch.Settings.Datasources.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a data source.
--
-- /See:/ <https://gsuite.google.com/products/cloud-search/ Cloud Search API Reference> for @cloudsearch.settings.datasources.delete@.
module Network.Google.Resource.CloudSearch.Settings.Datasources.Delete
    (
    -- * REST Resource
      SettingsDatasourcesDeleteResource

    -- * Creating a Request
    , settingsDatasourcesDelete
    , SettingsDatasourcesDelete

    -- * Request Lenses
    , sddXgafv
    , sddUploadProtocol
    , sddAccessToken
    , sddUploadType
    , sddName
    , sddDebugOptionsEnableDebugging
    , sddCallback
    ) where

import           Network.Google.CloudSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @cloudsearch.settings.datasources.delete@ method which the
-- 'SettingsDatasourcesDelete' request conforms to.
type SettingsDatasourcesDeleteResource =
     "v1" :>
       "settings" :>
         Capture "name" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "debugOptions.enableDebugging" Bool :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes a data source.
--
-- /See:/ 'settingsDatasourcesDelete' smart constructor.
data SettingsDatasourcesDelete =
  SettingsDatasourcesDelete'
    { _sddXgafv                       :: !(Maybe Xgafv)
    , _sddUploadProtocol              :: !(Maybe Text)
    , _sddAccessToken                 :: !(Maybe Text)
    , _sddUploadType                  :: !(Maybe Text)
    , _sddName                        :: !Text
    , _sddDebugOptionsEnableDebugging :: !(Maybe Bool)
    , _sddCallback                    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SettingsDatasourcesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sddXgafv'
--
-- * 'sddUploadProtocol'
--
-- * 'sddAccessToken'
--
-- * 'sddUploadType'
--
-- * 'sddName'
--
-- * 'sddDebugOptionsEnableDebugging'
--
-- * 'sddCallback'
settingsDatasourcesDelete
    :: Text -- ^ 'sddName'
    -> SettingsDatasourcesDelete
settingsDatasourcesDelete pSddName_ =
  SettingsDatasourcesDelete'
    { _sddXgafv = Nothing
    , _sddUploadProtocol = Nothing
    , _sddAccessToken = Nothing
    , _sddUploadType = Nothing
    , _sddName = pSddName_
    , _sddDebugOptionsEnableDebugging = Nothing
    , _sddCallback = Nothing
    }


-- | V1 error format.
sddXgafv :: Lens' SettingsDatasourcesDelete (Maybe Xgafv)
sddXgafv = lens _sddXgafv (\ s a -> s{_sddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sddUploadProtocol :: Lens' SettingsDatasourcesDelete (Maybe Text)
sddUploadProtocol
  = lens _sddUploadProtocol
      (\ s a -> s{_sddUploadProtocol = a})

-- | OAuth access token.
sddAccessToken :: Lens' SettingsDatasourcesDelete (Maybe Text)
sddAccessToken
  = lens _sddAccessToken
      (\ s a -> s{_sddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sddUploadType :: Lens' SettingsDatasourcesDelete (Maybe Text)
sddUploadType
  = lens _sddUploadType
      (\ s a -> s{_sddUploadType = a})

-- | Name of the data source. Format: datasources\/{source_id}.
sddName :: Lens' SettingsDatasourcesDelete Text
sddName = lens _sddName (\ s a -> s{_sddName = a})

-- | If set, the request will enable debugging features of Cloud Search. Only
-- turn on this field, if asked by Google to help with debugging.
sddDebugOptionsEnableDebugging :: Lens' SettingsDatasourcesDelete (Maybe Bool)
sddDebugOptionsEnableDebugging
  = lens _sddDebugOptionsEnableDebugging
      (\ s a -> s{_sddDebugOptionsEnableDebugging = a})

-- | JSONP
sddCallback :: Lens' SettingsDatasourcesDelete (Maybe Text)
sddCallback
  = lens _sddCallback (\ s a -> s{_sddCallback = a})

instance GoogleRequest SettingsDatasourcesDelete
         where
        type Rs SettingsDatasourcesDelete = Operation
        type Scopes SettingsDatasourcesDelete =
             '["https://www.googleapis.com/auth/cloud_search",
               "https://www.googleapis.com/auth/cloud_search.settings",
               "https://www.googleapis.com/auth/cloud_search.settings.indexing"]
        requestClient SettingsDatasourcesDelete'{..}
          = go _sddName _sddXgafv _sddUploadProtocol
              _sddAccessToken
              _sddUploadType
              _sddDebugOptionsEnableDebugging
              _sddCallback
              (Just AltJSON)
              cloudSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy SettingsDatasourcesDeleteResource)
                      mempty
