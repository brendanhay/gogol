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
-- Module      : Network.Google.Resource.Logging.Locations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a location.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.locations.get@.
module Network.Google.Resource.Logging.Locations.Get
    (
    -- * REST Resource
      LocationsGetResource

    -- * Creating a Request
    , locationsGet
    , LocationsGet

    -- * Request Lenses
    , lgXgafv
    , lgUploadProtocol
    , lgAccessToken
    , lgUploadType
    , lgName
    , lgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.locations.get@ method which the
-- 'LocationsGet' request conforms to.
type LocationsGetResource =
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
-- /See:/ 'locationsGet' smart constructor.
data LocationsGet =
  LocationsGet'
    { _lgXgafv :: !(Maybe Xgafv)
    , _lgUploadProtocol :: !(Maybe Text)
    , _lgAccessToken :: !(Maybe Text)
    , _lgUploadType :: !(Maybe Text)
    , _lgName :: !Text
    , _lgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LocationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgXgafv'
--
-- * 'lgUploadProtocol'
--
-- * 'lgAccessToken'
--
-- * 'lgUploadType'
--
-- * 'lgName'
--
-- * 'lgCallback'
locationsGet
    :: Text -- ^ 'lgName'
    -> LocationsGet
locationsGet pLgName_ =
  LocationsGet'
    { _lgXgafv = Nothing
    , _lgUploadProtocol = Nothing
    , _lgAccessToken = Nothing
    , _lgUploadType = Nothing
    , _lgName = pLgName_
    , _lgCallback = Nothing
    }


-- | V1 error format.
lgXgafv :: Lens' LocationsGet (Maybe Xgafv)
lgXgafv = lens _lgXgafv (\ s a -> s{_lgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
lgUploadProtocol :: Lens' LocationsGet (Maybe Text)
lgUploadProtocol
  = lens _lgUploadProtocol
      (\ s a -> s{_lgUploadProtocol = a})

-- | OAuth access token.
lgAccessToken :: Lens' LocationsGet (Maybe Text)
lgAccessToken
  = lens _lgAccessToken
      (\ s a -> s{_lgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
lgUploadType :: Lens' LocationsGet (Maybe Text)
lgUploadType
  = lens _lgUploadType (\ s a -> s{_lgUploadType = a})

-- | Resource name for the location.
lgName :: Lens' LocationsGet Text
lgName = lens _lgName (\ s a -> s{_lgName = a})

-- | JSONP
lgCallback :: Lens' LocationsGet (Maybe Text)
lgCallback
  = lens _lgCallback (\ s a -> s{_lgCallback = a})

instance GoogleRequest LocationsGet where
        type Rs LocationsGet = Location
        type Scopes LocationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient LocationsGet'{..}
          = go _lgName _lgXgafv _lgUploadProtocol
              _lgAccessToken
              _lgUploadType
              _lgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient (Proxy :: Proxy LocationsGetResource)
                      mempty
