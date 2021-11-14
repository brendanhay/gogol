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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists InspectTemplates. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.inspectTemplates.list@.
module Network.Google.Resource.DLP.Projects.Locations.InspectTemplates.List
    (
    -- * REST Resource
      ProjectsLocationsInspectTemplatesListResource

    -- * Creating a Request
    , projectsLocationsInspectTemplatesList
    , ProjectsLocationsInspectTemplatesList

    -- * Request Lenses
    , plitlParent
    , plitlXgafv
    , plitlUploadProtocol
    , plitlOrderBy
    , plitlAccessToken
    , plitlUploadType
    , plitlPageToken
    , plitlLocationId
    , plitlPageSize
    , plitlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.inspectTemplates.list@ method which the
-- 'ProjectsLocationsInspectTemplatesList' request conforms to.
type ProjectsLocationsInspectTemplatesListResource =
     "v2" :>
       Capture "parent" Text :>
         "inspectTemplates" :>
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
                                 GooglePrivacyDlpV2ListInspectTemplatesResponse

-- | Lists InspectTemplates. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'projectsLocationsInspectTemplatesList' smart constructor.
data ProjectsLocationsInspectTemplatesList =
  ProjectsLocationsInspectTemplatesList'
    { _plitlParent :: !Text
    , _plitlXgafv :: !(Maybe Xgafv)
    , _plitlUploadProtocol :: !(Maybe Text)
    , _plitlOrderBy :: !(Maybe Text)
    , _plitlAccessToken :: !(Maybe Text)
    , _plitlUploadType :: !(Maybe Text)
    , _plitlPageToken :: !(Maybe Text)
    , _plitlLocationId :: !(Maybe Text)
    , _plitlPageSize :: !(Maybe (Textual Int32))
    , _plitlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsInspectTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plitlParent'
--
-- * 'plitlXgafv'
--
-- * 'plitlUploadProtocol'
--
-- * 'plitlOrderBy'
--
-- * 'plitlAccessToken'
--
-- * 'plitlUploadType'
--
-- * 'plitlPageToken'
--
-- * 'plitlLocationId'
--
-- * 'plitlPageSize'
--
-- * 'plitlCallback'
projectsLocationsInspectTemplatesList
    :: Text -- ^ 'plitlParent'
    -> ProjectsLocationsInspectTemplatesList
projectsLocationsInspectTemplatesList pPlitlParent_ =
  ProjectsLocationsInspectTemplatesList'
    { _plitlParent = pPlitlParent_
    , _plitlXgafv = Nothing
    , _plitlUploadProtocol = Nothing
    , _plitlOrderBy = Nothing
    , _plitlAccessToken = Nothing
    , _plitlUploadType = Nothing
    , _plitlPageToken = Nothing
    , _plitlLocationId = Nothing
    , _plitlPageSize = Nothing
    , _plitlCallback = Nothing
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
plitlParent :: Lens' ProjectsLocationsInspectTemplatesList Text
plitlParent
  = lens _plitlParent (\ s a -> s{_plitlParent = a})

-- | V1 error format.
plitlXgafv :: Lens' ProjectsLocationsInspectTemplatesList (Maybe Xgafv)
plitlXgafv
  = lens _plitlXgafv (\ s a -> s{_plitlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
plitlUploadProtocol :: Lens' ProjectsLocationsInspectTemplatesList (Maybe Text)
plitlUploadProtocol
  = lens _plitlUploadProtocol
      (\ s a -> s{_plitlUploadProtocol = a})

-- | Comma separated list of fields to order by, followed by \`asc\` or
-- \`desc\` postfix. This list is case-insensitive, default sorting order
-- is ascending, redundant space characters are insignificant. Example:
-- \`name asc,update_time, create_time desc\` Supported fields are: -
-- \`create_time\`: corresponds to time the template was created. -
-- \`update_time\`: corresponds to time the template was last updated. -
-- \`name\`: corresponds to template\'s name. - \`display_name\`:
-- corresponds to template\'s display name.
plitlOrderBy :: Lens' ProjectsLocationsInspectTemplatesList (Maybe Text)
plitlOrderBy
  = lens _plitlOrderBy (\ s a -> s{_plitlOrderBy = a})

-- | OAuth access token.
plitlAccessToken :: Lens' ProjectsLocationsInspectTemplatesList (Maybe Text)
plitlAccessToken
  = lens _plitlAccessToken
      (\ s a -> s{_plitlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
plitlUploadType :: Lens' ProjectsLocationsInspectTemplatesList (Maybe Text)
plitlUploadType
  = lens _plitlUploadType
      (\ s a -> s{_plitlUploadType = a})

-- | Page token to continue retrieval. Comes from previous call to
-- \`ListInspectTemplates\`.
plitlPageToken :: Lens' ProjectsLocationsInspectTemplatesList (Maybe Text)
plitlPageToken
  = lens _plitlPageToken
      (\ s a -> s{_plitlPageToken = a})

-- | Deprecated. This field has no effect.
plitlLocationId :: Lens' ProjectsLocationsInspectTemplatesList (Maybe Text)
plitlLocationId
  = lens _plitlLocationId
      (\ s a -> s{_plitlLocationId = a})

-- | Size of the page, can be limited by server. If zero server returns a
-- page of max size 100.
plitlPageSize :: Lens' ProjectsLocationsInspectTemplatesList (Maybe Int32)
plitlPageSize
  = lens _plitlPageSize
      (\ s a -> s{_plitlPageSize = a})
      . mapping _Coerce

-- | JSONP
plitlCallback :: Lens' ProjectsLocationsInspectTemplatesList (Maybe Text)
plitlCallback
  = lens _plitlCallback
      (\ s a -> s{_plitlCallback = a})

instance GoogleRequest
           ProjectsLocationsInspectTemplatesList
         where
        type Rs ProjectsLocationsInspectTemplatesList =
             GooglePrivacyDlpV2ListInspectTemplatesResponse
        type Scopes ProjectsLocationsInspectTemplatesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsInspectTemplatesList'{..}
          = go _plitlParent _plitlXgafv _plitlUploadProtocol
              _plitlOrderBy
              _plitlAccessToken
              _plitlUploadType
              _plitlPageToken
              _plitlLocationId
              _plitlPageSize
              _plitlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsLocationsInspectTemplatesListResource)
                      mempty
