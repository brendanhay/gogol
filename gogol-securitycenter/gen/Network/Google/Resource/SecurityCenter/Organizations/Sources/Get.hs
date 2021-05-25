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
-- Module      : Network.Google.Resource.SecurityCenter.Organizations.Sources.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a source.
--
-- /See:/ <https://console.cloud.google.com/apis/api/securitycenter.googleapis.com/overview Security Command Center API Reference> for @securitycenter.organizations.sources.get@.
module Network.Google.Resource.SecurityCenter.Organizations.Sources.Get
    (
    -- * REST Resource
      OrganizationsSourcesGetResource

    -- * Creating a Request
    , organizationsSourcesGet
    , OrganizationsSourcesGet

    -- * Request Lenses
    , osgXgafv
    , osgUploadProtocol
    , osgAccessToken
    , osgUploadType
    , osgName
    , osgCallback
    ) where

import Network.Google.Prelude
import Network.Google.SecurityCenter.Types

-- | A resource alias for @securitycenter.organizations.sources.get@ method which the
-- 'OrganizationsSourcesGet' request conforms to.
type OrganizationsSourcesGetResource =
     "v1p1beta1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Source

-- | Gets a source.
--
-- /See:/ 'organizationsSourcesGet' smart constructor.
data OrganizationsSourcesGet =
  OrganizationsSourcesGet'
    { _osgXgafv :: !(Maybe Xgafv)
    , _osgUploadProtocol :: !(Maybe Text)
    , _osgAccessToken :: !(Maybe Text)
    , _osgUploadType :: !(Maybe Text)
    , _osgName :: !Text
    , _osgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsSourcesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osgXgafv'
--
-- * 'osgUploadProtocol'
--
-- * 'osgAccessToken'
--
-- * 'osgUploadType'
--
-- * 'osgName'
--
-- * 'osgCallback'
organizationsSourcesGet
    :: Text -- ^ 'osgName'
    -> OrganizationsSourcesGet
organizationsSourcesGet pOsgName_ =
  OrganizationsSourcesGet'
    { _osgXgafv = Nothing
    , _osgUploadProtocol = Nothing
    , _osgAccessToken = Nothing
    , _osgUploadType = Nothing
    , _osgName = pOsgName_
    , _osgCallback = Nothing
    }


-- | V1 error format.
osgXgafv :: Lens' OrganizationsSourcesGet (Maybe Xgafv)
osgXgafv = lens _osgXgafv (\ s a -> s{_osgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
osgUploadProtocol :: Lens' OrganizationsSourcesGet (Maybe Text)
osgUploadProtocol
  = lens _osgUploadProtocol
      (\ s a -> s{_osgUploadProtocol = a})

-- | OAuth access token.
osgAccessToken :: Lens' OrganizationsSourcesGet (Maybe Text)
osgAccessToken
  = lens _osgAccessToken
      (\ s a -> s{_osgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
osgUploadType :: Lens' OrganizationsSourcesGet (Maybe Text)
osgUploadType
  = lens _osgUploadType
      (\ s a -> s{_osgUploadType = a})

-- | Required. Relative resource name of the source. Its format is
-- \"organizations\/[organization_id]\/source\/[source_id]\".
osgName :: Lens' OrganizationsSourcesGet Text
osgName = lens _osgName (\ s a -> s{_osgName = a})

-- | JSONP
osgCallback :: Lens' OrganizationsSourcesGet (Maybe Text)
osgCallback
  = lens _osgCallback (\ s a -> s{_osgCallback = a})

instance GoogleRequest OrganizationsSourcesGet where
        type Rs OrganizationsSourcesGet = Source
        type Scopes OrganizationsSourcesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsSourcesGet'{..}
          = go _osgName _osgXgafv _osgUploadProtocol
              _osgAccessToken
              _osgUploadType
              _osgCallback
              (Just AltJSON)
              securityCenterService
          where go
                  = buildClient
                      (Proxy :: Proxy OrganizationsSourcesGetResource)
                      mempty
