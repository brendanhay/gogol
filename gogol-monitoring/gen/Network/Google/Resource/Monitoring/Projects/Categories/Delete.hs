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
-- Module      : Network.Google.Resource.Monitoring.Projects.Categories.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a Category.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.categories.delete@.
module Network.Google.Resource.Monitoring.Projects.Categories.Delete
    (
    -- * REST Resource
      ProjectsCategoriesDeleteResource

    -- * Creating a Request
    , projectsCategoriesDelete
    , ProjectsCategoriesDelete

    -- * Request Lenses
    , pcdXgafv
    , pcdUploadProtocol
    , pcdPp
    , pcdAccessToken
    , pcdUploadType
    , pcdBearerToken
    , pcdName
    , pcdCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.categories.delete@ method which the
-- 'ProjectsCategoriesDelete' request conforms to.
type ProjectsCategoriesDeleteResource =
     "v3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Delete a Category.
--
-- /See:/ 'projectsCategoriesDelete' smart constructor.
data ProjectsCategoriesDelete = ProjectsCategoriesDelete'
    { _pcdXgafv          :: !(Maybe Xgafv)
    , _pcdUploadProtocol :: !(Maybe Text)
    , _pcdPp             :: !Bool
    , _pcdAccessToken    :: !(Maybe Text)
    , _pcdUploadType     :: !(Maybe Text)
    , _pcdBearerToken    :: !(Maybe Text)
    , _pcdName           :: !Text
    , _pcdCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsCategoriesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcdXgafv'
--
-- * 'pcdUploadProtocol'
--
-- * 'pcdPp'
--
-- * 'pcdAccessToken'
--
-- * 'pcdUploadType'
--
-- * 'pcdBearerToken'
--
-- * 'pcdName'
--
-- * 'pcdCallback'
projectsCategoriesDelete
    :: Text -- ^ 'pcdName'
    -> ProjectsCategoriesDelete
projectsCategoriesDelete pPcdName_ =
    ProjectsCategoriesDelete'
    { _pcdXgafv = Nothing
    , _pcdUploadProtocol = Nothing
    , _pcdPp = True
    , _pcdAccessToken = Nothing
    , _pcdUploadType = Nothing
    , _pcdBearerToken = Nothing
    , _pcdName = pPcdName_
    , _pcdCallback = Nothing
    }

-- | V1 error format.
pcdXgafv :: Lens' ProjectsCategoriesDelete (Maybe Xgafv)
pcdXgafv = lens _pcdXgafv (\ s a -> s{_pcdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcdUploadProtocol :: Lens' ProjectsCategoriesDelete (Maybe Text)
pcdUploadProtocol
  = lens _pcdUploadProtocol
      (\ s a -> s{_pcdUploadProtocol = a})

-- | Pretty-print response.
pcdPp :: Lens' ProjectsCategoriesDelete Bool
pcdPp = lens _pcdPp (\ s a -> s{_pcdPp = a})

-- | OAuth access token.
pcdAccessToken :: Lens' ProjectsCategoriesDelete (Maybe Text)
pcdAccessToken
  = lens _pcdAccessToken
      (\ s a -> s{_pcdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcdUploadType :: Lens' ProjectsCategoriesDelete (Maybe Text)
pcdUploadType
  = lens _pcdUploadType
      (\ s a -> s{_pcdUploadType = a})

-- | OAuth bearer token.
pcdBearerToken :: Lens' ProjectsCategoriesDelete (Maybe Text)
pcdBearerToken
  = lens _pcdBearerToken
      (\ s a -> s{_pcdBearerToken = a})

-- | Resource name of category to delete. Resource name form is
-- projects\/{project_id_or_number}\/categories\/{short_name}.
pcdName :: Lens' ProjectsCategoriesDelete Text
pcdName = lens _pcdName (\ s a -> s{_pcdName = a})

-- | JSONP
pcdCallback :: Lens' ProjectsCategoriesDelete (Maybe Text)
pcdCallback
  = lens _pcdCallback (\ s a -> s{_pcdCallback = a})

instance GoogleRequest ProjectsCategoriesDelete where
        type Rs ProjectsCategoriesDelete = Empty
        type Scopes ProjectsCategoriesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring"]
        requestClient ProjectsCategoriesDelete'{..}
          = go _pcdName _pcdXgafv _pcdUploadProtocol
              (Just _pcdPp)
              _pcdAccessToken
              _pcdUploadType
              _pcdBearerToken
              _pcdCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsCategoriesDeleteResource)
                      mempty
