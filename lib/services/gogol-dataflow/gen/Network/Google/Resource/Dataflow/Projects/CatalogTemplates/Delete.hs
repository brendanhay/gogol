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
-- Module      : Network.Google.Resource.Dataflow.Projects.CatalogTemplates.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing Template. Do nothing if Template does not exist.
--
-- /See:/ <https://cloud.google.com/dataflow Dataflow API Reference> for @dataflow.projects.catalogTemplates.delete@.
module Network.Google.Resource.Dataflow.Projects.CatalogTemplates.Delete
    (
    -- * REST Resource
      ProjectsCatalogTemplatesDeleteResource

    -- * Creating a Request
    , projectsCatalogTemplatesDelete
    , ProjectsCatalogTemplatesDelete

    -- * Request Lenses
    , pctdXgafv
    , pctdUploadProtocol
    , pctdAccessToken
    , pctdUploadType
    , pctdName
    , pctdCallback
    ) where

import Network.Google.Dataflow.Types
import Network.Google.Prelude

-- | A resource alias for @dataflow.projects.catalogTemplates.delete@ method which the
-- 'ProjectsCatalogTemplatesDelete' request conforms to.
type ProjectsCatalogTemplatesDeleteResource =
     "v1b3" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes an existing Template. Do nothing if Template does not exist.
--
-- /See:/ 'projectsCatalogTemplatesDelete' smart constructor.
data ProjectsCatalogTemplatesDelete =
  ProjectsCatalogTemplatesDelete'
    { _pctdXgafv :: !(Maybe Xgafv)
    , _pctdUploadProtocol :: !(Maybe Text)
    , _pctdAccessToken :: !(Maybe Text)
    , _pctdUploadType :: !(Maybe Text)
    , _pctdName :: !Text
    , _pctdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsCatalogTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pctdXgafv'
--
-- * 'pctdUploadProtocol'
--
-- * 'pctdAccessToken'
--
-- * 'pctdUploadType'
--
-- * 'pctdName'
--
-- * 'pctdCallback'
projectsCatalogTemplatesDelete
    :: Text -- ^ 'pctdName'
    -> ProjectsCatalogTemplatesDelete
projectsCatalogTemplatesDelete pPctdName_ =
  ProjectsCatalogTemplatesDelete'
    { _pctdXgafv = Nothing
    , _pctdUploadProtocol = Nothing
    , _pctdAccessToken = Nothing
    , _pctdUploadType = Nothing
    , _pctdName = pPctdName_
    , _pctdCallback = Nothing
    }


-- | V1 error format.
pctdXgafv :: Lens' ProjectsCatalogTemplatesDelete (Maybe Xgafv)
pctdXgafv
  = lens _pctdXgafv (\ s a -> s{_pctdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pctdUploadProtocol :: Lens' ProjectsCatalogTemplatesDelete (Maybe Text)
pctdUploadProtocol
  = lens _pctdUploadProtocol
      (\ s a -> s{_pctdUploadProtocol = a})

-- | OAuth access token.
pctdAccessToken :: Lens' ProjectsCatalogTemplatesDelete (Maybe Text)
pctdAccessToken
  = lens _pctdAccessToken
      (\ s a -> s{_pctdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pctdUploadType :: Lens' ProjectsCatalogTemplatesDelete (Maybe Text)
pctdUploadType
  = lens _pctdUploadType
      (\ s a -> s{_pctdUploadType = a})

-- | name includes project_id and display_name. Delete by project_id(pid1)
-- and display_name(tid1). Format:
-- projects\/{pid1}\/catalogTemplates\/{tid1}
pctdName :: Lens' ProjectsCatalogTemplatesDelete Text
pctdName = lens _pctdName (\ s a -> s{_pctdName = a})

-- | JSONP
pctdCallback :: Lens' ProjectsCatalogTemplatesDelete (Maybe Text)
pctdCallback
  = lens _pctdCallback (\ s a -> s{_pctdCallback = a})

instance GoogleRequest ProjectsCatalogTemplatesDelete
         where
        type Rs ProjectsCatalogTemplatesDelete = Empty
        type Scopes ProjectsCatalogTemplatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/userinfo.email"]
        requestClient ProjectsCatalogTemplatesDelete'{..}
          = go _pctdName _pctdXgafv _pctdUploadProtocol
              _pctdAccessToken
              _pctdUploadType
              _pctdCallback
              (Just AltJSON)
              dataflowService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsCatalogTemplatesDeleteResource)
                      mempty
