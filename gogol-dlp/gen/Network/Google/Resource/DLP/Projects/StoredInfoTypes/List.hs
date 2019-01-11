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
-- Module      : Network.Google.Resource.DLP.Projects.StoredInfoTypes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists stored infoTypes. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.storedInfoTypes.list@.
module Network.Google.Resource.DLP.Projects.StoredInfoTypes.List
    (
    -- * REST Resource
      ProjectsStoredInfoTypesListResource

    -- * Creating a Request
    , projectsStoredInfoTypesList
    , ProjectsStoredInfoTypesList

    -- * Request Lenses
    , psitlParent
    , psitlXgafv
    , psitlUploadProtocol
    , psitlOrderBy
    , psitlAccessToken
    , psitlUploadType
    , psitlPageToken
    , psitlPageSize
    , psitlCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.projects.storedInfoTypes.list@ method which the
-- 'ProjectsStoredInfoTypesList' request conforms to.
type ProjectsStoredInfoTypesListResource =
     "v2" :>
       Capture "parent" Text :>
         "storedInfoTypes" :>
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
                               GooglePrivacyDlpV2ListStoredInfoTypesResponse

-- | Lists stored infoTypes. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to
-- learn more.
--
-- /See:/ 'projectsStoredInfoTypesList' smart constructor.
data ProjectsStoredInfoTypesList = ProjectsStoredInfoTypesList'
    { _psitlParent         :: !Text
    , _psitlXgafv          :: !(Maybe Xgafv)
    , _psitlUploadProtocol :: !(Maybe Text)
    , _psitlOrderBy        :: !(Maybe Text)
    , _psitlAccessToken    :: !(Maybe Text)
    , _psitlUploadType     :: !(Maybe Text)
    , _psitlPageToken      :: !(Maybe Text)
    , _psitlPageSize       :: !(Maybe (Textual Int32))
    , _psitlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsStoredInfoTypesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psitlParent'
--
-- * 'psitlXgafv'
--
-- * 'psitlUploadProtocol'
--
-- * 'psitlOrderBy'
--
-- * 'psitlAccessToken'
--
-- * 'psitlUploadType'
--
-- * 'psitlPageToken'
--
-- * 'psitlPageSize'
--
-- * 'psitlCallback'
projectsStoredInfoTypesList
    :: Text -- ^ 'psitlParent'
    -> ProjectsStoredInfoTypesList
projectsStoredInfoTypesList pPsitlParent_ =
    ProjectsStoredInfoTypesList'
    { _psitlParent = pPsitlParent_
    , _psitlXgafv = Nothing
    , _psitlUploadProtocol = Nothing
    , _psitlOrderBy = Nothing
    , _psitlAccessToken = Nothing
    , _psitlUploadType = Nothing
    , _psitlPageToken = Nothing
    , _psitlPageSize = Nothing
    , _psitlCallback = Nothing
    }

-- | The parent resource name, for example projects\/my-project-id or
-- organizations\/my-org-id.
psitlParent :: Lens' ProjectsStoredInfoTypesList Text
psitlParent
  = lens _psitlParent (\ s a -> s{_psitlParent = a})

-- | V1 error format.
psitlXgafv :: Lens' ProjectsStoredInfoTypesList (Maybe Xgafv)
psitlXgafv
  = lens _psitlXgafv (\ s a -> s{_psitlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psitlUploadProtocol :: Lens' ProjectsStoredInfoTypesList (Maybe Text)
psitlUploadProtocol
  = lens _psitlUploadProtocol
      (\ s a -> s{_psitlUploadProtocol = a})

-- | Optional comma separated list of fields to order by, followed by \`asc\`
-- or \`desc\` postfix. This list is case-insensitive, default sorting
-- order is ascending, redundant space characters are insignificant.
-- Example: \`name asc, display_name, create_time desc\` Supported fields
-- are: - \`create_time\`: corresponds to time the most recent version of
-- the resource was created. - \`state\`: corresponds to the state of the
-- resource. - \`name\`: corresponds to resource name. - \`display_name\`:
-- corresponds to info type\'s display name.
psitlOrderBy :: Lens' ProjectsStoredInfoTypesList (Maybe Text)
psitlOrderBy
  = lens _psitlOrderBy (\ s a -> s{_psitlOrderBy = a})

-- | OAuth access token.
psitlAccessToken :: Lens' ProjectsStoredInfoTypesList (Maybe Text)
psitlAccessToken
  = lens _psitlAccessToken
      (\ s a -> s{_psitlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psitlUploadType :: Lens' ProjectsStoredInfoTypesList (Maybe Text)
psitlUploadType
  = lens _psitlUploadType
      (\ s a -> s{_psitlUploadType = a})

-- | Optional page token to continue retrieval. Comes from previous call to
-- \`ListStoredInfoTypes\`.
psitlPageToken :: Lens' ProjectsStoredInfoTypesList (Maybe Text)
psitlPageToken
  = lens _psitlPageToken
      (\ s a -> s{_psitlPageToken = a})

-- | Optional size of the page, can be limited by server. If zero server
-- returns a page of max size 100.
psitlPageSize :: Lens' ProjectsStoredInfoTypesList (Maybe Int32)
psitlPageSize
  = lens _psitlPageSize
      (\ s a -> s{_psitlPageSize = a})
      . mapping _Coerce

-- | JSONP
psitlCallback :: Lens' ProjectsStoredInfoTypesList (Maybe Text)
psitlCallback
  = lens _psitlCallback
      (\ s a -> s{_psitlCallback = a})

instance GoogleRequest ProjectsStoredInfoTypesList
         where
        type Rs ProjectsStoredInfoTypesList =
             GooglePrivacyDlpV2ListStoredInfoTypesResponse
        type Scopes ProjectsStoredInfoTypesList =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsStoredInfoTypesList'{..}
          = go _psitlParent _psitlXgafv _psitlUploadProtocol
              _psitlOrderBy
              _psitlAccessToken
              _psitlUploadType
              _psitlPageToken
              _psitlPageSize
              _psitlCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsStoredInfoTypesListResource)
                      mempty
