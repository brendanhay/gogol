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
-- Module      : Network.Google.Resource.PubSub.Projects.Schemas.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists schemas in a project.
--
-- /See:/ <https://cloud.google.com/pubsub/docs Cloud Pub/Sub API Reference> for @pubsub.projects.schemas.list@.
module Network.Google.Resource.PubSub.Projects.Schemas.List
    (
    -- * REST Resource
      ProjectsSchemasListResource

    -- * Creating a Request
    , projectsSchemasList
    , ProjectsSchemasList

    -- * Request Lenses
    , psl1Parent
    , psl1Xgafv
    , psl1UploadProtocol
    , psl1AccessToken
    , psl1UploadType
    , psl1View
    , psl1PageToken
    , psl1PageSize
    , psl1Callback
    ) where

import Network.Google.Prelude
import Network.Google.PubSub.Types

-- | A resource alias for @pubsub.projects.schemas.list@ method which the
-- 'ProjectsSchemasList' request conforms to.
type ProjectsSchemasListResource =
     "v1" :>
       Capture "parent" Text :>
         "schemas" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "view" ProjectsSchemasListView :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListSchemasResponse

-- | Lists schemas in a project.
--
-- /See:/ 'projectsSchemasList' smart constructor.
data ProjectsSchemasList =
  ProjectsSchemasList'
    { _psl1Parent :: !Text
    , _psl1Xgafv :: !(Maybe Xgafv)
    , _psl1UploadProtocol :: !(Maybe Text)
    , _psl1AccessToken :: !(Maybe Text)
    , _psl1UploadType :: !(Maybe Text)
    , _psl1View :: !(Maybe ProjectsSchemasListView)
    , _psl1PageToken :: !(Maybe Text)
    , _psl1PageSize :: !(Maybe (Textual Int32))
    , _psl1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsSchemasList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psl1Parent'
--
-- * 'psl1Xgafv'
--
-- * 'psl1UploadProtocol'
--
-- * 'psl1AccessToken'
--
-- * 'psl1UploadType'
--
-- * 'psl1View'
--
-- * 'psl1PageToken'
--
-- * 'psl1PageSize'
--
-- * 'psl1Callback'
projectsSchemasList
    :: Text -- ^ 'psl1Parent'
    -> ProjectsSchemasList
projectsSchemasList pPsl1Parent_ =
  ProjectsSchemasList'
    { _psl1Parent = pPsl1Parent_
    , _psl1Xgafv = Nothing
    , _psl1UploadProtocol = Nothing
    , _psl1AccessToken = Nothing
    , _psl1UploadType = Nothing
    , _psl1View = Nothing
    , _psl1PageToken = Nothing
    , _psl1PageSize = Nothing
    , _psl1Callback = Nothing
    }


-- | Required. The name of the project in which to list schemas. Format is
-- \`projects\/{project-id}\`.
psl1Parent :: Lens' ProjectsSchemasList Text
psl1Parent
  = lens _psl1Parent (\ s a -> s{_psl1Parent = a})

-- | V1 error format.
psl1Xgafv :: Lens' ProjectsSchemasList (Maybe Xgafv)
psl1Xgafv
  = lens _psl1Xgafv (\ s a -> s{_psl1Xgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psl1UploadProtocol :: Lens' ProjectsSchemasList (Maybe Text)
psl1UploadProtocol
  = lens _psl1UploadProtocol
      (\ s a -> s{_psl1UploadProtocol = a})

-- | OAuth access token.
psl1AccessToken :: Lens' ProjectsSchemasList (Maybe Text)
psl1AccessToken
  = lens _psl1AccessToken
      (\ s a -> s{_psl1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psl1UploadType :: Lens' ProjectsSchemasList (Maybe Text)
psl1UploadType
  = lens _psl1UploadType
      (\ s a -> s{_psl1UploadType = a})

-- | The set of Schema fields to return in the response. If not set, returns
-- Schemas with \`name\` and \`type\`, but not \`definition\`. Set to
-- \`FULL\` to retrieve all fields.
psl1View :: Lens' ProjectsSchemasList (Maybe ProjectsSchemasListView)
psl1View = lens _psl1View (\ s a -> s{_psl1View = a})

-- | The value returned by the last \`ListSchemasResponse\`; indicates that
-- this is a continuation of a prior \`ListSchemas\` call, and that the
-- system should return the next page of data.
psl1PageToken :: Lens' ProjectsSchemasList (Maybe Text)
psl1PageToken
  = lens _psl1PageToken
      (\ s a -> s{_psl1PageToken = a})

-- | Maximum number of schemas to return.
psl1PageSize :: Lens' ProjectsSchemasList (Maybe Int32)
psl1PageSize
  = lens _psl1PageSize (\ s a -> s{_psl1PageSize = a})
      . mapping _Coerce

-- | JSONP
psl1Callback :: Lens' ProjectsSchemasList (Maybe Text)
psl1Callback
  = lens _psl1Callback (\ s a -> s{_psl1Callback = a})

instance GoogleRequest ProjectsSchemasList where
        type Rs ProjectsSchemasList = ListSchemasResponse
        type Scopes ProjectsSchemasList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/pubsub"]
        requestClient ProjectsSchemasList'{..}
          = go _psl1Parent _psl1Xgafv _psl1UploadProtocol
              _psl1AccessToken
              _psl1UploadType
              _psl1View
              _psl1PageToken
              _psl1PageSize
              _psl1Callback
              (Just AltJSON)
              pubSubService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsSchemasListResource)
                      mempty
