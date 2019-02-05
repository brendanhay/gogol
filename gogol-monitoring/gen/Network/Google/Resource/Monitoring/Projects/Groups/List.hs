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
-- Module      : Network.Google.Resource.Monitoring.Projects.Groups.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing groups.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.groups.list@.
module Network.Google.Resource.Monitoring.Projects.Groups.List
    (
    -- * REST Resource
      ProjectsGroupsListResource

    -- * Creating a Request
    , projectsGroupsList
    , ProjectsGroupsList

    -- * Request Lenses
    , pglXgafv
    , pglUploadProtocol
    , pglChildrenOfGroup
    , pglDescendantsOfGroup
    , pglAccessToken
    , pglUploadType
    , pglName
    , pglPageToken
    , pglPageSize
    , pglAncestorsOfGroup
    , pglCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.groups.list@ method which the
-- 'ProjectsGroupsList' request conforms to.
type ProjectsGroupsListResource =
     "v3" :>
       Capture "name" Text :>
         "groups" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "childrenOfGroup" Text :>
                 QueryParam "descendantsOfGroup" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "ancestorsOfGroup" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListGroupsResponse

-- | Lists the existing groups.
--
-- /See:/ 'projectsGroupsList' smart constructor.
data ProjectsGroupsList = ProjectsGroupsList'
    { _pglXgafv              :: !(Maybe Xgafv)
    , _pglUploadProtocol     :: !(Maybe Text)
    , _pglChildrenOfGroup    :: !(Maybe Text)
    , _pglDescendantsOfGroup :: !(Maybe Text)
    , _pglAccessToken        :: !(Maybe Text)
    , _pglUploadType         :: !(Maybe Text)
    , _pglName               :: !Text
    , _pglPageToken          :: !(Maybe Text)
    , _pglPageSize           :: !(Maybe (Textual Int32))
    , _pglAncestorsOfGroup   :: !(Maybe Text)
    , _pglCallback           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGroupsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pglXgafv'
--
-- * 'pglUploadProtocol'
--
-- * 'pglChildrenOfGroup'
--
-- * 'pglDescendantsOfGroup'
--
-- * 'pglAccessToken'
--
-- * 'pglUploadType'
--
-- * 'pglName'
--
-- * 'pglPageToken'
--
-- * 'pglPageSize'
--
-- * 'pglAncestorsOfGroup'
--
-- * 'pglCallback'
projectsGroupsList
    :: Text -- ^ 'pglName'
    -> ProjectsGroupsList
projectsGroupsList pPglName_ =
    ProjectsGroupsList'
    { _pglXgafv = Nothing
    , _pglUploadProtocol = Nothing
    , _pglChildrenOfGroup = Nothing
    , _pglDescendantsOfGroup = Nothing
    , _pglAccessToken = Nothing
    , _pglUploadType = Nothing
    , _pglName = pPglName_
    , _pglPageToken = Nothing
    , _pglPageSize = Nothing
    , _pglAncestorsOfGroup = Nothing
    , _pglCallback = Nothing
    }

-- | V1 error format.
pglXgafv :: Lens' ProjectsGroupsList (Maybe Xgafv)
pglXgafv = lens _pglXgafv (\ s a -> s{_pglXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pglUploadProtocol :: Lens' ProjectsGroupsList (Maybe Text)
pglUploadProtocol
  = lens _pglUploadProtocol
      (\ s a -> s{_pglUploadProtocol = a})

-- | A group name: \"projects\/{project_id_or_number}\/groups\/{group_id}\".
-- Returns groups whose parentName field contains the group name. If no
-- groups have this parent, the results are empty.
pglChildrenOfGroup :: Lens' ProjectsGroupsList (Maybe Text)
pglChildrenOfGroup
  = lens _pglChildrenOfGroup
      (\ s a -> s{_pglChildrenOfGroup = a})

-- | A group name: \"projects\/{project_id_or_number}\/groups\/{group_id}\".
-- Returns the descendants of the specified group. This is a superset of
-- the results returned by the childrenOfGroup filter, and includes
-- children-of-children, and so forth.
pglDescendantsOfGroup :: Lens' ProjectsGroupsList (Maybe Text)
pglDescendantsOfGroup
  = lens _pglDescendantsOfGroup
      (\ s a -> s{_pglDescendantsOfGroup = a})

-- | OAuth access token.
pglAccessToken :: Lens' ProjectsGroupsList (Maybe Text)
pglAccessToken
  = lens _pglAccessToken
      (\ s a -> s{_pglAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pglUploadType :: Lens' ProjectsGroupsList (Maybe Text)
pglUploadType
  = lens _pglUploadType
      (\ s a -> s{_pglUploadType = a})

-- | The project whose groups are to be listed. The format is
-- \"projects\/{project_id_or_number}\".
pglName :: Lens' ProjectsGroupsList Text
pglName = lens _pglName (\ s a -> s{_pglName = a})

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return additional results from the previous method call.
pglPageToken :: Lens' ProjectsGroupsList (Maybe Text)
pglPageToken
  = lens _pglPageToken (\ s a -> s{_pglPageToken = a})

-- | A positive number that is the maximum number of results to return.
pglPageSize :: Lens' ProjectsGroupsList (Maybe Int32)
pglPageSize
  = lens _pglPageSize (\ s a -> s{_pglPageSize = a}) .
      mapping _Coerce

-- | A group name: \"projects\/{project_id_or_number}\/groups\/{group_id}\".
-- Returns groups that are ancestors of the specified group. The groups are
-- returned in order, starting with the immediate parent and ending with
-- the most distant ancestor. If the specified group has no immediate
-- parent, the results are empty.
pglAncestorsOfGroup :: Lens' ProjectsGroupsList (Maybe Text)
pglAncestorsOfGroup
  = lens _pglAncestorsOfGroup
      (\ s a -> s{_pglAncestorsOfGroup = a})

-- | JSONP
pglCallback :: Lens' ProjectsGroupsList (Maybe Text)
pglCallback
  = lens _pglCallback (\ s a -> s{_pglCallback = a})

instance GoogleRequest ProjectsGroupsList where
        type Rs ProjectsGroupsList = ListGroupsResponse
        type Scopes ProjectsGroupsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ProjectsGroupsList'{..}
          = go _pglName _pglXgafv _pglUploadProtocol
              _pglChildrenOfGroup
              _pglDescendantsOfGroup
              _pglAccessToken
              _pglUploadType
              _pglPageToken
              _pglPageSize
              _pglAncestorsOfGroup
              _pglCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGroupsListResource)
                      mempty
