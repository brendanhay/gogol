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
-- Module      : Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists DeidentifyTemplates. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.deidentifyTemplates.list@.
module Network.Google.Resource.DLP.Projects.Locations.DeidentifyTemplates.List
    (
    -- * REST Resource
      ProjectsLocationsDeidentifyTemplatesListResource

    -- * Creating a Request
    , projectsLocationsDeidentifyTemplatesList
    , ProjectsLocationsDeidentifyTemplatesList

    -- * Request Lenses
    , pldtlParent
    , pldtlXgafv
    , pldtlUploadProtocol
    , pldtlOrderBy
    , pldtlAccessToken
    , pldtlUploadType
    , pldtlPageToken
    , pldtlLocationId
    , pldtlPageSize
    , pldtlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.locations.deidentifyTemplates.list@ method which the
-- 'ProjectsLocationsDeidentifyTemplatesList' request conforms to.
type ProjectsLocationsDeidentifyTemplatesListResource
     =
     "v2" :>
       Capture "parent" Text :>
         "deidentifyTemplates" :>
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
                                 GooglePrivacyDlpV2ListDeidentifyTemplatesResponse

-- | Lists DeidentifyTemplates. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'projectsLocationsDeidentifyTemplatesList' smart constructor.
data ProjectsLocationsDeidentifyTemplatesList =
  ProjectsLocationsDeidentifyTemplatesList'
    { _pldtlParent :: !Text
    , _pldtlXgafv :: !(Maybe Xgafv)
    , _pldtlUploadProtocol :: !(Maybe Text)
    , _pldtlOrderBy :: !(Maybe Text)
    , _pldtlAccessToken :: !(Maybe Text)
    , _pldtlUploadType :: !(Maybe Text)
    , _pldtlPageToken :: !(Maybe Text)
    , _pldtlLocationId :: !(Maybe Text)
    , _pldtlPageSize :: !(Maybe (Textual Int32))
    , _pldtlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDeidentifyTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldtlParent'
--
-- * 'pldtlXgafv'
--
-- * 'pldtlUploadProtocol'
--
-- * 'pldtlOrderBy'
--
-- * 'pldtlAccessToken'
--
-- * 'pldtlUploadType'
--
-- * 'pldtlPageToken'
--
-- * 'pldtlLocationId'
--
-- * 'pldtlPageSize'
--
-- * 'pldtlCallback'
projectsLocationsDeidentifyTemplatesList
    :: Text -- ^ 'pldtlParent'
    -> ProjectsLocationsDeidentifyTemplatesList
projectsLocationsDeidentifyTemplatesList pPldtlParent_ =
  ProjectsLocationsDeidentifyTemplatesList'
    { _pldtlParent = pPldtlParent_
    , _pldtlXgafv = Nothing
    , _pldtlUploadProtocol = Nothing
    , _pldtlOrderBy = Nothing
    , _pldtlAccessToken = Nothing
    , _pldtlUploadType = Nothing
    , _pldtlPageToken = Nothing
    , _pldtlLocationId = Nothing
    , _pldtlPageSize = Nothing
    , _pldtlCallback = Nothing
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
pldtlParent :: Lens' ProjectsLocationsDeidentifyTemplatesList Text
pldtlParent
  = lens _pldtlParent (\ s a -> s{_pldtlParent = a})

-- | V1 error format.
pldtlXgafv :: Lens' ProjectsLocationsDeidentifyTemplatesList (Maybe Xgafv)
pldtlXgafv
  = lens _pldtlXgafv (\ s a -> s{_pldtlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldtlUploadProtocol :: Lens' ProjectsLocationsDeidentifyTemplatesList (Maybe Text)
pldtlUploadProtocol
  = lens _pldtlUploadProtocol
      (\ s a -> s{_pldtlUploadProtocol = a})

-- | Comma separated list of fields to order by, followed by \`asc\` or
-- \`desc\` postfix. This list is case-insensitive, default sorting order
-- is ascending, redundant space characters are insignificant. Example:
-- \`name asc,update_time, create_time desc\` Supported fields are: -
-- \`create_time\`: corresponds to time the template was created. -
-- \`update_time\`: corresponds to time the template was last updated. -
-- \`name\`: corresponds to template\'s name. - \`display_name\`:
-- corresponds to template\'s display name.
pldtlOrderBy :: Lens' ProjectsLocationsDeidentifyTemplatesList (Maybe Text)
pldtlOrderBy
  = lens _pldtlOrderBy (\ s a -> s{_pldtlOrderBy = a})

-- | OAuth access token.
pldtlAccessToken :: Lens' ProjectsLocationsDeidentifyTemplatesList (Maybe Text)
pldtlAccessToken
  = lens _pldtlAccessToken
      (\ s a -> s{_pldtlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldtlUploadType :: Lens' ProjectsLocationsDeidentifyTemplatesList (Maybe Text)
pldtlUploadType
  = lens _pldtlUploadType
      (\ s a -> s{_pldtlUploadType = a})

-- | Page token to continue retrieval. Comes from previous call to
-- \`ListDeidentifyTemplates\`.
pldtlPageToken :: Lens' ProjectsLocationsDeidentifyTemplatesList (Maybe Text)
pldtlPageToken
  = lens _pldtlPageToken
      (\ s a -> s{_pldtlPageToken = a})

-- | Deprecated. This field has no effect.
pldtlLocationId :: Lens' ProjectsLocationsDeidentifyTemplatesList (Maybe Text)
pldtlLocationId
  = lens _pldtlLocationId
      (\ s a -> s{_pldtlLocationId = a})

-- | Size of the page, can be limited by server. If zero server returns a
-- page of max size 100.
pldtlPageSize :: Lens' ProjectsLocationsDeidentifyTemplatesList (Maybe Int32)
pldtlPageSize
  = lens _pldtlPageSize
      (\ s a -> s{_pldtlPageSize = a})
      . mapping _Coerce

-- | JSONP
pldtlCallback :: Lens' ProjectsLocationsDeidentifyTemplatesList (Maybe Text)
pldtlCallback
  = lens _pldtlCallback
      (\ s a -> s{_pldtlCallback = a})

instance GoogleRequest
           ProjectsLocationsDeidentifyTemplatesList
         where
        type Rs ProjectsLocationsDeidentifyTemplatesList =
             GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
        type Scopes ProjectsLocationsDeidentifyTemplatesList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDeidentifyTemplatesList'{..}
          = go _pldtlParent _pldtlXgafv _pldtlUploadProtocol
              _pldtlOrderBy
              _pldtlAccessToken
              _pldtlUploadType
              _pldtlPageToken
              _pldtlLocationId
              _pldtlPageSize
              _pldtlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDeidentifyTemplatesListResource)
                      mempty
