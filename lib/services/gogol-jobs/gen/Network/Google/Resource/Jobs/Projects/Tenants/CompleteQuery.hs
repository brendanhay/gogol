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
-- Module      : Network.Google.Resource.Jobs.Projects.Tenants.CompleteQuery
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Completes the specified prefix with keyword suggestions. Intended for
-- use by a job search auto-complete search box.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.tenants.completeQuery@.
module Network.Google.Resource.Jobs.Projects.Tenants.CompleteQuery
    (
    -- * REST Resource
      ProjectsTenantsCompleteQueryResource

    -- * Creating a Request
    , projectsTenantsCompleteQuery
    , ProjectsTenantsCompleteQuery

    -- * Request Lenses
    , ptcqLanguageCodes
    , ptcqXgafv
    , ptcqUploadProtocol
    , ptcqAccessToken
    , ptcqUploadType
    , ptcqTenant
    , ptcqCompany
    , ptcqScope
    , ptcqQuery
    , ptcqType
    , ptcqPageSize
    , ptcqCallback
    ) where

import Network.Google.Jobs.Types
import Network.Google.Prelude

-- | A resource alias for @jobs.projects.tenants.completeQuery@ method which the
-- 'ProjectsTenantsCompleteQuery' request conforms to.
type ProjectsTenantsCompleteQueryResource =
     "v4" :>
       CaptureMode "tenant" "completeQuery" Text :>
         QueryParams "languageCodes" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "company" Text :>
                     QueryParam "scope" ProjectsTenantsCompleteQueryScope
                       :>
                       QueryParam "query" Text :>
                         QueryParam "type" ProjectsTenantsCompleteQueryType :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] CompleteQueryResponse

-- | Completes the specified prefix with keyword suggestions. Intended for
-- use by a job search auto-complete search box.
--
-- /See:/ 'projectsTenantsCompleteQuery' smart constructor.
data ProjectsTenantsCompleteQuery =
  ProjectsTenantsCompleteQuery'
    { _ptcqLanguageCodes :: !(Maybe [Text])
    , _ptcqXgafv :: !(Maybe Xgafv)
    , _ptcqUploadProtocol :: !(Maybe Text)
    , _ptcqAccessToken :: !(Maybe Text)
    , _ptcqUploadType :: !(Maybe Text)
    , _ptcqTenant :: !Text
    , _ptcqCompany :: !(Maybe Text)
    , _ptcqScope :: !(Maybe ProjectsTenantsCompleteQueryScope)
    , _ptcqQuery :: !(Maybe Text)
    , _ptcqType :: !(Maybe ProjectsTenantsCompleteQueryType)
    , _ptcqPageSize :: !(Maybe (Textual Int32))
    , _ptcqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsTenantsCompleteQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptcqLanguageCodes'
--
-- * 'ptcqXgafv'
--
-- * 'ptcqUploadProtocol'
--
-- * 'ptcqAccessToken'
--
-- * 'ptcqUploadType'
--
-- * 'ptcqTenant'
--
-- * 'ptcqCompany'
--
-- * 'ptcqScope'
--
-- * 'ptcqQuery'
--
-- * 'ptcqType'
--
-- * 'ptcqPageSize'
--
-- * 'ptcqCallback'
projectsTenantsCompleteQuery
    :: Text -- ^ 'ptcqTenant'
    -> ProjectsTenantsCompleteQuery
projectsTenantsCompleteQuery pPtcqTenant_ =
  ProjectsTenantsCompleteQuery'
    { _ptcqLanguageCodes = Nothing
    , _ptcqXgafv = Nothing
    , _ptcqUploadProtocol = Nothing
    , _ptcqAccessToken = Nothing
    , _ptcqUploadType = Nothing
    , _ptcqTenant = pPtcqTenant_
    , _ptcqCompany = Nothing
    , _ptcqScope = Nothing
    , _ptcqQuery = Nothing
    , _ptcqType = Nothing
    , _ptcqPageSize = Nothing
    , _ptcqCallback = Nothing
    }


-- | The list of languages of the query. This is the BCP-47 language code,
-- such as \"en-US\" or \"sr-Latn\". For more information, see [Tags for
-- Identifying Languages](https:\/\/tools.ietf.org\/html\/bcp47). The
-- maximum number of allowed characters is 255.
ptcqLanguageCodes :: Lens' ProjectsTenantsCompleteQuery [Text]
ptcqLanguageCodes
  = lens _ptcqLanguageCodes
      (\ s a -> s{_ptcqLanguageCodes = a})
      . _Default
      . _Coerce

-- | V1 error format.
ptcqXgafv :: Lens' ProjectsTenantsCompleteQuery (Maybe Xgafv)
ptcqXgafv
  = lens _ptcqXgafv (\ s a -> s{_ptcqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ptcqUploadProtocol :: Lens' ProjectsTenantsCompleteQuery (Maybe Text)
ptcqUploadProtocol
  = lens _ptcqUploadProtocol
      (\ s a -> s{_ptcqUploadProtocol = a})

-- | OAuth access token.
ptcqAccessToken :: Lens' ProjectsTenantsCompleteQuery (Maybe Text)
ptcqAccessToken
  = lens _ptcqAccessToken
      (\ s a -> s{_ptcqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ptcqUploadType :: Lens' ProjectsTenantsCompleteQuery (Maybe Text)
ptcqUploadType
  = lens _ptcqUploadType
      (\ s a -> s{_ptcqUploadType = a})

-- | Required. Resource name of tenant the completion is performed within.
-- The format is \"projects\/{project_id}\/tenants\/{tenant_id}\", for
-- example, \"projects\/foo\/tenants\/bar\".
ptcqTenant :: Lens' ProjectsTenantsCompleteQuery Text
ptcqTenant
  = lens _ptcqTenant (\ s a -> s{_ptcqTenant = a})

-- | If provided, restricts completion to specified company. The format is
-- \"projects\/{project_id}\/tenants\/{tenant_id}\/companies\/{company_id}\",
-- for example, \"projects\/foo\/tenants\/bar\/companies\/baz\".
ptcqCompany :: Lens' ProjectsTenantsCompleteQuery (Maybe Text)
ptcqCompany
  = lens _ptcqCompany (\ s a -> s{_ptcqCompany = a})

-- | The scope of the completion. The defaults is CompletionScope.PUBLIC.
ptcqScope :: Lens' ProjectsTenantsCompleteQuery (Maybe ProjectsTenantsCompleteQueryScope)
ptcqScope
  = lens _ptcqScope (\ s a -> s{_ptcqScope = a})

-- | Required. The query used to generate suggestions. The maximum number of
-- allowed characters is 255.
ptcqQuery :: Lens' ProjectsTenantsCompleteQuery (Maybe Text)
ptcqQuery
  = lens _ptcqQuery (\ s a -> s{_ptcqQuery = a})

-- | The completion topic. The default is CompletionType.COMBINED.
ptcqType :: Lens' ProjectsTenantsCompleteQuery (Maybe ProjectsTenantsCompleteQueryType)
ptcqType = lens _ptcqType (\ s a -> s{_ptcqType = a})

-- | Required. Completion result count. The maximum allowed page size is 10.
ptcqPageSize :: Lens' ProjectsTenantsCompleteQuery (Maybe Int32)
ptcqPageSize
  = lens _ptcqPageSize (\ s a -> s{_ptcqPageSize = a})
      . mapping _Coerce

-- | JSONP
ptcqCallback :: Lens' ProjectsTenantsCompleteQuery (Maybe Text)
ptcqCallback
  = lens _ptcqCallback (\ s a -> s{_ptcqCallback = a})

instance GoogleRequest ProjectsTenantsCompleteQuery
         where
        type Rs ProjectsTenantsCompleteQuery =
             CompleteQueryResponse
        type Scopes ProjectsTenantsCompleteQuery =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsTenantsCompleteQuery'{..}
          = go _ptcqTenant (_ptcqLanguageCodes ^. _Default)
              _ptcqXgafv
              _ptcqUploadProtocol
              _ptcqAccessToken
              _ptcqUploadType
              _ptcqCompany
              _ptcqScope
              _ptcqQuery
              _ptcqType
              _ptcqPageSize
              _ptcqCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsTenantsCompleteQueryResource)
                      mempty
