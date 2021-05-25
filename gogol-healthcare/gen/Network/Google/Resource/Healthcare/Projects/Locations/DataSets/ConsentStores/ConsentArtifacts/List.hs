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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Consent artifacts in the specified consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consentArtifacts.list@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.ConsentArtifacts.List
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentArtifactsListResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentArtifactsList
    , ProjectsLocationsDataSetsConsentStoresConsentArtifactsList

    -- * Request Lenses
    , pldscscalParent
    , pldscscalXgafv
    , pldscscalUploadProtocol
    , pldscscalAccessToken
    , pldscscalUploadType
    , pldscscalFilter
    , pldscscalPageToken
    , pldscscalPageSize
    , pldscscalCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consentArtifacts.list@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentArtifactsList' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentArtifactsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "consentArtifacts" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListConsentArtifactsResponse

-- | Lists the Consent artifacts in the specified consent store.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentArtifactsList' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentArtifactsList =
  ProjectsLocationsDataSetsConsentStoresConsentArtifactsList'
    { _pldscscalParent :: !Text
    , _pldscscalXgafv :: !(Maybe Xgafv)
    , _pldscscalUploadProtocol :: !(Maybe Text)
    , _pldscscalAccessToken :: !(Maybe Text)
    , _pldscscalUploadType :: !(Maybe Text)
    , _pldscscalFilter :: !(Maybe Text)
    , _pldscscalPageToken :: !(Maybe Text)
    , _pldscscalPageSize :: !(Maybe (Textual Int32))
    , _pldscscalCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentArtifactsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscscalParent'
--
-- * 'pldscscalXgafv'
--
-- * 'pldscscalUploadProtocol'
--
-- * 'pldscscalAccessToken'
--
-- * 'pldscscalUploadType'
--
-- * 'pldscscalFilter'
--
-- * 'pldscscalPageToken'
--
-- * 'pldscscalPageSize'
--
-- * 'pldscscalCallback'
projectsLocationsDataSetsConsentStoresConsentArtifactsList
    :: Text -- ^ 'pldscscalParent'
    -> ProjectsLocationsDataSetsConsentStoresConsentArtifactsList
projectsLocationsDataSetsConsentStoresConsentArtifactsList pPldscscalParent_ =
  ProjectsLocationsDataSetsConsentStoresConsentArtifactsList'
    { _pldscscalParent = pPldscscalParent_
    , _pldscscalXgafv = Nothing
    , _pldscscalUploadProtocol = Nothing
    , _pldscscalAccessToken = Nothing
    , _pldscscalUploadType = Nothing
    , _pldscscalFilter = Nothing
    , _pldscscalPageToken = Nothing
    , _pldscscalPageSize = Nothing
    , _pldscscalCallback = Nothing
    }


-- | Required. Name of the consent store to retrieve consent artifacts from.
pldscscalParent :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsList Text
pldscscalParent
  = lens _pldscscalParent
      (\ s a -> s{_pldscscalParent = a})

-- | V1 error format.
pldscscalXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsList (Maybe Xgafv)
pldscscalXgafv
  = lens _pldscscalXgafv
      (\ s a -> s{_pldscscalXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscscalUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsList (Maybe Text)
pldscscalUploadProtocol
  = lens _pldscscalUploadProtocol
      (\ s a -> s{_pldscscalUploadProtocol = a})

-- | OAuth access token.
pldscscalAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsList (Maybe Text)
pldscscalAccessToken
  = lens _pldscscalAccessToken
      (\ s a -> s{_pldscscalAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscscalUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsList (Maybe Text)
pldscscalUploadType
  = lens _pldscscalUploadType
      (\ s a -> s{_pldscscalUploadType = a})

-- | Optional. Restricts the artifacts returned to those matching a filter.
-- The following syntax is available: * A string field value can be written
-- as text inside quotation marks, for example \`\"query text\"\`. The only
-- valid relational operation for text fields is equality (\`=\`), where
-- text is searched within the field, rather than having the field be equal
-- to the text. For example, \`\"Comment = great\"\` returns messages with
-- \`great\` in the comment field. * A number field value can be written as
-- an integer, a decimal, or an exponential. The valid relational operators
-- for number fields are the equality operator (\`=\`), along with the less
-- than\/greater than operators (\`\<\`, \`\<=\`, \`>\`, \`>=\`). Note that
-- there is no inequality (\`!=\`) operator. You can prepend the \`NOT\`
-- operator to an expression to negate it. * A date field value must be
-- written in \`yyyy-mm-dd\` form. Fields with date and time use the
-- RFC3339 time format. Leading zeros are required for one-digit months and
-- days. The valid relational operators for date fields are the equality
-- operator (\`=\`) , along with the less than\/greater than operators
-- (\`\<\`, \`\<=\`, \`>\`, \`>=\`). Note that there is no inequality
-- (\`!=\`) operator. You can prepend the \`NOT\` operator to an expression
-- to negate it. * Multiple field query expressions can be combined in one
-- query by adding \`AND\` or \`OR\` operators between the expressions. If
-- a boolean operator appears within a quoted string, it is not treated as
-- special, it\'s just another part of the character string to be matched.
-- You can prepend the \`NOT\` operator to an expression to negate it. The
-- fields available for filtering are: - user_id. For example,
-- \`filter=user_id=\\\"user123\\\"\`. - consent_content_version -
-- metadata. For example,
-- \`filter=Metadata(\\\"testkey\\\")=\\\"value\\\"\` or
-- \`filter=HasMetadata(\\\"testkey\\\")\`.
pldscscalFilter :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsList (Maybe Text)
pldscscalFilter
  = lens _pldscscalFilter
      (\ s a -> s{_pldscscalFilter = a})

-- | Optional. The next_page_token value returned from the previous List
-- request, if any.
pldscscalPageToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsList (Maybe Text)
pldscscalPageToken
  = lens _pldscscalPageToken
      (\ s a -> s{_pldscscalPageToken = a})

-- | Optional. Limit on the number of consent artifacts to return in a single
-- response. If not specified, 100 is used. May not be larger than 1000.
pldscscalPageSize :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsList (Maybe Int32)
pldscscalPageSize
  = lens _pldscscalPageSize
      (\ s a -> s{_pldscscalPageSize = a})
      . mapping _Coerce

-- | JSONP
pldscscalCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentArtifactsList (Maybe Text)
pldscscalCallback
  = lens _pldscscalCallback
      (\ s a -> s{_pldscscalCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentArtifactsList
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentArtifactsList
             = ListConsentArtifactsResponse
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentArtifactsList
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentArtifactsList'{..}
          = go _pldscscalParent _pldscscalXgafv
              _pldscscalUploadProtocol
              _pldscscalAccessToken
              _pldscscalUploadType
              _pldscscalFilter
              _pldscscalPageToken
              _pldscscalPageSize
              _pldscscalCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentArtifactsListResource)
                      mempty
