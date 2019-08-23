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
-- Module      : Network.Google.Resource.Jobs.Projects.Complete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Completes the specified prefix with keyword suggestions. Intended for
-- use by a job search auto-complete search box.
--
-- /See:/ <https://cloud.google.com/talent-solution/job-search/docs/ Cloud Talent Solution API Reference> for @jobs.projects.complete@.
module Network.Google.Resource.Jobs.Projects.Complete
    (
    -- * REST Resource
      ProjectsCompleteResource

    -- * Creating a Request
    , projectsComplete
    , ProjectsComplete

    -- * Request Lenses
    , pcLanguageCodes
    , pcXgafv
    , pcLanguageCode
    , pcUploadProtocol
    , pcCompanyName
    , pcAccessToken
    , pcUploadType
    , pcName
    , pcScope
    , pcQuery
    , pcType
    , pcPageSize
    , pcCallback
    ) where

import           Network.Google.Jobs.Types
import           Network.Google.Prelude

-- | A resource alias for @jobs.projects.complete@ method which the
-- 'ProjectsComplete' request conforms to.
type ProjectsCompleteResource =
     "v3p1beta1" :>
       CaptureMode "name" "complete" Text :>
         QueryParams "languageCodes" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "languageCode" Text :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "companyName" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "scope" Text :>
                         QueryParam "query" Text :>
                           QueryParam "type" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] CompleteQueryResponse

-- | Completes the specified prefix with keyword suggestions. Intended for
-- use by a job search auto-complete search box.
--
-- /See:/ 'projectsComplete' smart constructor.
data ProjectsComplete =
  ProjectsComplete'
    { _pcLanguageCodes  :: !(Maybe [Text])
    , _pcXgafv          :: !(Maybe Xgafv)
    , _pcLanguageCode   :: !(Maybe Text)
    , _pcUploadProtocol :: !(Maybe Text)
    , _pcCompanyName    :: !(Maybe Text)
    , _pcAccessToken    :: !(Maybe Text)
    , _pcUploadType     :: !(Maybe Text)
    , _pcName           :: !Text
    , _pcScope          :: !(Maybe Text)
    , _pcQuery          :: !(Maybe Text)
    , _pcType           :: !(Maybe Text)
    , _pcPageSize       :: !(Maybe (Textual Int32))
    , _pcCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsComplete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcLanguageCodes'
--
-- * 'pcXgafv'
--
-- * 'pcLanguageCode'
--
-- * 'pcUploadProtocol'
--
-- * 'pcCompanyName'
--
-- * 'pcAccessToken'
--
-- * 'pcUploadType'
--
-- * 'pcName'
--
-- * 'pcScope'
--
-- * 'pcQuery'
--
-- * 'pcType'
--
-- * 'pcPageSize'
--
-- * 'pcCallback'
projectsComplete
    :: Text -- ^ 'pcName'
    -> ProjectsComplete
projectsComplete pPcName_ =
  ProjectsComplete'
    { _pcLanguageCodes = Nothing
    , _pcXgafv = Nothing
    , _pcLanguageCode = Nothing
    , _pcUploadProtocol = Nothing
    , _pcCompanyName = Nothing
    , _pcAccessToken = Nothing
    , _pcUploadType = Nothing
    , _pcName = pPcName_
    , _pcScope = Nothing
    , _pcQuery = Nothing
    , _pcType = Nothing
    , _pcPageSize = Nothing
    , _pcCallback = Nothing
    }


-- | Optional. The list of languages of the query. This is the BCP-47
-- language code, such as \"en-US\" or \"sr-Latn\". For more information,
-- see [Tags for Identifying
-- Languages](https:\/\/tools.ietf.org\/html\/bcp47). For
-- CompletionType.JOB_TITLE type, only open jobs with the same
-- language_codes are returned. For CompletionType.COMPANY_NAME type, only
-- companies having open jobs with the same language_codes are returned.
-- For CompletionType.COMBINED type, only open jobs with the same
-- language_codes or companies having open jobs with the same
-- language_codes are returned. The maximum number of allowed characters is
-- 255.
pcLanguageCodes :: Lens' ProjectsComplete [Text]
pcLanguageCodes
  = lens _pcLanguageCodes
      (\ s a -> s{_pcLanguageCodes = a})
      . _Default
      . _Coerce

-- | V1 error format.
pcXgafv :: Lens' ProjectsComplete (Maybe Xgafv)
pcXgafv = lens _pcXgafv (\ s a -> s{_pcXgafv = a})

-- | Deprecated. Use language_codes instead. Optional. The language of the
-- query. This is the BCP-47 language code, such as \"en-US\" or
-- \"sr-Latn\". For more information, see [Tags for Identifying
-- Languages](https:\/\/tools.ietf.org\/html\/bcp47). For
-- CompletionType.JOB_TITLE type, only open jobs with the same
-- language_code are returned. For CompletionType.COMPANY_NAME type, only
-- companies having open jobs with the same language_code are returned. For
-- CompletionType.COMBINED type, only open jobs with the same language_code
-- or companies having open jobs with the same language_code are returned.
-- The maximum number of allowed characters is 255.
pcLanguageCode :: Lens' ProjectsComplete (Maybe Text)
pcLanguageCode
  = lens _pcLanguageCode
      (\ s a -> s{_pcLanguageCode = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcUploadProtocol :: Lens' ProjectsComplete (Maybe Text)
pcUploadProtocol
  = lens _pcUploadProtocol
      (\ s a -> s{_pcUploadProtocol = a})

-- | Optional. If provided, restricts completion to specified company. The
-- format is \"projects\/{project_id}\/companies\/{company_id}\", for
-- example, \"projects\/api-test-project\/companies\/foo\".
pcCompanyName :: Lens' ProjectsComplete (Maybe Text)
pcCompanyName
  = lens _pcCompanyName
      (\ s a -> s{_pcCompanyName = a})

-- | OAuth access token.
pcAccessToken :: Lens' ProjectsComplete (Maybe Text)
pcAccessToken
  = lens _pcAccessToken
      (\ s a -> s{_pcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcUploadType :: Lens' ProjectsComplete (Maybe Text)
pcUploadType
  = lens _pcUploadType (\ s a -> s{_pcUploadType = a})

-- | Required. Resource name of project the completion is performed within.
-- The format is \"projects\/{project_id}\", for example,
-- \"projects\/api-test-project\".
pcName :: Lens' ProjectsComplete Text
pcName = lens _pcName (\ s a -> s{_pcName = a})

-- | Optional. The scope of the completion. The defaults is
-- CompletionScope.PUBLIC.
pcScope :: Lens' ProjectsComplete (Maybe Text)
pcScope = lens _pcScope (\ s a -> s{_pcScope = a})

-- | Required. The query used to generate suggestions. The maximum number of
-- allowed characters is 255.
pcQuery :: Lens' ProjectsComplete (Maybe Text)
pcQuery = lens _pcQuery (\ s a -> s{_pcQuery = a})

-- | Optional. The completion topic. The default is CompletionType.COMBINED.
pcType :: Lens' ProjectsComplete (Maybe Text)
pcType = lens _pcType (\ s a -> s{_pcType = a})

-- | Required. Completion result count. The maximum allowed page size is 10.
pcPageSize :: Lens' ProjectsComplete (Maybe Int32)
pcPageSize
  = lens _pcPageSize (\ s a -> s{_pcPageSize = a}) .
      mapping _Coerce

-- | JSONP
pcCallback :: Lens' ProjectsComplete (Maybe Text)
pcCallback
  = lens _pcCallback (\ s a -> s{_pcCallback = a})

instance GoogleRequest ProjectsComplete where
        type Rs ProjectsComplete = CompleteQueryResponse
        type Scopes ProjectsComplete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/jobs"]
        requestClient ProjectsComplete'{..}
          = go _pcName (_pcLanguageCodes ^. _Default) _pcXgafv
              _pcLanguageCode
              _pcUploadProtocol
              _pcCompanyName
              _pcAccessToken
              _pcUploadType
              _pcScope
              _pcQuery
              _pcType
              _pcPageSize
              _pcCallback
              (Just AltJSON)
              jobsService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsCompleteResource)
                      mempty
