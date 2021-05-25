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
-- Module      : Network.Google.Resource.IAP.Projects.Brands.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing brands for the project.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.list@.
module Network.Google.Resource.IAP.Projects.Brands.List
    (
    -- * REST Resource
      ProjectsBrandsListResource

    -- * Creating a Request
    , projectsBrandsList
    , ProjectsBrandsList

    -- * Request Lenses
    , pblParent
    , pblXgafv
    , pblUploadProtocol
    , pblAccessToken
    , pblUploadType
    , pblCallback
    ) where

import Network.Google.IAP.Types
import Network.Google.Prelude

-- | A resource alias for @iap.projects.brands.list@ method which the
-- 'ProjectsBrandsList' request conforms to.
type ProjectsBrandsListResource =
     "v1" :>
       Capture "parent" Text :>
         "brands" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] ListBrandsResponse

-- | Lists the existing brands for the project.
--
-- /See:/ 'projectsBrandsList' smart constructor.
data ProjectsBrandsList =
  ProjectsBrandsList'
    { _pblParent :: !Text
    , _pblXgafv :: !(Maybe Xgafv)
    , _pblUploadProtocol :: !(Maybe Text)
    , _pblAccessToken :: !(Maybe Text)
    , _pblUploadType :: !(Maybe Text)
    , _pblCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsBrandsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pblParent'
--
-- * 'pblXgafv'
--
-- * 'pblUploadProtocol'
--
-- * 'pblAccessToken'
--
-- * 'pblUploadType'
--
-- * 'pblCallback'
projectsBrandsList
    :: Text -- ^ 'pblParent'
    -> ProjectsBrandsList
projectsBrandsList pPblParent_ =
  ProjectsBrandsList'
    { _pblParent = pPblParent_
    , _pblXgafv = Nothing
    , _pblUploadProtocol = Nothing
    , _pblAccessToken = Nothing
    , _pblUploadType = Nothing
    , _pblCallback = Nothing
    }


-- | Required. GCP Project number\/id. In the following format:
-- projects\/{project_number\/id}.
pblParent :: Lens' ProjectsBrandsList Text
pblParent
  = lens _pblParent (\ s a -> s{_pblParent = a})

-- | V1 error format.
pblXgafv :: Lens' ProjectsBrandsList (Maybe Xgafv)
pblXgafv = lens _pblXgafv (\ s a -> s{_pblXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pblUploadProtocol :: Lens' ProjectsBrandsList (Maybe Text)
pblUploadProtocol
  = lens _pblUploadProtocol
      (\ s a -> s{_pblUploadProtocol = a})

-- | OAuth access token.
pblAccessToken :: Lens' ProjectsBrandsList (Maybe Text)
pblAccessToken
  = lens _pblAccessToken
      (\ s a -> s{_pblAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pblUploadType :: Lens' ProjectsBrandsList (Maybe Text)
pblUploadType
  = lens _pblUploadType
      (\ s a -> s{_pblUploadType = a})

-- | JSONP
pblCallback :: Lens' ProjectsBrandsList (Maybe Text)
pblCallback
  = lens _pblCallback (\ s a -> s{_pblCallback = a})

instance GoogleRequest ProjectsBrandsList where
        type Rs ProjectsBrandsList = ListBrandsResponse
        type Scopes ProjectsBrandsList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsBrandsList'{..}
          = go _pblParent _pblXgafv _pblUploadProtocol
              _pblAccessToken
              _pblUploadType
              _pblCallback
              (Just AltJSON)
              iAPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsBrandsListResource)
                      mempty
