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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists stored infoTypes. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.storedInfoTypes.list@.
module Network.Google.Resource.DLP.Projects.Locations.StoredInfoTypes.List
    (
    -- * REST Resource
      ProjectsLocationsStoredInfoTypesListResource

    -- * Creating a Request
    , projectsLocationsStoredInfoTypesList
    , ProjectsLocationsStoredInfoTypesList

    -- * Request Lenses
    , plsitlParent
    , plsitlXgafv
    , plsitlUploadProtocol
    , plsitlOrderBy
    , plsitlAccessToken
    , plsitlUploadType
    , plsitlPageToken
    , plsitlLocationId
    , plsitlPageSize
    , plsitlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.storedInfoTypes.list@ method which the
-- 'ProjectsLocationsStoredInfoTypesList' request conforms to.
type ProjectsLocationsStoredInfoTypesListResource =
     "v2" :>
       Capture "parent" Text :>
         "storedInfoTypes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "locationId" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON]
                                 GooglePrivacyDlpV2ListStoredInfoTypesResponse

-- | Lists stored infoTypes. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'projectsLocationsStoredInfoTypesList' smart constructor.
data ProjectsLocationsStoredInfoTypesList =
  ProjectsLocationsStoredInfoTypesList'
    { _plsitlParent :: !Text
    , _plsitlXgafv :: !(Maybe Xgafv)
    , _plsitlUploadProtocol :: !(Maybe Text)
    , _plsitlOrderBy :: !(Maybe Text)
    , _plsitlAccessToken :: !(Maybe Text)
    , _plsitlUploadType :: !(Maybe Text)
    , _plsitlPageToken :: !(Maybe Text)
    , _plsitlLocationId :: !(Maybe Text)
    , _plsitlPageSize :: !(Maybe (Textual Int32))
    , _plsitlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsStoredInfoTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plsitlParent'
--
-- * 'plsitlXgafv'
--
-- * 'plsitlUploadProtocol'
--
-- * 'plsitlOrderBy'
--
-- * 'plsitlAccessToken'
--
-- * 'plsitlUploadType'
--
-- * 'plsitlPageToken'
--
-- * 'plsitlLocationId'
--
-- * 'plsitlPageSize'
--
-- * 'plsitlCallback'
projectsLocationsStoredInfoTypesList
    :: Text -- ^ 'plsitlParent'
    -> ProjectsLocationsStoredInfoTypesList
projectsLocationsStoredInfoTypesList pPlsitlParent_ =
  ProjectsLocationsStoredInfoTypesList'
    { _plsitlParent = pPlsitlParent_
    , _plsitlXgafv = Nothing
    , _plsitlUploadProtocol = Nothing
    , _plsitlOrderBy = Nothing
    , _plsitlAccessToken = Nothing
    , _plsitlUploadType = Nothing
    , _plsitlPageToken = Nothing
    , _plsitlLocationId = Nothing
    , _plsitlPageSize = Nothing
    , _plsitlCallback = Nothing
    }


-- | Required. Parent resource name. The format of this value varies
-- depending on the scope of the request (project or organization) and
-- whether you have [specified a processing
-- location](https:\/\/cloud.google.com\/dlp\/docs\/specifying-location): +
-- Projects scope, location specified:
-- \`projects\/\`PROJECT_ID\`\/locations\/\`LOCATION_ID + Projects scope,
-- no location specified (defaults to global): \`projects\/\`PROJECT_ID +
-- Organizations scope, location specified:
-- \`organizations\/\`ORG_ID\`\/locations\/\`LOCATION_ID + Organizations
-- scope, no location specified (defaults to global):
-- \`organizations\/\`ORG_ID The following example \`parent\` string
-- specifies a parent project with the identifier \`example-project\`, and
-- specifies the \`europe-west3\` location for processing data:
-- parent=projects\/example-project\/locations\/europe-west3
plsitlParent :: Lens' ProjectsLocationsStoredInfoTypesList Text
plsitlParent
  = lens _plsitlParent (\ s a -> s{_plsitlParent = a})

-- | V1 error format.
plsitlXgafv :: Lens' ProjectsLocationsStoredInfoTypesList (Maybe Xgafv)
plsitlXgafv
  = lens _plsitlXgafv (\ s a -> s{_plsitlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plsitlUploadProtocol :: Lens' ProjectsLocationsStoredInfoTypesList (Maybe Text)
plsitlUploadProtocol
  = lens _plsitlUploadProtocol
      (\ s a -> s{_plsitlUploadProtocol = a})

-- | Comma separated list of fields to order by, followed by \`asc\` or
-- \`desc\` postfix. This list is case-insensitive, default sorting order
-- is ascending, redundant space characters are insignificant. Example:
-- \`name asc, display_name, create_time desc\` Supported fields are: -
-- \`create_time\`: corresponds to time the most recent version of the
-- resource was created. - \`state\`: corresponds to the state of the
-- resource. - \`name\`: corresponds to resource name. - \`display_name\`:
-- corresponds to info type\'s display name.
plsitlOrderBy :: Lens' ProjectsLocationsStoredInfoTypesList (Maybe Text)
plsitlOrderBy
  = lens _plsitlOrderBy
      (\ s a -> s{_plsitlOrderBy = a})

-- | OAuth access token.
plsitlAccessToken :: Lens' ProjectsLocationsStoredInfoTypesList (Maybe Text)
plsitlAccessToken
  = lens _plsitlAccessToken
      (\ s a -> s{_plsitlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plsitlUploadType :: Lens' ProjectsLocationsStoredInfoTypesList (Maybe Text)
plsitlUploadType
  = lens _plsitlUploadType
      (\ s a -> s{_plsitlUploadType = a})

-- | Page token to continue retrieval. Comes from previous call to
-- \`ListStoredInfoTypes\`.
plsitlPageToken :: Lens' ProjectsLocationsStoredInfoTypesList (Maybe Text)
plsitlPageToken
  = lens _plsitlPageToken
      (\ s a -> s{_plsitlPageToken = a})

-- | Deprecated. This field has no effect.
plsitlLocationId :: Lens' ProjectsLocationsStoredInfoTypesList (Maybe Text)
plsitlLocationId
  = lens _plsitlLocationId
      (\ s a -> s{_plsitlLocationId = a})

-- | Size of the page, can be limited by server. If zero server returns a
-- page of max size 100.
plsitlPageSize :: Lens' ProjectsLocationsStoredInfoTypesList (Maybe Int32)
plsitlPageSize
  = lens _plsitlPageSize
      (\ s a -> s{_plsitlPageSize = a})
      . mapping _Coerce

-- | JSONP
plsitlCallback :: Lens' ProjectsLocationsStoredInfoTypesList (Maybe Text)
plsitlCallback
  = lens _plsitlCallback
      (\ s a -> s{_plsitlCallback = a})

instance GoogleRequest
           ProjectsLocationsStoredInfoTypesList
         where
        type Rs ProjectsLocationsStoredInfoTypesList =
             GooglePrivacyDlpV2ListStoredInfoTypesResponse
        type Scopes ProjectsLocationsStoredInfoTypesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsStoredInfoTypesList'{..}
          = go _plsitlParent _plsitlXgafv _plsitlUploadProtocol
              _plsitlOrderBy
              _plsitlAccessToken
              _plsitlUploadType
              _plsitlPageToken
              _plsitlLocationId
              _plsitlPageSize
              _plsitlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsStoredInfoTypesListResource)
                      mempty
