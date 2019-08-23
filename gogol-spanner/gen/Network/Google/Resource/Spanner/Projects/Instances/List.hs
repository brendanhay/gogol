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
-- Module      : Network.Google.Resource.Spanner.Projects.Instances.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all instances in the given project.
--
-- /See:/ <https://cloud.google.com/spanner/ Cloud Spanner API Reference> for @spanner.projects.instances.list@.
module Network.Google.Resource.Spanner.Projects.Instances.List
    (
    -- * REST Resource
      ProjectsInstancesListResource

    -- * Creating a Request
    , projectsInstancesList
    , ProjectsInstancesList

    -- * Request Lenses
    , pilParent
    , pilXgafv
    , pilUploadProtocol
    , pilAccessToken
    , pilUploadType
    , pilFilter
    , pilPageToken
    , pilPageSize
    , pilCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.Spanner.Types

-- | A resource alias for @spanner.projects.instances.list@ method which the
-- 'ProjectsInstancesList' request conforms to.
type ProjectsInstancesListResource =
     "v1" :>
       Capture "parent" Text :>
         "instances" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListInstancesResponse

-- | Lists all instances in the given project.
--
-- /See:/ 'projectsInstancesList' smart constructor.
data ProjectsInstancesList =
  ProjectsInstancesList'
    { _pilParent         :: !Text
    , _pilXgafv          :: !(Maybe Xgafv)
    , _pilUploadProtocol :: !(Maybe Text)
    , _pilAccessToken    :: !(Maybe Text)
    , _pilUploadType     :: !(Maybe Text)
    , _pilFilter         :: !(Maybe Text)
    , _pilPageToken      :: !(Maybe Text)
    , _pilPageSize       :: !(Maybe (Textual Int32))
    , _pilCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsInstancesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pilParent'
--
-- * 'pilXgafv'
--
-- * 'pilUploadProtocol'
--
-- * 'pilAccessToken'
--
-- * 'pilUploadType'
--
-- * 'pilFilter'
--
-- * 'pilPageToken'
--
-- * 'pilPageSize'
--
-- * 'pilCallback'
projectsInstancesList
    :: Text -- ^ 'pilParent'
    -> ProjectsInstancesList
projectsInstancesList pPilParent_ =
  ProjectsInstancesList'
    { _pilParent = pPilParent_
    , _pilXgafv = Nothing
    , _pilUploadProtocol = Nothing
    , _pilAccessToken = Nothing
    , _pilUploadType = Nothing
    , _pilFilter = Nothing
    , _pilPageToken = Nothing
    , _pilPageSize = Nothing
    , _pilCallback = Nothing
    }


-- | Required. The name of the project for which a list of instances is
-- requested. Values are of the form \`projects\/\`.
pilParent :: Lens' ProjectsInstancesList Text
pilParent
  = lens _pilParent (\ s a -> s{_pilParent = a})

-- | V1 error format.
pilXgafv :: Lens' ProjectsInstancesList (Maybe Xgafv)
pilXgafv = lens _pilXgafv (\ s a -> s{_pilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pilUploadProtocol :: Lens' ProjectsInstancesList (Maybe Text)
pilUploadProtocol
  = lens _pilUploadProtocol
      (\ s a -> s{_pilUploadProtocol = a})

-- | OAuth access token.
pilAccessToken :: Lens' ProjectsInstancesList (Maybe Text)
pilAccessToken
  = lens _pilAccessToken
      (\ s a -> s{_pilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pilUploadType :: Lens' ProjectsInstancesList (Maybe Text)
pilUploadType
  = lens _pilUploadType
      (\ s a -> s{_pilUploadType = a})

-- | An expression for filtering the results of the request. Filter rules are
-- case insensitive. The fields eligible for filtering are: * \`name\` *
-- \`display_name\` * \`labels.key\` where key is the name of a label Some
-- examples of using filters are: * \`name:*\` --> The instance has a name.
-- * \`name:Howl\` --> The instance\'s name contains the string \"howl\". *
-- \`name:HOWL\` --> Equivalent to above. * \`NAME:howl\` --> Equivalent to
-- above. * \`labels.env:*\` --> The instance has the label \"env\". *
-- \`labels.env:dev\` --> The instance has the label \"env\" and the value
-- of the label contains the string \"dev\". * \`name:howl labels.env:dev\`
-- --> The instance\'s name contains \"howl\" and it has the label \"env\"
-- with its value containing \"dev\".
pilFilter :: Lens' ProjectsInstancesList (Maybe Text)
pilFilter
  = lens _pilFilter (\ s a -> s{_pilFilter = a})

-- | If non-empty, \`page_token\` should contain a next_page_token from a
-- previous ListInstancesResponse.
pilPageToken :: Lens' ProjectsInstancesList (Maybe Text)
pilPageToken
  = lens _pilPageToken (\ s a -> s{_pilPageToken = a})

-- | Number of instances to be returned in the response. If 0 or less,
-- defaults to the server\'s maximum allowed page size.
pilPageSize :: Lens' ProjectsInstancesList (Maybe Int32)
pilPageSize
  = lens _pilPageSize (\ s a -> s{_pilPageSize = a}) .
      mapping _Coerce

-- | JSONP
pilCallback :: Lens' ProjectsInstancesList (Maybe Text)
pilCallback
  = lens _pilCallback (\ s a -> s{_pilCallback = a})

instance GoogleRequest ProjectsInstancesList where
        type Rs ProjectsInstancesList = ListInstancesResponse
        type Scopes ProjectsInstancesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/spanner.admin"]
        requestClient ProjectsInstancesList'{..}
          = go _pilParent _pilXgafv _pilUploadProtocol
              _pilAccessToken
              _pilUploadType
              _pilFilter
              _pilPageToken
              _pilPageSize
              _pilCallback
              (Just AltJSON)
              spannerService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInstancesListResource)
                      mempty
