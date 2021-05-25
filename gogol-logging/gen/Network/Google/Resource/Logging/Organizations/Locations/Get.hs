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
-- Module      : Network.Google.Resource.Logging.Organizations.Locations.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about a location.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.organizations.locations.get@.
module Network.Google.Resource.Logging.Organizations.Locations.Get
    (
    -- * REST Resource
      OrganizationsLocationsGetResource

    -- * Creating a Request
    , organizationsLocationsGet
    , OrganizationsLocationsGet

    -- * Request Lenses
    , olgXgafv
    , olgUploadProtocol
    , olgAccessToken
    , olgUploadType
    , olgName
    , olgCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.organizations.locations.get@ method which the
-- 'OrganizationsLocationsGet' request conforms to.
type OrganizationsLocationsGetResource =
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
-- /See:/ 'organizationsLocationsGet' smart constructor.
data OrganizationsLocationsGet =
  OrganizationsLocationsGet'
    { _olgXgafv :: !(Maybe Xgafv)
    , _olgUploadProtocol :: !(Maybe Text)
    , _olgAccessToken :: !(Maybe Text)
    , _olgUploadType :: !(Maybe Text)
    , _olgName :: !Text
    , _olgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olgXgafv'
--
-- * 'olgUploadProtocol'
--
-- * 'olgAccessToken'
--
-- * 'olgUploadType'
--
-- * 'olgName'
--
-- * 'olgCallback'
organizationsLocationsGet
    :: Text -- ^ 'olgName'
    -> OrganizationsLocationsGet
organizationsLocationsGet pOlgName_ =
  OrganizationsLocationsGet'
    { _olgXgafv = Nothing
    , _olgUploadProtocol = Nothing
    , _olgAccessToken = Nothing
    , _olgUploadType = Nothing
    , _olgName = pOlgName_
    , _olgCallback = Nothing
    }


-- | V1 error format.
olgXgafv :: Lens' OrganizationsLocationsGet (Maybe Xgafv)
olgXgafv = lens _olgXgafv (\ s a -> s{_olgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olgUploadProtocol :: Lens' OrganizationsLocationsGet (Maybe Text)
olgUploadProtocol
  = lens _olgUploadProtocol
      (\ s a -> s{_olgUploadProtocol = a})

-- | OAuth access token.
olgAccessToken :: Lens' OrganizationsLocationsGet (Maybe Text)
olgAccessToken
  = lens _olgAccessToken
      (\ s a -> s{_olgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olgUploadType :: Lens' OrganizationsLocationsGet (Maybe Text)
olgUploadType
  = lens _olgUploadType
      (\ s a -> s{_olgUploadType = a})

-- | Resource name for the location.
olgName :: Lens' OrganizationsLocationsGet Text
olgName = lens _olgName (\ s a -> s{_olgName = a})

-- | JSONP
olgCallback :: Lens' OrganizationsLocationsGet (Maybe Text)
olgCallback
  = lens _olgCallback (\ s a -> s{_olgCallback = a})

instance GoogleRequest OrganizationsLocationsGet
         where
        type Rs OrganizationsLocationsGet = Location
        type Scopes OrganizationsLocationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient OrganizationsLocationsGet'{..}
          = go _olgName _olgXgafv _olgUploadProtocol
              _olgAccessToken
              _olgUploadType
              _olgCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsLocationsGetResource)
                      mempty
