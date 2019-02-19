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
-- Module      : Network.Google.Resource.DLP.Projects.InspectTemplates.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists InspectTemplates. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.inspectTemplates.list@.
module Network.Google.Resource.DLP.Projects.InspectTemplates.List
    (
    -- * REST Resource
      ProjectsInspectTemplatesListResource

    -- * Creating a Request
    , projectsInspectTemplatesList
    , ProjectsInspectTemplatesList

    -- * Request Lenses
    , pitlParent
    , pitlXgafv
    , pitlUploadProtocol
    , pitlOrderBy
    , pitlAccessToken
    , pitlUploadType
    , pitlPageToken
    , pitlPageSize
    , pitlCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.inspectTemplates.list@ method which the
-- 'ProjectsInspectTemplatesList' request conforms to.
type ProjectsInspectTemplatesListResource =
     "v2" :>
       Capture "parent" Text :>
         "inspectTemplates" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               GooglePrivacyDlpV2ListInspectTemplatesResponse

-- | Lists InspectTemplates. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'projectsInspectTemplatesList' smart constructor.
data ProjectsInspectTemplatesList =
  ProjectsInspectTemplatesList'
    { _pitlParent         :: !Text
    , _pitlXgafv          :: !(Maybe Xgafv)
    , _pitlUploadProtocol :: !(Maybe Text)
    , _pitlOrderBy        :: !(Maybe Text)
    , _pitlAccessToken    :: !(Maybe Text)
    , _pitlUploadType     :: !(Maybe Text)
    , _pitlPageToken      :: !(Maybe Text)
    , _pitlPageSize       :: !(Maybe (Textual Int32))
    , _pitlCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsInspectTemplatesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pitlParent'
--
-- * 'pitlXgafv'
--
-- * 'pitlUploadProtocol'
--
-- * 'pitlOrderBy'
--
-- * 'pitlAccessToken'
--
-- * 'pitlUploadType'
--
-- * 'pitlPageToken'
--
-- * 'pitlPageSize'
--
-- * 'pitlCallback'
projectsInspectTemplatesList
    :: Text -- ^ 'pitlParent'
    -> ProjectsInspectTemplatesList
projectsInspectTemplatesList pPitlParent_ =
  ProjectsInspectTemplatesList'
    { _pitlParent = pPitlParent_
    , _pitlXgafv = Nothing
    , _pitlUploadProtocol = Nothing
    , _pitlOrderBy = Nothing
    , _pitlAccessToken = Nothing
    , _pitlUploadType = Nothing
    , _pitlPageToken = Nothing
    , _pitlPageSize = Nothing
    , _pitlCallback = Nothing
    }

-- | The parent resource name, for example projects\/my-project-id or
-- organizations\/my-org-id.
pitlParent :: Lens' ProjectsInspectTemplatesList Text
pitlParent
  = lens _pitlParent (\ s a -> s{_pitlParent = a})

-- | V1 error format.
pitlXgafv :: Lens' ProjectsInspectTemplatesList (Maybe Xgafv)
pitlXgafv
  = lens _pitlXgafv (\ s a -> s{_pitlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pitlUploadProtocol :: Lens' ProjectsInspectTemplatesList (Maybe Text)
pitlUploadProtocol
  = lens _pitlUploadProtocol
      (\ s a -> s{_pitlUploadProtocol = a})

-- | Optional comma separated list of fields to order by, followed by \`asc\`
-- or \`desc\` postfix. This list is case-insensitive, default sorting
-- order is ascending, redundant space characters are insignificant.
-- Example: \`name asc,update_time, create_time desc\` Supported fields
-- are: - \`create_time\`: corresponds to time the template was created. -
-- \`update_time\`: corresponds to time the template was last updated. -
-- \`name\`: corresponds to template\'s name. - \`display_name\`:
-- corresponds to template\'s display name.
pitlOrderBy :: Lens' ProjectsInspectTemplatesList (Maybe Text)
pitlOrderBy
  = lens _pitlOrderBy (\ s a -> s{_pitlOrderBy = a})

-- | OAuth access token.
pitlAccessToken :: Lens' ProjectsInspectTemplatesList (Maybe Text)
pitlAccessToken
  = lens _pitlAccessToken
      (\ s a -> s{_pitlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pitlUploadType :: Lens' ProjectsInspectTemplatesList (Maybe Text)
pitlUploadType
  = lens _pitlUploadType
      (\ s a -> s{_pitlUploadType = a})

-- | Optional page token to continue retrieval. Comes from previous call to
-- \`ListInspectTemplates\`.
pitlPageToken :: Lens' ProjectsInspectTemplatesList (Maybe Text)
pitlPageToken
  = lens _pitlPageToken
      (\ s a -> s{_pitlPageToken = a})

-- | Optional size of the page, can be limited by server. If zero server
-- returns a page of max size 100.
pitlPageSize :: Lens' ProjectsInspectTemplatesList (Maybe Int32)
pitlPageSize
  = lens _pitlPageSize (\ s a -> s{_pitlPageSize = a})
      . mapping _Coerce

-- | JSONP
pitlCallback :: Lens' ProjectsInspectTemplatesList (Maybe Text)
pitlCallback
  = lens _pitlCallback (\ s a -> s{_pitlCallback = a})

instance GoogleRequest ProjectsInspectTemplatesList
         where
        type Rs ProjectsInspectTemplatesList =
             GooglePrivacyDlpV2ListInspectTemplatesResponse
        type Scopes ProjectsInspectTemplatesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsInspectTemplatesList'{..}
          = go _pitlParent _pitlXgafv _pitlUploadProtocol
              _pitlOrderBy
              _pitlAccessToken
              _pitlUploadType
              _pitlPageToken
              _pitlPageSize
              _pitlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsInspectTemplatesListResource)
                      mempty
