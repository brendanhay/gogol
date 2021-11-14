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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.ListRevisions
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the revisions of the specified Consent in reverse chronological
-- order.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.listRevisions@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.ListRevisions
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentsListRevisionsResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentsListRevisions
    , ProjectsLocationsDataSetsConsentStoresConsentsListRevisions

    -- * Request Lenses
    , pldscsclrXgafv
    , pldscsclrUploadProtocol
    , pldscsclrAccessToken
    , pldscsclrUploadType
    , pldscsclrName
    , pldscsclrFilter
    , pldscsclrPageToken
    , pldscsclrPageSize
    , pldscsclrCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.listRevisions@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentsListRevisions' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentsListRevisionsResource
     =
     "v1" :>
       CaptureMode "name" "listRevisions" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "filter" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListConsentRevisionsResponse

-- | Lists the revisions of the specified Consent in reverse chronological
-- order.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentsListRevisions' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentsListRevisions =
  ProjectsLocationsDataSetsConsentStoresConsentsListRevisions'
    { _pldscsclrXgafv :: !(Maybe Xgafv)
    , _pldscsclrUploadProtocol :: !(Maybe Text)
    , _pldscsclrAccessToken :: !(Maybe Text)
    , _pldscsclrUploadType :: !(Maybe Text)
    , _pldscsclrName :: !Text
    , _pldscsclrFilter :: !(Maybe Text)
    , _pldscsclrPageToken :: !(Maybe Text)
    , _pldscsclrPageSize :: !(Maybe (Textual Int32))
    , _pldscsclrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentsListRevisions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsclrXgafv'
--
-- * 'pldscsclrUploadProtocol'
--
-- * 'pldscsclrAccessToken'
--
-- * 'pldscsclrUploadType'
--
-- * 'pldscsclrName'
--
-- * 'pldscsclrFilter'
--
-- * 'pldscsclrPageToken'
--
-- * 'pldscsclrPageSize'
--
-- * 'pldscsclrCallback'
projectsLocationsDataSetsConsentStoresConsentsListRevisions
    :: Text -- ^ 'pldscsclrName'
    -> ProjectsLocationsDataSetsConsentStoresConsentsListRevisions
projectsLocationsDataSetsConsentStoresConsentsListRevisions pPldscsclrName_ =
  ProjectsLocationsDataSetsConsentStoresConsentsListRevisions'
    { _pldscsclrXgafv = Nothing
    , _pldscsclrUploadProtocol = Nothing
    , _pldscsclrAccessToken = Nothing
    , _pldscsclrUploadType = Nothing
    , _pldscsclrName = pPldscsclrName_
    , _pldscsclrFilter = Nothing
    , _pldscsclrPageToken = Nothing
    , _pldscsclrPageSize = Nothing
    , _pldscsclrCallback = Nothing
    }


-- | V1 error format.
pldscsclrXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsListRevisions (Maybe Xgafv)
pldscsclrXgafv
  = lens _pldscsclrXgafv
      (\ s a -> s{_pldscsclrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsclrUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsListRevisions (Maybe Text)
pldscsclrUploadProtocol
  = lens _pldscsclrUploadProtocol
      (\ s a -> s{_pldscsclrUploadProtocol = a})

-- | OAuth access token.
pldscsclrAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsListRevisions (Maybe Text)
pldscsclrAccessToken
  = lens _pldscsclrAccessToken
      (\ s a -> s{_pldscsclrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsclrUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsListRevisions (Maybe Text)
pldscsclrUploadType
  = lens _pldscsclrUploadType
      (\ s a -> s{_pldscsclrUploadType = a})

-- | Required. The resource name of the Consent to retrieve revisions for.
pldscsclrName :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsListRevisions Text
pldscsclrName
  = lens _pldscsclrName
      (\ s a -> s{_pldscsclrName = a})

-- | Optional. Restricts the revisions returned to those matching a filter.
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
-- You can prepend the \`NOT\` operator to an expression to negate it.
-- Fields available for filtering are: - user_id. For example,
-- \`filter=\'user_id=\"user123\"\'\`. - consent_artifact - state -
-- revision_create_time - metadata. For example,
-- \`filter=Metadata(\\\"testkey\\\")=\\\"value\\\"\` or
-- \`filter=HasMetadata(\\\"testkey\\\")\`.
pldscsclrFilter :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsListRevisions (Maybe Text)
pldscsclrFilter
  = lens _pldscsclrFilter
      (\ s a -> s{_pldscsclrFilter = a})

-- | Optional. Token to retrieve the next page of results or empty if there
-- are no more results in the list.
pldscsclrPageToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsListRevisions (Maybe Text)
pldscsclrPageToken
  = lens _pldscsclrPageToken
      (\ s a -> s{_pldscsclrPageToken = a})

-- | Optional. Limit on the number of revisions to return in a single
-- response. If not specified, 100 is used. May not be larger than 1000.
pldscsclrPageSize :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsListRevisions (Maybe Int32)
pldscsclrPageSize
  = lens _pldscsclrPageSize
      (\ s a -> s{_pldscsclrPageSize = a})
      . mapping _Coerce

-- | JSONP
pldscsclrCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsListRevisions (Maybe Text)
pldscsclrCallback
  = lens _pldscsclrCallback
      (\ s a -> s{_pldscsclrCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentsListRevisions
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentsListRevisions
             = ListConsentRevisionsResponse
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentsListRevisions
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentsListRevisions'{..}
          = go _pldscsclrName _pldscsclrXgafv
              _pldscsclrUploadProtocol
              _pldscsclrAccessToken
              _pldscsclrUploadType
              _pldscsclrFilter
              _pldscsclrPageToken
              _pldscsclrPageSize
              _pldscsclrCallback
              (Just AltJSON)
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentsListRevisionsResource)
                      mempty
