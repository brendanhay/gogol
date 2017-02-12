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
-- Module      : Network.Google.Resource.Monitoring.Projects.Categories.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new Category.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.categories.create@.
module Network.Google.Resource.Monitoring.Projects.Categories.Create
    (
    -- * REST Resource
      ProjectsCategoriesCreateResource

    -- * Creating a Request
    , projectsCategoriesCreate
    , ProjectsCategoriesCreate

    -- * Request Lenses
    , pccParent
    , pccXgafv
    , pccUploadProtocol
    , pccPp
    , pccAccessToken
    , pccUploadType
    , pccPayload
    , pccBearerToken
    , pccCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.categories.create@ method which the
-- 'ProjectsCategoriesCreate' request conforms to.
type ProjectsCategoriesCreateResource =
     "v3" :>
       Capture "parent" Text :>
         "categories" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Category :> Post '[JSON] Category

-- | Create a new Category.
--
-- /See:/ 'projectsCategoriesCreate' smart constructor.
data ProjectsCategoriesCreate = ProjectsCategoriesCreate'
    { _pccParent         :: !Text
    , _pccXgafv          :: !(Maybe Xgafv)
    , _pccUploadProtocol :: !(Maybe Text)
    , _pccPp             :: !Bool
    , _pccAccessToken    :: !(Maybe Text)
    , _pccUploadType     :: !(Maybe Text)
    , _pccPayload        :: !Category
    , _pccBearerToken    :: !(Maybe Text)
    , _pccCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsCategoriesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pccParent'
--
-- * 'pccXgafv'
--
-- * 'pccUploadProtocol'
--
-- * 'pccPp'
--
-- * 'pccAccessToken'
--
-- * 'pccUploadType'
--
-- * 'pccPayload'
--
-- * 'pccBearerToken'
--
-- * 'pccCallback'
projectsCategoriesCreate
    :: Text -- ^ 'pccParent'
    -> Category -- ^ 'pccPayload'
    -> ProjectsCategoriesCreate
projectsCategoriesCreate pPccParent_ pPccPayload_ =
    ProjectsCategoriesCreate'
    { _pccParent = pPccParent_
    , _pccXgafv = Nothing
    , _pccUploadProtocol = Nothing
    , _pccPp = True
    , _pccAccessToken = Nothing
    , _pccUploadType = Nothing
    , _pccPayload = pPccPayload_
    , _pccBearerToken = Nothing
    , _pccCallback = Nothing
    }

-- | Resource parent of the project to get. Resource parent form is
-- projects\/{project_id_or_number}.
pccParent :: Lens' ProjectsCategoriesCreate Text
pccParent
  = lens _pccParent (\ s a -> s{_pccParent = a})

-- | V1 error format.
pccXgafv :: Lens' ProjectsCategoriesCreate (Maybe Xgafv)
pccXgafv = lens _pccXgafv (\ s a -> s{_pccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pccUploadProtocol :: Lens' ProjectsCategoriesCreate (Maybe Text)
pccUploadProtocol
  = lens _pccUploadProtocol
      (\ s a -> s{_pccUploadProtocol = a})

-- | Pretty-print response.
pccPp :: Lens' ProjectsCategoriesCreate Bool
pccPp = lens _pccPp (\ s a -> s{_pccPp = a})

-- | OAuth access token.
pccAccessToken :: Lens' ProjectsCategoriesCreate (Maybe Text)
pccAccessToken
  = lens _pccAccessToken
      (\ s a -> s{_pccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pccUploadType :: Lens' ProjectsCategoriesCreate (Maybe Text)
pccUploadType
  = lens _pccUploadType
      (\ s a -> s{_pccUploadType = a})

-- | Multipart request metadata.
pccPayload :: Lens' ProjectsCategoriesCreate Category
pccPayload
  = lens _pccPayload (\ s a -> s{_pccPayload = a})

-- | OAuth bearer token.
pccBearerToken :: Lens' ProjectsCategoriesCreate (Maybe Text)
pccBearerToken
  = lens _pccBearerToken
      (\ s a -> s{_pccBearerToken = a})

-- | JSONP
pccCallback :: Lens' ProjectsCategoriesCreate (Maybe Text)
pccCallback
  = lens _pccCallback (\ s a -> s{_pccCallback = a})

instance GoogleRequest ProjectsCategoriesCreate where
        type Rs ProjectsCategoriesCreate = Category
        type Scopes ProjectsCategoriesCreate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsCategoriesCreate'{..}
          = go _pccParent _pccXgafv _pccUploadProtocol
              (Just _pccPp)
              _pccAccessToken
              _pccUploadType
              _pccBearerToken
              _pccCallback
              (Just AltJSON)
              _pccPayload
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsCategoriesCreateResource)
                      mempty
