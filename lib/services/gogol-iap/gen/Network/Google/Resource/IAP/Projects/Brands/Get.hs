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
-- Module      : Network.Google.Resource.IAP.Projects.Brands.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the OAuth brand of the project.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.get@.
module Network.Google.Resource.IAP.Projects.Brands.Get
    (
    -- * REST Resource
      ProjectsBrandsGetResource

    -- * Creating a Request
    , projectsBrandsGet
    , ProjectsBrandsGet

    -- * Request Lenses
    , pbgXgafv
    , pbgUploadProtocol
    , pbgAccessToken
    , pbgUploadType
    , pbgName
    , pbgCallback
    ) where

import Network.Google.IAP.Types
import Network.Google.Prelude

-- | A resource alias for @iap.projects.brands.get@ method which the
-- 'ProjectsBrandsGet' request conforms to.
type ProjectsBrandsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Brand

-- | Retrieves the OAuth brand of the project.
--
-- /See:/ 'projectsBrandsGet' smart constructor.
data ProjectsBrandsGet =
  ProjectsBrandsGet'
    { _pbgXgafv :: !(Maybe Xgafv)
    , _pbgUploadProtocol :: !(Maybe Text)
    , _pbgAccessToken :: !(Maybe Text)
    , _pbgUploadType :: !(Maybe Text)
    , _pbgName :: !Text
    , _pbgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsBrandsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbgXgafv'
--
-- * 'pbgUploadProtocol'
--
-- * 'pbgAccessToken'
--
-- * 'pbgUploadType'
--
-- * 'pbgName'
--
-- * 'pbgCallback'
projectsBrandsGet
    :: Text -- ^ 'pbgName'
    -> ProjectsBrandsGet
projectsBrandsGet pPbgName_ =
  ProjectsBrandsGet'
    { _pbgXgafv = Nothing
    , _pbgUploadProtocol = Nothing
    , _pbgAccessToken = Nothing
    , _pbgUploadType = Nothing
    , _pbgName = pPbgName_
    , _pbgCallback = Nothing
    }


-- | V1 error format.
pbgXgafv :: Lens' ProjectsBrandsGet (Maybe Xgafv)
pbgXgafv = lens _pbgXgafv (\ s a -> s{_pbgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbgUploadProtocol :: Lens' ProjectsBrandsGet (Maybe Text)
pbgUploadProtocol
  = lens _pbgUploadProtocol
      (\ s a -> s{_pbgUploadProtocol = a})

-- | OAuth access token.
pbgAccessToken :: Lens' ProjectsBrandsGet (Maybe Text)
pbgAccessToken
  = lens _pbgAccessToken
      (\ s a -> s{_pbgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbgUploadType :: Lens' ProjectsBrandsGet (Maybe Text)
pbgUploadType
  = lens _pbgUploadType
      (\ s a -> s{_pbgUploadType = a})

-- | Required. Name of the brand to be fetched. In the following format:
-- projects\/{project_number\/id}\/brands\/{brand}.
pbgName :: Lens' ProjectsBrandsGet Text
pbgName = lens _pbgName (\ s a -> s{_pbgName = a})

-- | JSONP
pbgCallback :: Lens' ProjectsBrandsGet (Maybe Text)
pbgCallback
  = lens _pbgCallback (\ s a -> s{_pbgCallback = a})

instance GoogleRequest ProjectsBrandsGet where
        type Rs ProjectsBrandsGet = Brand
        type Scopes ProjectsBrandsGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsBrandsGet'{..}
          = go _pbgName _pbgXgafv _pbgUploadProtocol
              _pbgAccessToken
              _pbgUploadType
              _pbgCallback
              (Just AltJSON)
              iAPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsBrandsGetResource)
                      mempty
