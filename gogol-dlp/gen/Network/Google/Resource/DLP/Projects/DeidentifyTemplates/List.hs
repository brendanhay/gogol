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
-- Module      : Network.Google.Resource.DLP.Projects.DeidentifyTemplates.List
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
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.deidentifyTemplates.list@.
module Network.Google.Resource.DLP.Projects.DeidentifyTemplates.List
    (
    -- * REST Resource
      ProjectsDeidentifyTemplatesListResource

    -- * Creating a Request
    , projectsDeidentifyTemplatesList
    , ProjectsDeidentifyTemplatesList

    -- * Request Lenses
    , pdtlParent
    , pdtlXgafv
    , pdtlUploadProtocol
    , pdtlOrderBy
    , pdtlAccessToken
    , pdtlUploadType
    , pdtlPageToken
    , pdtlLocationId
    , pdtlPageSize
    , pdtlCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.deidentifyTemplates.list@ method which the
-- 'ProjectsDeidentifyTemplatesList' request conforms to.
type ProjectsDeidentifyTemplatesListResource =
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
-- /See:/ 'projectsDeidentifyTemplatesList' smart constructor.
data ProjectsDeidentifyTemplatesList =
  ProjectsDeidentifyTemplatesList'
    { _pdtlParent :: !Text
    , _pdtlXgafv :: !(Maybe Xgafv)
    , _pdtlUploadProtocol :: !(Maybe Text)
    , _pdtlOrderBy :: !(Maybe Text)
    , _pdtlAccessToken :: !(Maybe Text)
    , _pdtlUploadType :: !(Maybe Text)
    , _pdtlPageToken :: !(Maybe Text)
    , _pdtlLocationId :: !(Maybe Text)
    , _pdtlPageSize :: !(Maybe (Textual Int32))
    , _pdtlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDeidentifyTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdtlParent'
--
-- * 'pdtlXgafv'
--
-- * 'pdtlUploadProtocol'
--
-- * 'pdtlOrderBy'
--
-- * 'pdtlAccessToken'
--
-- * 'pdtlUploadType'
--
-- * 'pdtlPageToken'
--
-- * 'pdtlLocationId'
--
-- * 'pdtlPageSize'
--
-- * 'pdtlCallback'
projectsDeidentifyTemplatesList
    :: Text -- ^ 'pdtlParent'
    -> ProjectsDeidentifyTemplatesList
projectsDeidentifyTemplatesList pPdtlParent_ =
  ProjectsDeidentifyTemplatesList'
    { _pdtlParent = pPdtlParent_
    , _pdtlXgafv = Nothing
    , _pdtlUploadProtocol = Nothing
    , _pdtlOrderBy = Nothing
    , _pdtlAccessToken = Nothing
    , _pdtlUploadType = Nothing
    , _pdtlPageToken = Nothing
    , _pdtlLocationId = Nothing
    , _pdtlPageSize = Nothing
    , _pdtlCallback = Nothing
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
pdtlParent :: Lens' ProjectsDeidentifyTemplatesList Text
pdtlParent
  = lens _pdtlParent (\ s a -> s{_pdtlParent = a})

-- | V1 error format.
pdtlXgafv :: Lens' ProjectsDeidentifyTemplatesList (Maybe Xgafv)
pdtlXgafv
  = lens _pdtlXgafv (\ s a -> s{_pdtlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdtlUploadProtocol :: Lens' ProjectsDeidentifyTemplatesList (Maybe Text)
pdtlUploadProtocol
  = lens _pdtlUploadProtocol
      (\ s a -> s{_pdtlUploadProtocol = a})

-- | Comma separated list of fields to order by, followed by \`asc\` or
-- \`desc\` postfix. This list is case-insensitive, default sorting order
-- is ascending, redundant space characters are insignificant. Example:
-- \`name asc,update_time, create_time desc\` Supported fields are: -
-- \`create_time\`: corresponds to time the template was created. -
-- \`update_time\`: corresponds to time the template was last updated. -
-- \`name\`: corresponds to template\'s name. - \`display_name\`:
-- corresponds to template\'s display name.
pdtlOrderBy :: Lens' ProjectsDeidentifyTemplatesList (Maybe Text)
pdtlOrderBy
  = lens _pdtlOrderBy (\ s a -> s{_pdtlOrderBy = a})

-- | OAuth access token.
pdtlAccessToken :: Lens' ProjectsDeidentifyTemplatesList (Maybe Text)
pdtlAccessToken
  = lens _pdtlAccessToken
      (\ s a -> s{_pdtlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdtlUploadType :: Lens' ProjectsDeidentifyTemplatesList (Maybe Text)
pdtlUploadType
  = lens _pdtlUploadType
      (\ s a -> s{_pdtlUploadType = a})

-- | Page token to continue retrieval. Comes from previous call to
-- \`ListDeidentifyTemplates\`.
pdtlPageToken :: Lens' ProjectsDeidentifyTemplatesList (Maybe Text)
pdtlPageToken
  = lens _pdtlPageToken
      (\ s a -> s{_pdtlPageToken = a})

-- | Deprecated. This field has no effect.
pdtlLocationId :: Lens' ProjectsDeidentifyTemplatesList (Maybe Text)
pdtlLocationId
  = lens _pdtlLocationId
      (\ s a -> s{_pdtlLocationId = a})

-- | Size of the page, can be limited by server. If zero server returns a
-- page of max size 100.
pdtlPageSize :: Lens' ProjectsDeidentifyTemplatesList (Maybe Int32)
pdtlPageSize
  = lens _pdtlPageSize (\ s a -> s{_pdtlPageSize = a})
      . mapping _Coerce

-- | JSONP
pdtlCallback :: Lens' ProjectsDeidentifyTemplatesList (Maybe Text)
pdtlCallback
  = lens _pdtlCallback (\ s a -> s{_pdtlCallback = a})

instance GoogleRequest
           ProjectsDeidentifyTemplatesList
         where
        type Rs ProjectsDeidentifyTemplatesList =
             GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
        type Scopes ProjectsDeidentifyTemplatesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsDeidentifyTemplatesList'{..}
          = go _pdtlParent _pdtlXgafv _pdtlUploadProtocol
              _pdtlOrderBy
              _pdtlAccessToken
              _pdtlUploadType
              _pdtlPageToken
              _pdtlLocationId
              _pdtlPageSize
              _pdtlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDeidentifyTemplatesListResource)
                      mempty
