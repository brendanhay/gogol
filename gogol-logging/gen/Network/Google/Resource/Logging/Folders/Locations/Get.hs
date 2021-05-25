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
-- Module      : Network.Google.Resource.Logging.Folders.Locations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a location.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.folders.locations.get@.
module Network.Google.Resource.Logging.Folders.Locations.Get
    (
    -- * REST Resource
      FoldersLocationsGetResource

    -- * Creating a Request
    , foldersLocationsGet
    , FoldersLocationsGet

    -- * Request Lenses
    , flgXgafv
    , flgUploadProtocol
    , flgAccessToken
    , flgUploadType
    , flgName
    , flgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.folders.locations.get@ method which the
-- 'FoldersLocationsGet' request conforms to.
type FoldersLocationsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Location

-- | Gets information about a location.
--
-- /See:/ 'foldersLocationsGet' smart constructor.
data FoldersLocationsGet =
  FoldersLocationsGet'
    { _flgXgafv :: !(Maybe Xgafv)
    , _flgUploadProtocol :: !(Maybe Text)
    , _flgAccessToken :: !(Maybe Text)
    , _flgUploadType :: !(Maybe Text)
    , _flgName :: !Text
    , _flgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FoldersLocationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flgXgafv'
--
-- * 'flgUploadProtocol'
--
-- * 'flgAccessToken'
--
-- * 'flgUploadType'
--
-- * 'flgName'
--
-- * 'flgCallback'
foldersLocationsGet
    :: Text -- ^ 'flgName'
    -> FoldersLocationsGet
foldersLocationsGet pFlgName_ =
  FoldersLocationsGet'
    { _flgXgafv = Nothing
    , _flgUploadProtocol = Nothing
    , _flgAccessToken = Nothing
    , _flgUploadType = Nothing
    , _flgName = pFlgName_
    , _flgCallback = Nothing
    }


-- | V1 error format.
flgXgafv :: Lens' FoldersLocationsGet (Maybe Xgafv)
flgXgafv = lens _flgXgafv (\ s a -> s{_flgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
flgUploadProtocol :: Lens' FoldersLocationsGet (Maybe Text)
flgUploadProtocol
  = lens _flgUploadProtocol
      (\ s a -> s{_flgUploadProtocol = a})

-- | OAuth access token.
flgAccessToken :: Lens' FoldersLocationsGet (Maybe Text)
flgAccessToken
  = lens _flgAccessToken
      (\ s a -> s{_flgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
flgUploadType :: Lens' FoldersLocationsGet (Maybe Text)
flgUploadType
  = lens _flgUploadType
      (\ s a -> s{_flgUploadType = a})

-- | Resource name for the location.
flgName :: Lens' FoldersLocationsGet Text
flgName = lens _flgName (\ s a -> s{_flgName = a})

-- | JSONP
flgCallback :: Lens' FoldersLocationsGet (Maybe Text)
flgCallback
  = lens _flgCallback (\ s a -> s{_flgCallback = a})

instance GoogleRequest FoldersLocationsGet where
        type Rs FoldersLocationsGet = Location
        type Scopes FoldersLocationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient FoldersLocationsGet'{..}
          = go _flgName _flgXgafv _flgUploadProtocol
              _flgAccessToken
              _flgUploadType
              _flgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy FoldersLocationsGetResource)
                      mempty
